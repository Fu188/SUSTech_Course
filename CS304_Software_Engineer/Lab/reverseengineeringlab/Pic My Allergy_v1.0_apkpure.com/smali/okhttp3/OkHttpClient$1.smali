.class final Lokhttp3/OkHttpClient$1;
.super Lokhttp3/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lokhttp3/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;)V
    .locals 0

    .line 127
    invoke-virtual {p1, p2}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void
.end method

.method public addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 131
    invoke-virtual {p1, p2, p3}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void
.end method

.method public apply(Lokhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    .line 162
    invoke-virtual {p1, p2, p3}, Lokhttp3/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public callEngineGetStreamAllocation(Lokhttp3/Call;)Lokhttp3/internal/connection/StreamAllocation;
    .locals 0

    .line 157
    check-cast p1, Lokhttp3/RealCall;

    invoke-virtual {p1}, Lokhttp3/RealCall;->streamAllocation()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object p0

    return-object p0
.end method

.method public connectionBecameIdle(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)Z
    .locals 0

    .line 140
    invoke-virtual {p1, p2}, Lokhttp3/ConnectionPool;->connectionBecameIdle(Lokhttp3/internal/connection/RealConnection;)Z

    move-result p0

    return p0
.end method

.method public get(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/connection/RealConnection;
    .locals 0

    .line 145
    invoke-virtual {p1, p2, p3}, Lokhttp3/ConnectionPool;->get(Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/connection/RealConnection;

    move-result-object p0

    return-object p0
.end method

.method public getHttpUrlChecked(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 167
    invoke-static {p1}, Lokhttp3/HttpUrl;->getChecked(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method public put(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)V
    .locals 0

    .line 149
    invoke-virtual {p1, p2}, Lokhttp3/ConnectionPool;->put(Lokhttp3/internal/connection/RealConnection;)V

    return-void
.end method

.method public routeDatabase(Lokhttp3/ConnectionPool;)Lokhttp3/internal/connection/RouteDatabase;
    .locals 0

    .line 153
    iget-object p0, p1, Lokhttp3/ConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    return-object p0
.end method

.method public setCache(Lokhttp3/OkHttpClient$Builder;Lokhttp3/internal/cache/InternalCache;)V
    .locals 0

    .line 135
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->setInternalCache(Lokhttp3/internal/cache/InternalCache;)V

    return-void
.end method

.method public setCallWebSocket(Lokhttp3/Call;)V
    .locals 0

    .line 171
    check-cast p1, Lokhttp3/RealCall;

    invoke-virtual {p1}, Lokhttp3/RealCall;->setForWebSocket()V

    return-void
.end method
