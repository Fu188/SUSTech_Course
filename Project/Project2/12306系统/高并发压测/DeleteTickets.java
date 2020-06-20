import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
public class DeleteTickets
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
    public static void delete_tickets(int id)
    {
        doGet("http://127.0.0.1:8888/html/AdminOrderManage.html?delete_ticket_id="+id,null);
    }
    public static void main(String[]args)
    {
        for(int i=31201;i<=31700;++i)
        {
            delete_tickets(i);
        }
    }
}