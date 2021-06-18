.class public Lclarifai2/api/request/ClarifaiRequest$Impl;
.super Lclarifai2/api/request/ClarifaiRequest$Adapter;
.source "ClarifaiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/api/request/ClarifaiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lclarifai2/api/request/ClarifaiRequest$Adapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final request:Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lclarifai2/api/BaseClarifaiClient;Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;)V
    .locals 0
    .param p1    # Lclarifai2/api/BaseClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/api/BaseClarifaiClient;",
            "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
            "TT;>;)V"
        }
    .end annotation

    .line 247
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Adapter;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    .line 248
    iput-object p2, p0, Lclarifai2/api/request/ClarifaiRequest$Impl;->request:Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;

    return-void
.end method


# virtual methods
.method public executeAsync(Lclarifai2/api/request/ClarifaiRequest$Callback;)V
    .locals 2
    .param p1    # Lclarifai2/api/request/ClarifaiRequest$Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/api/request/ClarifaiRequest$Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 303
    :try_start_0
    iget-object v0, p0, Lclarifai2/api/request/ClarifaiRequest$Impl;->client:Lclarifai2/api/BaseClarifaiClient;

    iget-object v0, v0, Lclarifai2/api/BaseClarifaiClient;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lclarifai2/api/request/ClarifaiRequest$Impl$1;

    invoke-direct {v1, p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Impl$1;-><init>(Lclarifai2/api/request/ClarifaiRequest$Impl;Lclarifai2/api/request/ClarifaiRequest$Callback;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 321
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public executeSync()Lclarifai2/api/ClarifaiResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/api/ClarifaiResponse<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 256
    :try_start_0
    iget-object v0, p0, Lclarifai2/api/request/ClarifaiRequest$Impl;->client:Lclarifai2/api/BaseClarifaiClient;

    iget-object v0, v0, Lclarifai2/api/BaseClarifaiClient;->httpClient:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lclarifai2/api/request/ClarifaiRequest$Impl;->request:Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;

    invoke-interface {v1}, Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;->httpRequest()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 259
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 265
    :try_start_2
    iget-object v2, p0, Lclarifai2/api/request/ClarifaiRequest$Impl;->client:Lclarifai2/api/BaseClarifaiClient;

    iget-object v2, v2, Lclarifai2/api/BaseClarifaiClient;->gson:Lcom/google/gson/Gson;

    const-class v3, Lcom/google/gson/JsonElement;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;
    :try_end_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v2, :cond_0

    .line 272
    :try_start_3
    new-instance p0, Lclarifai2/api/ClarifaiResponse$NetworkError;

    invoke-static {}, Lclarifai2/dto/ClarifaiStatus;->unknown()Lclarifai2/dto/ClarifaiStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lclarifai2/api/ClarifaiResponse$NetworkError;-><init>(Lclarifai2/dto/ClarifaiStatus;)V

    return-object p0

    .line 274
    :cond_0
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 275
    iget-object v3, p0, Lclarifai2/api/request/ClarifaiRequest$Impl;->client:Lclarifai2/api/BaseClarifaiClient;

    iget-object v3, v3, Lclarifai2/api/BaseClarifaiClient;->gson:Lcom/google/gson/Gson;

    const-string v4, "status"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v4

    const-class v5, Lclarifai2/dto/ClarifaiStatus;

    invoke-static {v3, v4, v5}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lclarifai2/dto/ClarifaiStatus;

    .line 277
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v4, 0xc8

    if-gt v4, v0, :cond_1

    const/16 v4, 0x12c

    if-ge v0, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 280
    invoke-static {}, Lclarifai2/dto/ClarifaiStatus;->success()Lclarifai2/dto/ClarifaiStatus;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 281
    new-instance v4, Lclarifai2/api/ClarifaiResponse$Successful;

    iget-object v5, p0, Lclarifai2/api/request/ClarifaiRequest$Impl;->request:Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;

    .line 285
    invoke-interface {v5}, Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;->unmarshaler()Lclarifai2/internal/JSONUnmarshaler;

    move-result-object v5

    iget-object p0, p0, Lclarifai2/api/request/ClarifaiRequest$Impl;->client:Lclarifai2/api/BaseClarifaiClient;

    iget-object p0, p0, Lclarifai2/api/BaseClarifaiClient;->gson:Lcom/google/gson/Gson;

    invoke-interface {v5, p0, v2}, Lclarifai2/internal/JSONUnmarshaler;->fromJSON(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v4, v3, v0, v1, p0}, Lclarifai2/api/ClarifaiResponse$Successful;-><init>(Lclarifai2/dto/ClarifaiStatus;ILjava/lang/String;Ljava/lang/Object;)V

    return-object v4

    :cond_2
    if-eqz v4, :cond_3

    .line 287
    invoke-static {}, Lclarifai2/dto/ClarifaiStatus;->mixedSuccess()Lclarifai2/dto/ClarifaiStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 288
    new-instance v4, Lclarifai2/api/ClarifaiResponse$MixedSuccess;

    iget-object v5, p0, Lclarifai2/api/request/ClarifaiRequest$Impl;->request:Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;

    .line 292
    invoke-interface {v5}, Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;->unmarshaler()Lclarifai2/internal/JSONUnmarshaler;

    move-result-object v5

    iget-object p0, p0, Lclarifai2/api/request/ClarifaiRequest$Impl;->client:Lclarifai2/api/BaseClarifaiClient;

    iget-object p0, p0, Lclarifai2/api/BaseClarifaiClient;->gson:Lcom/google/gson/Gson;

    invoke-interface {v5, p0, v2}, Lclarifai2/internal/JSONUnmarshaler;->fromJSON(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v4, v3, v0, v1, p0}, Lclarifai2/api/ClarifaiResponse$MixedSuccess;-><init>(Lclarifai2/dto/ClarifaiStatus;ILjava/lang/String;Ljava/lang/Object;)V

    return-object v4

    .line 295
    :cond_3
    new-instance p0, Lclarifai2/api/ClarifaiResponse$Failure;

    invoke-direct {p0, v3, v0, v1}, Lclarifai2/api/ClarifaiResponse$Failure;-><init>(Lclarifai2/dto/ClarifaiStatus;ILjava/lang/String;)V

    return-object p0

    .line 267
    :catch_0
    new-instance p0, Lclarifai2/api/ClarifaiResponse$NetworkError;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Server provided malformed JSON response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-static {v0}, Lclarifai2/dto/ClarifaiStatus;->networkError(Ljava/io/IOException;)Lclarifai2/dto/ClarifaiStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lclarifai2/api/ClarifaiResponse$NetworkError;-><init>(Lclarifai2/dto/ClarifaiStatus;)V

    return-object p0

    :catch_1
    move-exception p0

    .line 261
    new-instance v0, Lclarifai2/exception/ClarifaiException;

    invoke-direct {v0, p0}, Lclarifai2/exception/ClarifaiException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p0

    .line 297
    new-instance v0, Lclarifai2/api/ClarifaiResponse$NetworkError;

    invoke-static {p0}, Lclarifai2/dto/ClarifaiStatus;->networkError(Ljava/io/IOException;)Lclarifai2/dto/ClarifaiStatus;

    move-result-object p0

    invoke-direct {v0, p0}, Lclarifai2/api/ClarifaiResponse$NetworkError;-><init>(Lclarifai2/dto/ClarifaiStatus;)V

    return-object v0
.end method
