.class Lclarifai2/api/BaseClarifaiClient$2;
.super Ljava/lang/Object;
.source "BaseClarifaiClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/BaseClarifaiClient;->refresh()Lclarifai2/api/ClarifaiToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lclarifai2/api/ClarifaiToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/BaseClarifaiClient;


# direct methods
.method constructor <init>(Lclarifai2/api/BaseClarifaiClient;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lclarifai2/api/BaseClarifaiClient$2;->this$0:Lclarifai2/api/BaseClarifaiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lclarifai2/api/ClarifaiToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lclarifai2/api/BaseClarifaiClient$2;->this$0:Lclarifai2/api/BaseClarifaiClient;

    invoke-static {v0}, Lclarifai2/api/BaseClarifaiClient;->access$400(Lclarifai2/api/BaseClarifaiClient;)Lokhttp3/OkHttpClient;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v2, p0, Lclarifai2/api/BaseClarifaiClient$2;->this$0:Lclarifai2/api/BaseClarifaiClient;

    iget-object v2, v2, Lclarifai2/api/BaseClarifaiClient;->baseURL:Lokhttp3/HttpUrl;

    .line 148
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    const-string v3, "v2/token"

    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Authorization"

    iget-object v3, p0, Lclarifai2/api/BaseClarifaiClient$2;->this$0:Lclarifai2/api/BaseClarifaiClient;

    .line 149
    invoke-static {v3}, Lclarifai2/api/BaseClarifaiClient;->access$200(Lclarifai2/api/BaseClarifaiClient;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lclarifai2/api/BaseClarifaiClient$2;->this$0:Lclarifai2/api/BaseClarifaiClient;

    invoke-static {v4}, Lclarifai2/api/BaseClarifaiClient;->access$300(Lclarifai2/api/BaseClarifaiClient;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "X-Clarifai-Client"

    const-string v3, "java:2.2.9"

    .line 150
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    sget-object v2, Lclarifai2/internal/InternalUtil;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    const-string v3, "\"grant_type\":\"client_credentials\""

    .line 151
    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object p0, p0, Lclarifai2/api/BaseClarifaiClient$2;->this$0:Lclarifai2/api/BaseClarifaiClient;

    iget-object p0, p0, Lclarifai2/api/BaseClarifaiClient;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonObject;

    .line 156
    new-instance v0, Lclarifai2/api/ClarifaiToken;

    const-string v1, "access_token"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expires_in"

    .line 157
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    int-to-long v2, p0

    invoke-direct {v0, v1, v2, v3}, Lclarifai2/api/ClarifaiToken;-><init>(Ljava/lang/String;J)V

    return-object v0

    .line 159
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result p0

    const/16 v0, 0x191

    if-ne p0, v0, :cond_1

    .line 160
    new-instance p0, Lclarifai2/exception/ClarifaiException;

    const-string v0, "Clarifai app ID and/or app secret are incorrect"

    invoke-direct {p0, v0}, Lclarifai2/exception/ClarifaiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lclarifai2/api/BaseClarifaiClient$2;->call()Lclarifai2/api/ClarifaiToken;

    move-result-object p0

    return-object p0
.end method
