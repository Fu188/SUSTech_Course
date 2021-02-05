import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
public class Concurrency
{
    public static HttpURLConnection getConnection(String url, Map<String,String> headers)throws IOException
    {
        URL httpUrl=new URL(url);
        HttpURLConnection connection=(HttpURLConnection)httpUrl.openConnection();
        connection.setConnectTimeout(15000);
        connection.setReadTimeout(60000);
        if(headers!=null)
        {
            for(String key:headers.keySet())
            {
                connection.addRequestProperty(key,headers.get(key));
            }
        }
        return connection;
    }
    public static String handleResult(HttpURLConnection connection)throws IOException
    {
        InputStream is=null;
        InputStreamReader isr=null;
        BufferedReader br=null;
        try
        {
            int code=connection.getResponseCode();
            if(code==200)
            {
                is=connection.getInputStream();
                isr=new InputStreamReader(is,"UTF-8");
                br=new BufferedReader(isr);
                StringBuffer sbf=new StringBuffer();
                String temp;
                while((temp=br.readLine())!=null)
                {
                    sbf.append(temp+"\n");
                }
                return sbf.toString();
            }
            else
            {
                throw new RuntimeException("Response error. The response code is not 200.");
            }
        }
        finally
        {
            if(is!=null)
            {
                is.close();
            }
            if(isr!=null)
            {
                isr.close();
            }
            if(br!=null)
            {
                br.close();
            }
        }
    }
    public static String doGet(String url,Map<String,String>headers)
    {
        HttpURLConnection connection=null;
        try
        {
            connection=getConnection(url,headers);
            connection.setRequestMethod("GET");
            connection.connect();
            return handleResult(connection);
        }
        catch(IOException e)
        {
            return e.getMessage();
        }
        finally
        {
            connection.disconnect();
        }
    }
    public static String doPost(String url,Map<String,String>headers,String params)throws IOException
    {
        HttpURLConnection connection=null;
        OutputStream os=null;
        try
        {
            connection=getConnection(url,headers);
            connection.setRequestMethod("POST");
            connection.setDoOutput(true);
            connection.setDoInput(true);
            os=connection.getOutputStream();
            os.write(params.getBytes());
            return handleResult(connection);
        }
        catch(IOException e)
        {
            return e.getMessage();
        }
        finally
        {
            connection.disconnect();
            os.close();
        }
    }
    public static void main(String[]args)
    {
        long[]start=new long[1000000];
        AtomicLong[][]end=new AtomicLong[8][1000000];
        boolean[][]confirm=new boolean[8][1000000];
        for(int i=1;i<7;++i)
        {
            final int ii=i;
            int upper=(int)Math.pow(10,i);
            start[i]=System.currentTimeMillis();
            for (int j=0;j<upper;++j)
            {
                end[i][j]=new AtomicLong();
                int finalJ=j;
                new Thread(()->
                {
                    doGet("http://127.0.0.1:8888/html/UserBuy.html?stationNo=D9999&dptStation=1&arrStation=2&dptDate=2020-05-20&seat=%E4%B8%80%E7%AD%89%E5%BA%A7&peopleName=%E8%94%A1%E4%BA%8E%E9%A3%9E&peopleId=320124199908303258&peopleTel=18761825982", null);
                    end[ii][finalJ].set(Math.max(end[ii][finalJ].get(),System.currentTimeMillis()));
                    confirm[ii][finalJ]=true;
                }).start();
            }
            while(true)
            {
                try
                {
                    Thread.sleep(5000);
                }
                catch(InterruptedException e)
                {
                    e.printStackTrace();
                }
                boolean finished=true;
                for(int j=0;j<upper;++j)
                {
                    if(!confirm[i][j])
                    {
                        finished=false;
                        break;
                    }
                }
                if(finished)
                {
                    break;
                }
            }
            Arrays.sort(end[i],0,upper-1, Comparator.comparingLong(AtomicLong::longValue));
            System.out.println("When there are "+upper+" persons, it takes "+(end[i][(int)(upper*0.9)].longValue()-start[i])/1000.0+"s, from "+start[i]/1000.0+" to "+end[i][(int)(upper*0.9)].longValue()/1000.0);
        }
    }
}