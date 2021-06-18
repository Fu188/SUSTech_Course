.class public final Lokhttp3/internal/http/Http2xStream;
.super Ljava/lang/Object;
.source "Http2xStream.java"

# interfaces
.implements Lokhttp3/internal/http/HttpStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http/Http2xStream$StreamFinishingSource;
    }
.end annotation


# static fields
.field private static final CONNECTION:Lokio/ByteString;

.field private static final ENCODING:Lokio/ByteString;

.field private static final HOST:Lokio/ByteString;

.field private static final HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:Lokio/ByteString;

.field private static final PROXY_CONNECTION:Lokio/ByteString;

.field private static final SPDY_3_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPDY_3_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final TE:Lokio/ByteString;

.field private static final TRANSFER_ENCODING:Lokio/ByteString;

.field private static final UPGRADE:Lokio/ByteString;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private final framedConnection:Lokhttp3/internal/framed/FramedConnection;

.field private stream:Lokhttp3/internal/framed/FramedStream;

.field private final streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "connection"

    .line 55
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->CONNECTION:Lokio/ByteString;

    const-string v0, "host"

    .line 56
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->HOST:Lokio/ByteString;

    const-string v0, "keep-alive"

    .line 57
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->KEEP_ALIVE:Lokio/ByteString;

    const-string v0, "proxy-connection"

    .line 58
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->PROXY_CONNECTION:Lokio/ByteString;

    const-string v0, "transfer-encoding"

    .line 59
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->TRANSFER_ENCODING:Lokio/ByteString;

    const-string v0, "te"

    .line 60
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->TE:Lokio/ByteString;

    const-string v0, "encoding"

    .line 61
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->ENCODING:Lokio/ByteString;

    const-string v0, "upgrade"

    .line 62
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->UPGRADE:Lokio/ByteString;

    const/16 v0, 0xb

    .line 65
    new-array v1, v0, [Lokio/ByteString;

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->CONNECTION:Lokio/ByteString;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->HOST:Lokio/ByteString;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->KEEP_ALIVE:Lokio/ByteString;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->PROXY_CONNECTION:Lokio/ByteString;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->TRANSFER_ENCODING:Lokio/ByteString;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_PATH:Lokio/ByteString;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_HOST:Lokio/ByteString;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    sget-object v2, Lokhttp3/internal/framed/Header;->VERSION:Lokio/ByteString;

    const/16 v13, 0xa

    aput-object v2, v1, v13

    invoke-static {v1}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/http/Http2xStream;->SPDY_3_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 77
    new-array v1, v8, [Lokio/ByteString;

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->CONNECTION:Lokio/ByteString;

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->HOST:Lokio/ByteString;

    aput-object v2, v1, v4

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->KEEP_ALIVE:Lokio/ByteString;

    aput-object v2, v1, v5

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->PROXY_CONNECTION:Lokio/ByteString;

    aput-object v2, v1, v6

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->TRANSFER_ENCODING:Lokio/ByteString;

    aput-object v2, v1, v7

    invoke-static {v1}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/http/Http2xStream;->SPDY_3_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    const/16 v1, 0xe

    .line 85
    new-array v1, v1, [Lokio/ByteString;

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->CONNECTION:Lokio/ByteString;

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->HOST:Lokio/ByteString;

    aput-object v2, v1, v4

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->KEEP_ALIVE:Lokio/ByteString;

    aput-object v2, v1, v5

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->PROXY_CONNECTION:Lokio/ByteString;

    aput-object v2, v1, v6

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->TE:Lokio/ByteString;

    aput-object v2, v1, v7

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->TRANSFER_ENCODING:Lokio/ByteString;

    aput-object v2, v1, v8

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->ENCODING:Lokio/ByteString;

    aput-object v2, v1, v9

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->UPGRADE:Lokio/ByteString;

    aput-object v2, v1, v10

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    aput-object v2, v1, v11

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_PATH:Lokio/ByteString;

    aput-object v2, v1, v12

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    aput-object v2, v1, v13

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    aput-object v2, v1, v0

    sget-object v0, Lokhttp3/internal/framed/Header;->TARGET_HOST:Lokio/ByteString;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sget-object v0, Lokhttp3/internal/framed/Header;->VERSION:Lokio/ByteString;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    invoke-static {v1}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 100
    new-array v0, v11, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->HOST:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->KEEP_ALIVE:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->PROXY_CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->TE:Lokio/ByteString;

    aput-object v1, v0, v7

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->TRANSFER_ENCODING:Lokio/ByteString;

    aput-object v1, v0, v8

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->ENCODING:Lokio/ByteString;

    aput-object v1, v0, v9

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->UPGRADE:Lokio/ByteString;

    aput-object v1, v0, v10

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/framed/FramedConnection;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lokhttp3/internal/http/Http2xStream;->client:Lokhttp3/OkHttpClient;

    .line 118
    iput-object p2, p0, Lokhttp3/internal/http/Http2xStream;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 119
    iput-object p3, p0, Lokhttp3/internal/http/Http2xStream;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    return-void
.end method

.method static synthetic access$000(Lokhttp3/internal/http/Http2xStream;)Lokhttp3/internal/connection/StreamAllocation;
    .locals 0

    .line 54
    iget-object p0, p0, Lokhttp3/internal/http/Http2xStream;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    return-object p0
.end method

.method public static http2HeadersList(Lokhttp3/Request;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->TARGET_PATH:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/internal/http/RequestLine;->requestPath(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result p0

    :goto_0
    if-ge v5, p0, :cond_1

    .line 204
    invoke-virtual {v0, v5}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    .line 205
    sget-object v3, Lokhttp3/internal/http/Http2xStream;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    new-instance v3, Lokhttp3/internal/framed/Header;

    invoke-virtual {v0, v5}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readHttp2HeadersList(Ljava/util/List;)Lokhttp3/Response$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)",
            "Lokhttp3/Response$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 252
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 253
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/internal/framed/Header;

    iget-object v4, v4, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    .line 255
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/internal/framed/Header;

    iget-object v5, v5, Lokhttp3/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    .line 256
    sget-object v6, Lokhttp3/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    invoke-virtual {v4, v6}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v5

    goto :goto_1

    .line 258
    :cond_0
    sget-object v6, Lokhttp3/internal/http/Http2xStream;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 259
    sget-object v6, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v4}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4, v5}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 262
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 264
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/1.1 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object p0

    .line 265
    new-instance v1, Lokhttp3/Response$Builder;

    invoke-direct {v1}, Lokhttp3/Response$Builder;-><init>()V

    sget-object v2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    .line 266
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/StatusLine;->code:I

    .line 267
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object p0, p0, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 268
    invoke-virtual {v1, p0}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p0

    .line 269
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static readSpdy3HeadersList(Ljava/util/List;)Lokhttp3/Response$Builder;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)",
            "Lokhttp3/Response$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP/1.1"

    .line 216
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    .line 217
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_5

    .line 218
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/internal/framed/Header;

    iget-object v6, v6, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    .line 220
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokhttp3/internal/framed/Header;

    iget-object v7, v7, Lokhttp3/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v7}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    move-object v5, v4

    move v4, v3

    .line 221
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 222
    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 224
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 226
    :cond_0
    invoke-virtual {v7, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 227
    sget-object v10, Lokhttp3/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    invoke-virtual {v6, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v5, v4

    goto :goto_2

    .line 229
    :cond_1
    sget-object v10, Lokhttp3/internal/framed/Header;->VERSION:Lokio/ByteString;

    invoke-virtual {v6, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v8, v4

    goto :goto_2

    .line 231
    :cond_2
    sget-object v10, Lokhttp3/internal/http/Http2xStream;->SPDY_3_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 232
    sget-object v10, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v6}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v1, v11, v4}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v4, v9, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    move-object v4, v5

    move-object v5, v8

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    .line 237
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 239
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object p0

    .line 240
    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0}, Lokhttp3/Response$Builder;-><init>()V

    sget-object v2, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    .line 241
    invoke-virtual {v0, v2}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v0

    iget v2, p0, Lokhttp3/internal/http/StatusLine;->code:I

    .line 242
    invoke-virtual {v0, v2}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v0

    iget-object p0, p0, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 243
    invoke-virtual {v0, p0}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p0

    .line 244
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static spdy3HeadersList(Lokhttp3/Request;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->TARGET_PATH:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/internal/http/RequestLine;->requestPath(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->VERSION:Lokio/ByteString;

    const-string v4, "HTTP/1.1"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->TARGET_HOST:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 164
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v2

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_4

    .line 166
    invoke-virtual {v0, v3}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    .line 169
    sget-object v6, Lokhttp3/internal/http/Http2xStream;->SPDY_3_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 172
    :cond_0
    invoke-virtual {v0, v3}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    .line 173
    invoke-interface {p0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 174
    new-instance v7, Lokhttp3/internal/framed/Header;

    invoke-direct {v7, v4, v6}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    move v7, v5

    .line 179
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 180
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lokhttp3/internal/framed/Header;

    iget-object v8, v8, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v8, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 181
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lokhttp3/internal/framed/Header;

    iget-object v8, v8, Lokhttp3/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v8}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lokhttp3/internal/http/Http2xStream;->joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 182
    new-instance v8, Lokhttp3/internal/framed/Header;

    invoke-direct {v8, v4, v6}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 278
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/FramedStream;->closeLater(Lokhttp3/internal/framed/ErrorCode;)V

    :cond_0
    return-void
.end method

.method public createRequestBody(Lokhttp3/Request;J)Lokio/Sink;
    .locals 0

    .line 123
    iget-object p0, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->getSink()Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public finishRequest()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object p0, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->getSink()Lokio/Sink;

    move-result-object p0

    invoke-interface {p0}, Lokio/Sink;->close()V

    return-void
.end method

.method public openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    new-instance v0, Lokhttp3/internal/http/Http2xStream$StreamFinishingSource;

    iget-object v1, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream;->getSource()Lokio/Source;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http/Http2xStream$StreamFinishingSource;-><init>(Lokhttp3/internal/http/Http2xStream;Lokio/Source;)V

    .line 274
    new-instance p0, Lokhttp3/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    return-object p0
.end method

.method public readResponseHeaders()Lokhttp3/Response$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->getProtocol()Lokhttp3/Protocol;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    .line 145
    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->getResponseHeaders()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/internal/http/Http2xStream;->readHttp2HeadersList(Ljava/util/List;)Lokhttp3/Response$Builder;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    .line 146
    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->getResponseHeaders()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/internal/http/Http2xStream;->readSpdy3HeadersList(Ljava/util/List;)Lokhttp3/Response$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public writeRequestHeaders(Lokhttp3/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    if-eqz v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    .line 130
    iget-object v1, p0, Lokhttp3/internal/http/Http2xStream;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedConnection;->getProtocol()Lokhttp3/Protocol;

    move-result-object v1

    sget-object v2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v1, v2, :cond_1

    .line 131
    invoke-static {p1}, Lokhttp3/internal/http/Http2xStream;->http2HeadersList(Lokhttp3/Request;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/http/Http2xStream;->spdy3HeadersList(Lokhttp3/Request;)Ljava/util/List;

    move-result-object p1

    :goto_0
    const/4 v1, 0x1

    .line 134
    iget-object v2, p0, Lokhttp3/internal/http/Http2xStream;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v2, p1, v0, v1}, Lokhttp3/internal/framed/FramedConnection;->newStream(Ljava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    .line 135
    iget-object p1, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {p1}, Lokhttp3/internal/framed/FramedStream;->readTimeout()Lokio/Timeout;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 136
    iget-object p1, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {p1}, Lokhttp3/internal/framed/FramedStream;->writeTimeout()Lokio/Timeout;

    move-result-object p1

    iget-object p0, p0, Lokhttp3/internal/http/Http2xStream;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result p0

    int-to-long v0, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    return-void
.end method
