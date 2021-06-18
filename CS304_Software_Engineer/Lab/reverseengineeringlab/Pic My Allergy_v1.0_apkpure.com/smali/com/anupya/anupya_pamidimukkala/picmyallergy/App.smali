.class public Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;
.super Landroid/app/Application;
.source "App.java"


# static fields
.field private static INSTANCE:Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;


# instance fields
.field private client:Lclarifai2/api/ClarifaiClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static get()Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 23
    sget-object v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;->INSTANCE:Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "App has not been created yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public clarifaiClient()Lclarifai2/api/ClarifaiClient;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 60
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;->client:Lclarifai2/api/ClarifaiClient;

    if-nez p0, :cond_0

    .line 62
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use Clarifai client before initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-object p0
.end method

.method public onCreate()V
    .locals 5

    .line 34
    sput-object p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;->INSTANCE:Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;

    .line 36
    new-instance v0, Lclarifai2/api/ClarifaiBuilder;

    const v1, 0x7f0e0028

    invoke-virtual {p0, v1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lclarifai2/api/ClarifaiBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    .line 39
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance v3, Lcom/anupya/anupya_pamidimukkala/picmyallergy/App$1;

    invoke-direct {v3, p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/App$1;-><init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;)V

    invoke-direct {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    sget-object v3, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 48
    invoke-virtual {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lclarifai2/api/ClarifaiBuilder;->client(Lokhttp3/OkHttpClient;)Lclarifai2/api/ClarifaiBuilder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lclarifai2/api/ClarifaiBuilder;->buildSync()Lclarifai2/api/ClarifaiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;->client:Lclarifai2/api/ClarifaiClient;

    .line 52
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 55
    new-instance p0, Ltimber/log/Timber$DebugTree;

    invoke-direct {p0}, Ltimber/log/Timber$DebugTree;-><init>()V

    invoke-static {p0}, Ltimber/log/Timber;->plant(Ltimber/log/Timber$Tree;)V

    return-void
.end method
