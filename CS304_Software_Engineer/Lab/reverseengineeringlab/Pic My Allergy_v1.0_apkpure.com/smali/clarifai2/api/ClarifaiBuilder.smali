.class public final Lclarifai2/api/ClarifaiBuilder;
.super Ljava/lang/Object;
.source "ClarifaiBuilder.java"


# instance fields
.field final apiKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final appID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final appSecret:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field baseURL:Lokhttp3/HttpUrl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field client:Lokhttp3/OkHttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lclarifai2/api/ClarifaiBuilder;->client:Lokhttp3/OkHttpClient;

    const-string v0, "https://api.clarifai.com"

    .line 30
    invoke-static {v0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lclarifai2/api/ClarifaiBuilder;->baseURL:Lokhttp3/HttpUrl;

    .line 39
    iput-object p1, p0, Lclarifai2/api/ClarifaiBuilder;->apiKey:Ljava/lang/String;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lclarifai2/api/ClarifaiBuilder;->appID:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lclarifai2/api/ClarifaiBuilder;->appSecret:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lclarifai2/api/ClarifaiBuilder;->client:Lokhttp3/OkHttpClient;

    const-string v0, "https://api.clarifai.com"

    .line 30
    invoke-static {v0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lclarifai2/api/ClarifaiBuilder;->baseURL:Lokhttp3/HttpUrl;

    .line 33
    iput-object p1, p0, Lclarifai2/api/ClarifaiBuilder;->appID:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lclarifai2/api/ClarifaiBuilder;->appSecret:Ljava/lang/String;

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lclarifai2/api/ClarifaiBuilder;->apiKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public baseURL(Ljava/lang/String;)Lclarifai2/api/ClarifaiBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 52
    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/api/ClarifaiBuilder;->baseURL(Lokhttp3/HttpUrl;)Lclarifai2/api/ClarifaiBuilder;

    move-result-object p0

    return-object p0
.end method

.method public baseURL(Ljava/net/URL;)Lclarifai2/api/ClarifaiBuilder;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 57
    invoke-static {p1}, Lokhttp3/HttpUrl;->get(Ljava/net/URL;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/api/ClarifaiBuilder;->baseURL(Lokhttp3/HttpUrl;)Lclarifai2/api/ClarifaiBuilder;

    move-result-object p0

    return-object p0
.end method

.method public baseURL(Lokhttp3/HttpUrl;)Lclarifai2/api/ClarifaiBuilder;
    .locals 4
    .param p1    # Lokhttp3/HttpUrl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 62
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->pathSegments()Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    if-nez v2, :cond_1

    .line 66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot specify a baseURL for the Clarifai client that has path segments (it should be just a base host URL). You specified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_1
    iput-object p1, p0, Lclarifai2/api/ClarifaiBuilder;->baseURL:Lokhttp3/HttpUrl;

    return-object p0
.end method

.method public build()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lclarifai2/api/ClarifaiClient;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    .line 96
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 97
    new-instance v1, Lclarifai2/api/ClarifaiBuilder$1;

    invoke-direct {v1, p0}, Lclarifai2/api/ClarifaiBuilder$1;-><init>(Lclarifai2/api/ClarifaiBuilder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 102
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-object p0
.end method

.method public buildSync()Lclarifai2/api/ClarifaiClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 85
    new-instance v0, Lclarifai2/api/ClarifaiClientImpl;

    invoke-direct {v0, p0}, Lclarifai2/api/ClarifaiClientImpl;-><init>(Lclarifai2/api/ClarifaiBuilder;)V

    return-object v0
.end method

.method public client(Lokhttp3/OkHttpClient;)Lclarifai2/api/ClarifaiBuilder;
    .locals 0
    .param p1    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    iput-object p1, p0, Lclarifai2/api/ClarifaiBuilder;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method
