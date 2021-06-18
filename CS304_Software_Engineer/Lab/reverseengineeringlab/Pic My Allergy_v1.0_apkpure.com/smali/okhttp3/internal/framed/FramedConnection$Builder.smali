.class public Lokhttp3/internal/framed/FramedConnection$Builder;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private client:Z

.field private hostname:Ljava/lang/String;

.field private listener:Lokhttp3/internal/framed/FramedConnection$Listener;

.field private protocol:Lokhttp3/Protocol;

.field private pushObserver:Lokhttp3/internal/framed/PushObserver;

.field private sink:Lokio/BufferedSink;

.field private socket:Ljava/net/Socket;

.field private source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    sget-object v0, Lokhttp3/internal/framed/FramedConnection$Listener;->REFUSE_INCOMING_STREAMS:Lokhttp3/internal/framed/FramedConnection$Listener;

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->listener:Lokhttp3/internal/framed/FramedConnection$Listener;

    .line 524
    sget-object v0, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->protocol:Lokhttp3/Protocol;

    .line 525
    sget-object v0, Lokhttp3/internal/framed/PushObserver;->CANCEL:Lokhttp3/internal/framed/PushObserver;

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->pushObserver:Lokhttp3/internal/framed/PushObserver;

    .line 533
    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->client:Z

    return-void
.end method

.method static synthetic access$000(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/Protocol;
    .locals 0

    .line 518
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->protocol:Lokhttp3/Protocol;

    return-object p0
.end method

.method static synthetic access$100(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/internal/framed/PushObserver;
    .locals 0

    .line 518
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->pushObserver:Lokhttp3/internal/framed/PushObserver;

    return-object p0
.end method

.method static synthetic access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z
    .locals 0

    .line 518
    iget-boolean p0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->client:Z

    return p0
.end method

.method static synthetic access$300(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/internal/framed/FramedConnection$Listener;
    .locals 0

    .line 518
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->listener:Lokhttp3/internal/framed/FramedConnection$Listener;

    return-object p0
.end method

.method static synthetic access$400(Lokhttp3/internal/framed/FramedConnection$Builder;)Ljava/lang/String;
    .locals 0

    .line 518
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->hostname:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lokhttp3/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;
    .locals 0

    .line 518
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;

    return-object p0
.end method

.method static synthetic access$600(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokio/BufferedSink;
    .locals 0

    .line 518
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->sink:Lokio/BufferedSink;

    return-object p0
.end method

.method static synthetic access$700(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokio/BufferedSource;
    .locals 0

    .line 518
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->source:Lokio/BufferedSource;

    return-object p0
.end method


# virtual methods
.method public build()Lokhttp3/internal/framed/FramedConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    new-instance v0, Lokhttp3/internal/framed/FramedConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/framed/FramedConnection;-><init>(Lokhttp3/internal/framed/FramedConnection$Builder;Lokhttp3/internal/framed/FramedConnection$1;)V

    return-object v0
.end method

.method public listener(Lokhttp3/internal/framed/FramedConnection$Listener;)Lokhttp3/internal/framed/FramedConnection$Builder;
    .locals 0

    .line 551
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->listener:Lokhttp3/internal/framed/FramedConnection$Listener;

    return-object p0
.end method

.method public protocol(Lokhttp3/Protocol;)Lokhttp3/internal/framed/FramedConnection$Builder;
    .locals 0

    .line 556
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->protocol:Lokhttp3/Protocol;

    return-object p0
.end method

.method public pushObserver(Lokhttp3/internal/framed/PushObserver;)Lokhttp3/internal/framed/FramedConnection$Builder;
    .locals 0

    .line 561
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->pushObserver:Lokhttp3/internal/framed/PushObserver;

    return-object p0
.end method

.method public socket(Ljava/net/Socket;)Lokhttp3/internal/framed/FramedConnection$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-static {p1}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-static {p1}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    .line 537
    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/framed/FramedConnection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/framed/FramedConnection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public socket(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/framed/FramedConnection$Builder;
    .locals 0

    .line 543
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;

    .line 544
    iput-object p2, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->hostname:Ljava/lang/String;

    .line 545
    iput-object p3, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->source:Lokio/BufferedSource;

    .line 546
    iput-object p4, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->sink:Lokio/BufferedSink;

    return-object p0
.end method
