.class public abstract Lclarifai2/api/BaseClarifaiClient;
.super Ljava/lang/Object;
.source "BaseClarifaiClient.java"

# interfaces
.implements Lclarifai2/api/ClarifaiClient;


# instance fields
.field private final apiKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final appID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final appSecret:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final baseURL:Lokhttp3/HttpUrl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private closed:Z

.field private currentClarifaiToken:Lclarifai2/api/ClarifaiToken;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final gson:Lcom/google/gson/Gson;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final httpClient:Lokhttp3/OkHttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tokenRefreshHTTPClient:Lokhttp3/OkHttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lclarifai2/api/ClarifaiBuilder;)V
    .locals 3
    .param p1    # Lclarifai2/api/ClarifaiBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lclarifai2/api/BaseClarifaiClient;->currentClarifaiToken:Lclarifai2/api/ClarifaiToken;

    const/4 v1, 0x0

    .line 57
    iput-boolean v1, p0, Lclarifai2/api/BaseClarifaiClient;->closed:Z

    .line 60
    iget-object v1, p1, Lclarifai2/api/ClarifaiBuilder;->apiKey:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p1, Lclarifai2/api/ClarifaiBuilder;->appID:Ljava/lang/String;

    const-string v2, "appID cannot be null if apiKey is null"

    invoke-static {v1, v2}, Lclarifai2/api/BaseClarifaiClient;->notNullOrThrow(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lclarifai2/api/BaseClarifaiClient;->appID:Ljava/lang/String;

    .line 62
    iget-object v1, p1, Lclarifai2/api/ClarifaiBuilder;->appSecret:Ljava/lang/String;

    const-string v2, "appSecret cannot be null if apiKey is null"

    invoke-static {v1, v2}, Lclarifai2/api/BaseClarifaiClient;->notNullOrThrow(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lclarifai2/api/BaseClarifaiClient;->appSecret:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lclarifai2/api/BaseClarifaiClient;->apiKey:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, p1, Lclarifai2/api/ClarifaiBuilder;->apiKey:Ljava/lang/String;

    iput-object v1, p0, Lclarifai2/api/BaseClarifaiClient;->apiKey:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lclarifai2/api/BaseClarifaiClient;->appID:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lclarifai2/api/BaseClarifaiClient;->appSecret:Ljava/lang/String;

    .line 70
    :goto_0
    invoke-direct {p0}, Lclarifai2/api/BaseClarifaiClient;->vendGson()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lclarifai2/api/BaseClarifaiClient;->gson:Lcom/google/gson/Gson;

    .line 72
    iget-object v0, p1, Lclarifai2/api/ClarifaiBuilder;->baseURL:Lokhttp3/HttpUrl;

    iput-object v0, p0, Lclarifai2/api/BaseClarifaiClient;->baseURL:Lokhttp3/HttpUrl;

    .line 74
    iget-object p1, p1, Lclarifai2/api/ClarifaiBuilder;->client:Lokhttp3/OkHttpClient;

    .line 76
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lclarifai2/api/BaseClarifaiClient$1;

    invoke-direct {v1, p0}, Lclarifai2/api/BaseClarifaiClient$1;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lclarifai2/api/BaseClarifaiClient;->httpClient:Lokhttp3/OkHttpClient;

    .line 96
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lclarifai2/api/BaseClarifaiClient;->tokenRefreshHTTPClient:Lokhttp3/OkHttpClient;

    .line 98
    iget-object p1, p0, Lclarifai2/api/BaseClarifaiClient;->apiKey:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 99
    invoke-direct {p0}, Lclarifai2/api/BaseClarifaiClient;->refreshIfNeeded()Lclarifai2/api/ClarifaiToken;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/BaseClarifaiClient;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lclarifai2/api/BaseClarifaiClient;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lclarifai2/api/BaseClarifaiClient;)Lclarifai2/api/ClarifaiToken;
    .locals 0

    .line 31
    invoke-direct {p0}, Lclarifai2/api/BaseClarifaiClient;->refreshIfNeeded()Lclarifai2/api/ClarifaiToken;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lclarifai2/api/BaseClarifaiClient;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lclarifai2/api/BaseClarifaiClient;->appID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lclarifai2/api/BaseClarifaiClient;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lclarifai2/api/BaseClarifaiClient;->appSecret:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lclarifai2/api/BaseClarifaiClient;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 31
    iget-object p0, p0, Lclarifai2/api/BaseClarifaiClient;->tokenRefreshHTTPClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method private static closeOkHttpClient(Lokhttp3/OkHttpClient;)V
    .locals 1
    .param p0    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 104
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 105
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->evictAll()V

    .line 106
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Cache;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static notNullOrThrow(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p0, :cond_0

    .line 178
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-object p0
.end method

.method private refresh()Lclarifai2/api/ClarifaiToken;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 144
    :try_start_0
    iget-object v0, p0, Lclarifai2/api/BaseClarifaiClient;->tokenRefreshHTTPClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lclarifai2/api/BaseClarifaiClient$2;

    invoke-direct {v1, p0}, Lclarifai2/api/BaseClarifaiClient$2;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lclarifai2/api/ClarifaiToken;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 168
    instance-of v0, p0, Lclarifai2/exception/ClarifaiException;

    if-eqz v0, :cond_0

    .line 169
    check-cast p0, Lclarifai2/exception/ClarifaiException;

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private refreshIfNeeded()Lclarifai2/api/ClarifaiToken;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-boolean v0, p0, Lclarifai2/api/BaseClarifaiClient;->closed:Z

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Lclarifai2/exception/ClarifaiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lclarifai2/api/ClarifaiClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has already been closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lclarifai2/exception/ClarifaiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lclarifai2/api/BaseClarifaiClient;->hasValidToken()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-direct {p0}, Lclarifai2/api/BaseClarifaiClient;->refresh()Lclarifai2/api/ClarifaiToken;

    move-result-object v0

    iput-object v0, p0, Lclarifai2/api/BaseClarifaiClient;->currentClarifaiToken:Lclarifai2/api/ClarifaiToken;

    .line 137
    :cond_1
    iget-object v0, p0, Lclarifai2/api/BaseClarifaiClient;->currentClarifaiToken:Lclarifai2/api/ClarifaiToken;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 138
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private vendGson()Lcom/google/gson/Gson;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 185
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Lclarifai2/api/ClarifaiClient;

    new-instance v2, Lclarifai2/api/BaseClarifaiClient$3;

    invoke-direct {v2, p0}, Lclarifai2/api/BaseClarifaiClient$3;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p0

    new-instance v0, Lclarifai2/internal/AutoValueTypeAdapterFactory;

    invoke-direct {v0}, Lclarifai2/internal/AutoValueTypeAdapterFactory;-><init>()V

    .line 193
    invoke-virtual {p0, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object p0

    .line 194
    invoke-virtual {p0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lclarifai2/api/BaseClarifaiClient;->closed:Z

    .line 199
    iget-object v0, p0, Lclarifai2/api/BaseClarifaiClient;->tokenRefreshHTTPClient:Lokhttp3/OkHttpClient;

    invoke-static {v0}, Lclarifai2/api/BaseClarifaiClient;->closeOkHttpClient(Lokhttp3/OkHttpClient;)V

    .line 200
    iget-object p0, p0, Lclarifai2/api/BaseClarifaiClient;->httpClient:Lokhttp3/OkHttpClient;

    invoke-static {p0}, Lclarifai2/api/BaseClarifaiClient;->closeOkHttpClient(Lokhttp3/OkHttpClient;)V

    return-void
.end method

.method public getToken()Lclarifai2/api/ClarifaiToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 120
    invoke-virtual {p0}, Lclarifai2/api/BaseClarifaiClient;->hasValidToken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid token in this "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lclarifai2/api/ClarifaiClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Use hasValidToken() to check if a token exists before invoking this method to avoid this exception."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 125
    :cond_0
    iget-object p0, p0, Lclarifai2/api/BaseClarifaiClient;->currentClarifaiToken:Lclarifai2/api/ClarifaiToken;

    return-object p0
.end method

.method public hasValidToken()Z
    .locals 4

    .line 116
    iget-object v0, p0, Lclarifai2/api/BaseClarifaiClient;->currentClarifaiToken:Lclarifai2/api/ClarifaiToken;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lclarifai2/api/BaseClarifaiClient;->currentClarifaiToken:Lclarifai2/api/ClarifaiToken;

    invoke-virtual {p0}, Lclarifai2/api/ClarifaiToken;->getExpiresAt()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
