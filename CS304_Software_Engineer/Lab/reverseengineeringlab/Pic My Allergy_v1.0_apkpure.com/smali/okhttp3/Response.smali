.class public final Lokhttp3/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Response$Builder;
    }
.end annotation


# instance fields
.field private final body:Lokhttp3/ResponseBody;

.field private volatile cacheControl:Lokhttp3/CacheControl;

.field private final cacheResponse:Lokhttp3/Response;

.field private final code:I

.field private final handshake:Lokhttp3/Handshake;

.field private final headers:Lokhttp3/Headers;

.field private final message:Ljava/lang/String;

.field private final networkResponse:Lokhttp3/Response;

.field private final priorResponse:Lokhttp3/Response;

.field private final protocol:Lokhttp3/Protocol;

.field private final receivedResponseAtMillis:J

.field private final request:Lokhttp3/Request;

.field private final sentRequestAtMillis:J


# direct methods
.method private constructor <init>(Lokhttp3/Response$Builder;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$000(Lokhttp3/Response$Builder;)Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 60
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$100(Lokhttp3/Response$Builder;)Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    .line 61
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$200(Lokhttp3/Response$Builder;)I

    move-result v0

    iput v0, p0, Lokhttp3/Response;->code:I

    .line 62
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$300(Lokhttp3/Response$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$400(Lokhttp3/Response$Builder;)Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    .line 64
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$500(Lokhttp3/Response$Builder;)Lokhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 65
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$600(Lokhttp3/Response$Builder;)Lokhttp3/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 66
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$700(Lokhttp3/Response$Builder;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    .line 67
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$800(Lokhttp3/Response$Builder;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    .line 68
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$900(Lokhttp3/Response$Builder;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    .line 69
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$1000(Lokhttp3/Response$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Response;->sentRequestAtMillis:J

    .line 70
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$1100(Lokhttp3/Response$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Response;->receivedResponseAtMillis:J

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/Response$Builder;Lokhttp3/Response$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lokhttp3/Response;-><init>(Lokhttp3/Response$Builder;)V

    return-void
.end method

.method static synthetic access$1300(Lokhttp3/Response;)Lokhttp3/Request;
    .locals 0

    .line 42
    iget-object p0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    return-object p0
.end method

.method static synthetic access$1400(Lokhttp3/Response;)Lokhttp3/Protocol;
    .locals 0

    .line 42
    iget-object p0, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    return-object p0
.end method

.method static synthetic access$1500(Lokhttp3/Response;)I
    .locals 0

    .line 42
    iget p0, p0, Lokhttp3/Response;->code:I

    return p0
.end method

.method static synthetic access$1600(Lokhttp3/Response;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lokhttp3/Response;)Lokhttp3/Handshake;
    .locals 0

    .line 42
    iget-object p0, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    return-object p0
.end method

.method static synthetic access$1800(Lokhttp3/Response;)Lokhttp3/Headers;
    .locals 0

    .line 42
    iget-object p0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    return-object p0
.end method

.method static synthetic access$1900(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 0

    .line 42
    iget-object p0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    return-object p0
.end method

.method static synthetic access$2000(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 0

    .line 42
    iget-object p0, p0, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    return-object p0
.end method

.method static synthetic access$2100(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 0

    .line 42
    iget-object p0, p0, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    return-object p0
.end method

.method static synthetic access$2200(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 0

    .line 42
    iget-object p0, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    return-object p0
.end method

.method static synthetic access$2300(Lokhttp3/Response;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lokhttp3/Response;->sentRequestAtMillis:J

    return-wide v0
.end method

.method static synthetic access$2400(Lokhttp3/Response;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lokhttp3/Response;->receivedResponseAtMillis:J

    return-wide v0
.end method


# virtual methods
.method public body()Lokhttp3/ResponseBody;
    .locals 0

    .line 172
    iget-object p0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    return-object p0
.end method

.method public cacheControl()Lokhttp3/CacheControl;
    .locals 1

    .line 245
    iget-object v0, p0, Lokhttp3/Response;->cacheControl:Lokhttp3/CacheControl;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-static {v0}, Lokhttp3/CacheControl;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->cacheControl:Lokhttp3/CacheControl;

    :goto_0
    return-object v0
.end method

.method public cacheResponse()Lokhttp3/Response;
    .locals 0

    .line 209
    iget-object p0, p0, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    return-object p0
.end method

.method public challenges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .line 230
    iget v0, p0, Lokhttp3/Response;->code:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const-string v0, "WWW-Authenticate"

    goto :goto_0

    .line 232
    :cond_0
    iget v0, p0, Lokhttp3/Response;->code:I

    const/16 v1, 0x197

    if-ne v0, v1, :cond_1

    const-string v0, "Proxy-Authenticate"

    .line 237
    :goto_0
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    invoke-static {p0, v0}, Lokhttp3/internal/http/HttpHeaders;->parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 235
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 0

    .line 269
    iget-object p0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->close()V

    return-void
.end method

.method public code()I
    .locals 0

    .line 98
    iget p0, p0, Lokhttp3/Response;->code:I

    return p0
.end method

.method public handshake()Lokhttp3/Handshake;
    .locals 0

    .line 119
    iget-object p0, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    return-object p0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {p0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    return-object p0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object p0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {p0, p1}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public headers()Lokhttp3/Headers;
    .locals 0

    .line 136
    iget-object p0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    return-object p0
.end method

.method public isRedirect()Z
    .locals 0

    .line 181
    iget p0, p0, Lokhttp3/Response;->code:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isSuccessful()Z
    .locals 2

    .line 106
    iget v0, p0, Lokhttp3/Response;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget p0, p0, Lokhttp3/Response;->code:I

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public message()Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    return-object p0
.end method

.method public networkResponse()Lokhttp3/Response;
    .locals 0

    .line 200
    iget-object p0, p0, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    return-object p0
.end method

.method public newBuilder()Lokhttp3/Response$Builder;
    .locals 2

    .line 176
    new-instance v0, Lokhttp3/Response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;Lokhttp3/Response$1;)V

    return-object v0
.end method

.method public peekBody(J)Lokhttp3/ResponseBody;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    .line 152
    invoke-interface {v0, p1, p2}, Lokio/BufferedSource;->request(J)Z

    .line 153
    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_0

    .line 158
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 159
    invoke-virtual {v1, v0, p1, p2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 160
    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    move-object v0, v1

    .line 165
    :cond_0
    iget-object p0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p0

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide p1

    invoke-static {p0, p1, p2, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method public priorResponse()Lokhttp3/Response;
    .locals 0

    .line 219
    iget-object p0, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    return-object p0
.end method

.method public protocol()Lokhttp3/Protocol;
    .locals 0

    .line 93
    iget-object p0, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    return-object p0
.end method

.method public receivedResponseAtMillis()J
    .locals 2

    .line 264
    iget-wide v0, p0, Lokhttp3/Response;->receivedResponseAtMillis:J

    return-wide v0
.end method

.method public request()Lokhttp3/Request;
    .locals 0

    .line 86
    iget-object p0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    return-object p0
.end method

.method public sentRequestAtMillis()J
    .locals 2

    .line 255
    iget-wide v0, p0, Lokhttp3/Response;->sentRequestAtMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/Response;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 280
    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
