.class public final Lokhttp3/Route;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field final address:Lokhttp3/Address;

.field final inetSocketAddress:Ljava/net/InetSocketAddress;

.field final proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Lokhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 43
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "address == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p2, :cond_1

    .line 46
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "proxy == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-nez p3, :cond_2

    .line 49
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "inetSocketAddress == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_2
    iput-object p1, p0, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 52
    iput-object p2, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    .line 53
    iput-object p3, p0, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method public address()Lokhttp3/Address;
    .locals 0

    .line 57
    iget-object p0, p0, Lokhttp3/Route;->address:Lokhttp3/Address;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 83
    instance-of v0, p1, Lokhttp3/Route;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 84
    check-cast p1, Lokhttp3/Route;

    .line 85
    iget-object v0, p0, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v2, p1, Lokhttp3/Route;->address:Lokhttp3/Address;

    invoke-virtual {v0, v2}, Lokhttp3/Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    iget-object v2, p1, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    .line 86
    invoke-virtual {v0, v2}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-object p1, p1, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 87
    invoke-virtual {p0, p1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 94
    iget-object v0, p0, Lokhttp3/Route;->address:Lokhttp3/Address;

    invoke-virtual {v0}, Lokhttp3/Address;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    const/16 v0, 0x1f

    mul-int/2addr v1, v0

    .line 95
    iget-object v2, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    .line 96
    iget-object p0, p0, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 0

    .line 67
    iget-object p0, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public requiresTunnel()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lokhttp3/Route;->address:Lokhttp3/Address;

    iget-object v0, v0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p0

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public socketAddress()Ljava/net/InetSocketAddress;
    .locals 0

    .line 71
    iget-object p0, p0, Lokhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-object p0
.end method
