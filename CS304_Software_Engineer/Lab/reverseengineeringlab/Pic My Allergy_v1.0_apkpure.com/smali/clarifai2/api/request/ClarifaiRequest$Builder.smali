.class public abstract Lclarifai2/api/request/ClarifaiRequest$Builder;
.super Lclarifai2/api/request/ClarifaiRequest$Adapter;
.source "ClarifaiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/api/request/ClarifaiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
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


# direct methods
.method protected constructor <init>(Lclarifai2/api/BaseClarifaiClient;)V
    .locals 0
    .param p1    # Lclarifai2/api/BaseClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 188
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Adapter;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-void
.end method

.method private builder(Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 222
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;->toHTTPUrl(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method private toHTTPUrl(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 229
    :cond_0
    iget-object p0, p0, Lclarifai2/api/request/ClarifaiRequest$Builder;->client:Lclarifai2/api/BaseClarifaiClient;

    iget-object p0, p0, Lclarifai2/api/BaseClarifaiClient;->baseURL:Lokhttp3/HttpUrl;

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method private toRequestBody(Lcom/google/gson/JsonElement;)Lokhttp3/RequestBody;
    .locals 1
    .param p1    # Lcom/google/gson/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 233
    sget-object v0, Lclarifai2/internal/InternalUtil;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    iget-object p0, p0, Lclarifai2/api/request/ClarifaiRequest$Builder;->client:Lclarifai2/api/BaseClarifaiClient;

    iget-object p0, p0, Lclarifai2/api/BaseClarifaiClient;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected build()Lclarifai2/api/request/ClarifaiRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/api/request/ClarifaiRequest<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 200
    new-instance v0, Lclarifai2/api/request/ClarifaiRequest$Impl;

    iget-object v1, p0, Lclarifai2/api/request/ClarifaiRequest$Builder;->client:Lclarifai2/api/BaseClarifaiClient;

    invoke-virtual {p0}, Lclarifai2/api/request/ClarifaiRequest$Builder;->request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lclarifai2/api/request/ClarifaiRequest$Impl;-><init>(Lclarifai2/api/BaseClarifaiClient;Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;)V

    return-object v0
.end method

.method protected final deleteRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 210
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;->builder(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-direct {p0, p2}, Lclarifai2/api/request/ClarifaiRequest$Builder;->toRequestBody(Lcom/google/gson/JsonElement;)Lokhttp3/RequestBody;

    move-result-object p0

    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public final executeAsync(Lclarifai2/api/request/ClarifaiRequest$Callback;)V
    .locals 0
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

    .line 196
    invoke-virtual {p0}, Lclarifai2/api/request/ClarifaiRequest$Builder;->build()Lclarifai2/api/request/ClarifaiRequest;

    move-result-object p0

    invoke-interface {p0, p1}, Lclarifai2/api/request/ClarifaiRequest;->executeAsync(Lclarifai2/api/request/ClarifaiRequest$Callback;)V

    return-void
.end method

.method public final executeSync()Lclarifai2/api/ClarifaiResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/api/ClarifaiResponse<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 192
    invoke-virtual {p0}, Lclarifai2/api/request/ClarifaiRequest$Builder;->build()Lclarifai2/api/request/ClarifaiRequest;

    move-result-object p0

    invoke-interface {p0}, Lclarifai2/api/request/ClarifaiRequest;->executeSync()Lclarifai2/api/ClarifaiResponse;

    move-result-object p0

    return-object p0
.end method

.method protected final getRequest(Ljava/lang/String;)Lokhttp3/Request;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 206
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;->builder(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method protected final patchRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 218
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;->builder(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-direct {p0, p2}, Lclarifai2/api/request/ClarifaiRequest$Builder;->toRequestBody(Lcom/google/gson/JsonElement;)Lokhttp3/RequestBody;

    move-result-object p0

    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->patch(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method protected final postRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 214
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;->builder(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-direct {p0, p2}, Lclarifai2/api/request/ClarifaiRequest$Builder;->toRequestBody(Lcom/google/gson/JsonElement;)Lokhttp3/RequestBody;

    move-result-object p0

    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method protected abstract request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
