.class public final Lokhttp3/internal/framed/FramedConnection;
.super Ljava/lang/Object;
.source "FramedConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/framed/FramedConnection$Listener;,
        Lokhttp3/internal/framed/FramedConnection$Reader;,
        Lokhttp3/internal/framed/FramedConnection$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field bytesLeftInWriteWindow:J

.field final client:Z

.field private final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final frameWriter:Lokhttp3/internal/framed/FrameWriter;

.field private final hostname:Ljava/lang/String;

.field private lastGoodStreamId:I

.field private final listener:Lokhttp3/internal/framed/FramedConnection$Listener;

.field private nextPingId:I

.field private nextStreamId:I

.field okHttpSettings:Lokhttp3/internal/framed/Settings;

.field final peerSettings:Lokhttp3/internal/framed/Settings;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/framed/Ping;",
            ">;"
        }
    .end annotation
.end field

.field final protocol:Lokhttp3/Protocol;

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field private final pushObserver:Lokhttp3/internal/framed/PushObserver;

.field final readerRunnable:Lokhttp3/internal/framed/FramedConnection$Reader;

.field private receivedInitialPeerSettings:Z

.field private shutdown:Z

.field final socket:Ljava/net/Socket;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/framed/FramedStream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final variant:Lokhttp3/internal/framed/Variant;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 69
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp FramedConnection"

    const/4 v7, 0x1

    .line 71
    invoke-static {v0, v7}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>(Lokhttp3/internal/framed/FramedConnection$Builder;)V
    .locals 14

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 104
    iput-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 113
    new-instance v0, Lokhttp3/internal/framed/Settings;

    invoke-direct {v0}, Lokhttp3/internal/framed/Settings;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    .line 119
    new-instance v0, Lokhttp3/internal/framed/Settings;

    invoke-direct {v0}, Lokhttp3/internal/framed/Settings;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    .line 816
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    .line 130
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$000(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/Protocol;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    .line 131
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$100(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/internal/framed/PushObserver;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->pushObserver:Lokhttp3/internal/framed/PushObserver;

    .line 132
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lokhttp3/internal/framed/FramedConnection;->client:Z

    .line 133
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$300(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/internal/framed/FramedConnection$Listener;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->listener:Lokhttp3/internal/framed/FramedConnection$Listener;

    .line 135
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    .line 136
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    sget-object v4, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v1, v4, :cond_1

    .line 137
    iget v1, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    add-int/2addr v1, v2

    iput v1, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    .line 140
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    iput v2, p0, Lokhttp3/internal/framed/FramedConnection;->nextPingId:I

    .line 146
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_3

    .line 147
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    const/high16 v4, 0x1000000

    invoke-virtual {v1, v2, v0, v4}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    .line 150
    :cond_3
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$400(Lokhttp3/internal/framed/FramedConnection$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    sget-object v4, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    const/4 v5, 0x0

    if-ne v1, v4, :cond_4

    .line 153
    new-instance v1, Lokhttp3/internal/framed/Http2;

    invoke-direct {v1}, Lokhttp3/internal/framed/Http2;-><init>()V

    iput-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->variant:Lokhttp3/internal/framed/Variant;

    .line 155
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x3c

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v12}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v4, "OkHttp %s Push Observer"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v13, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v13, v6, v0

    .line 157
    invoke-static {v4, v6}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v13

    move-object v6, v1

    invoke-direct/range {v6 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 159
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const v3, 0xffff

    invoke-virtual {v1, v2, v0, v3}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    .line 160
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const/4 v2, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v1, v2, v0, v3}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    goto :goto_1

    .line 161
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_5

    .line 162
    new-instance v0, Lokhttp3/internal/framed/Spdy3;

    invoke-direct {v0}, Lokhttp3/internal/framed/Spdy3;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->variant:Lokhttp3/internal/framed/Variant;

    .line 163
    iput-object v5, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 167
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 168
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$500(Lokhttp3/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    .line 169
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->variant:Lokhttp3/internal/framed/Variant;

    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$600(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokio/BufferedSink;

    move-result-object v1

    iget-boolean v2, p0, Lokhttp3/internal/framed/FramedConnection;->client:Z

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/framed/Variant;->newWriter(Lokio/BufferedSink;Z)Lokhttp3/internal/framed/FrameWriter;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    .line 171
    new-instance v0, Lokhttp3/internal/framed/FramedConnection$Reader;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->variant:Lokhttp3/internal/framed/Variant;

    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$700(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokio/BufferedSource;

    move-result-object p1

    iget-boolean v2, p0, Lokhttp3/internal/framed/FramedConnection;->client:Z

    invoke-interface {v1, p1, v2}, Lokhttp3/internal/framed/Variant;->newReader(Lokio/BufferedSource;Z)Lokhttp3/internal/framed/FrameReader;

    move-result-object p1

    invoke-direct {v0, p0, p1, v5}, Lokhttp3/internal/framed/FramedConnection$Reader;-><init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;Lokhttp3/internal/framed/FramedConnection$1;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->readerRunnable:Lokhttp3/internal/framed/FramedConnection$Reader;

    return-void

    .line 165
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method synthetic constructor <init>(Lokhttp3/internal/framed/FramedConnection$Builder;Lokhttp3/internal/framed/FramedConnection$1;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedConnection;-><init>(Lokhttp3/internal/framed/FramedConnection$Builder;)V

    return-void
.end method

.method static synthetic access$1100(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->close(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic access$1300(Lokhttp3/internal/framed/FramedConnection;I)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedConnection;->pushedStream(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lokhttp3/internal/framed/FramedConnection;ILokio/BufferedSource;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/framed/FramedConnection;->pushDataLater(ILokio/BufferedSource;IZ)V

    return-void
.end method

.method static synthetic access$1500(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/framed/FramedConnection;->pushHeadersLater(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1600(Lokhttp3/internal/framed/FramedConnection;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    return p0
.end method

.method static synthetic access$1602(Lokhttp3/internal/framed/FramedConnection;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    return p1
.end method

.method static synthetic access$1700(Lokhttp3/internal/framed/FramedConnection;)I
    .locals 0

    .line 55
    iget p0, p0, Lokhttp3/internal/framed/FramedConnection;->lastGoodStreamId:I

    return p0
.end method

.method static synthetic access$1702(Lokhttp3/internal/framed/FramedConnection;I)I
    .locals 0

    .line 55
    iput p1, p0, Lokhttp3/internal/framed/FramedConnection;->lastGoodStreamId:I

    return p1
.end method

.method static synthetic access$1800(Lokhttp3/internal/framed/FramedConnection;)I
    .locals 0

    .line 55
    iget p0, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    return p0
.end method

.method static synthetic access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;
    .locals 0

    .line 55
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2000(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/FramedConnection$Listener;
    .locals 0

    .line 55
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection;->listener:Lokhttp3/internal/framed/FramedConnection$Listener;

    return-object p0
.end method

.method static synthetic access$2100()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 55
    sget-object v0, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$2200(Lokhttp3/internal/framed/FramedConnection;ILokhttp3/internal/framed/ErrorCode;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->pushResetLater(ILokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic access$2300(Lokhttp3/internal/framed/FramedConnection;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lokhttp3/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    return p0
.end method

.method static synthetic access$2302(Lokhttp3/internal/framed/FramedConnection;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    return p1
.end method

.method static synthetic access$2400(Lokhttp3/internal/framed/FramedConnection;I)Lokhttp3/internal/framed/Ping;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedConnection;->removePing(I)Lokhttp3/internal/framed/Ping;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lokhttp3/internal/framed/FramedConnection;ZIILokhttp3/internal/framed/Ping;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/framed/FramedConnection;->writePingLater(ZIILokhttp3/internal/framed/Ping;)V

    return-void
.end method

.method static synthetic access$2600(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$2700(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/PushObserver;
    .locals 0

    .line 55
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection;->pushObserver:Lokhttp3/internal/framed/PushObserver;

    return-object p0
.end method

.method static synthetic access$2800(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Set;
    .locals 0

    .line 55
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$900(Lokhttp3/internal/framed/FramedConnection;ZIILokhttp3/internal/framed/Ping;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/framed/FramedConnection;->writePing(ZIILokhttp3/internal/framed/Ping;)V

    return-void
.end method

.method private close(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 430
    :try_start_0
    invoke-virtual {p0, p1}, Lokhttp3/internal/framed/FramedConnection;->shutdown(Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 437
    :goto_0
    monitor-enter p0

    .line 438
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/framed/FramedStream;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lokhttp3/internal/framed/FramedStream;

    .line 440
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_1

    :cond_0
    move-object v1, v0

    .line 442
    :goto_1
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 443
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lokhttp3/internal/framed/Ping;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lokhttp3/internal/framed/Ping;

    .line 444
    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    move-object v0, v2

    .line 446
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 449
    array-length v3, v1

    move-object v4, p1

    move p1, v2

    :goto_2
    if-ge p1, v3, :cond_3

    aget-object v5, v1, p1

    .line 451
    :try_start_2
    invoke-virtual {v5, p2}, Lokhttp3/internal/framed/FramedStream;->close(Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    if-eqz v4, :cond_2

    move-object v4, v5

    :cond_2
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    move-object p1, v4

    :cond_4
    if-eqz v0, :cond_5

    .line 459
    array-length p2, v0

    :goto_4
    if-ge v2, p2, :cond_5

    aget-object v1, v0, v2

    .line 460
    invoke-virtual {v1}, Lokhttp3/internal/framed/Ping;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 466
    :cond_5
    :try_start_3
    iget-object p2, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {p2}, Lokhttp3/internal/framed/FrameWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception p2

    if-nez p1, :cond_6

    move-object p1, p2

    .line 473
    :cond_6
    :goto_5
    :try_start_4
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception p0

    move-object p1, p0

    :goto_6
    if-eqz p1, :cond_7

    .line 478
    throw p1

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 446
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private newStream(ILjava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;ZZ)",
            "Lokhttp3/internal/framed/FramedStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    const/4 v7, 0x1

    xor-int/2addr p4, v7

    .line 235
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v8

    .line 236
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v0, :cond_0

    .line 238
    new-instance p1, Ljava/io/IOException;

    const-string p2, "shutdown"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_0
    iget v9, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    .line 241
    iget v0, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    .line 242
    new-instance v10, Lokhttp3/internal/framed/FramedStream;

    move-object v0, v10

    move v1, v9

    move-object v2, p0

    move v3, v6

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/FramedStream;-><init>(ILokhttp3/internal/framed/FramedConnection;ZZLjava/util/List;)V

    if-eqz p3, :cond_2

    .line 243
    iget-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_2

    iget-wide v0, v10, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 244
    :cond_2
    :goto_0
    invoke-virtual {v10}, Lokhttp3/internal/framed/FramedStream;->isOpen()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 245
    iget-object p3, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    .line 249
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    move v1, v6

    move v2, p4

    move v3, v9

    move v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lokhttp3/internal/framed/FrameWriter;->synStream(ZZIILjava/util/List;)V

    goto :goto_1

    .line 251
    :cond_4
    iget-boolean p3, p0, Lokhttp3/internal/framed/FramedConnection;->client:Z

    if-eqz p3, :cond_5

    .line 252
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 254
    :cond_5
    iget-object p3, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {p3, p1, v9, p2}, Lokhttp3/internal/framed/FrameWriter;->pushPromise(IILjava/util/List;)V

    .line 256
    :goto_1
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_6

    .line 259
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {p0}, Lokhttp3/internal/framed/FrameWriter;->flush()V

    :cond_6
    return-object v10

    :catchall_0
    move-exception p1

    .line 247
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p0

    .line 256
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private pushDataLater(ILokio/BufferedSource;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    int-to-long v0, p3

    .line 867
    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 868
    invoke-interface {p2, v5, v0, v1}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    .line 869
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-eqz p2, :cond_0

    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " != "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 870
    :cond_0
    iget-object p2, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lokhttp3/internal/framed/FramedConnection$6;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/framed/FramedConnection$6;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-interface {p2, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private pushHeadersLater(ILjava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lokhttp3/internal/framed/FramedConnection$5;

    const-string v3, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/framed/FramedConnection$5;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private pushRequestLater(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .line 819
    monitor-enter p0

    .line 820
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    sget-object p2, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->writeSynResetLater(ILokhttp3/internal/framed/ErrorCode;)V

    .line 822
    monitor-exit p0

    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 825
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lokhttp3/internal/framed/FramedConnection$4;

    const-string v3, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/framed/FramedConnection$4;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 825
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private pushResetLater(ILokhttp3/internal/framed/ErrorCode;)V
    .locals 8

    .line 887
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lokhttp3/internal/framed/FramedConnection$7;

    const-string v3, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/framed/FramedConnection$7;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/framed/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private pushedStream(I)Z
    .locals 2

    .line 812
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    sget-object v0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_0

    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private declared-synchronized removePing(I)Lokhttp3/internal/framed/Ping;
    .locals 1

    monitor-enter p0

    .line 391
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/internal/framed/Ping;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private writePing(ZIILokhttp3/internal/framed/Ping;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v0

    if-eqz p4, :cond_0

    .line 385
    :try_start_0
    invoke-virtual {p4}, Lokhttp3/internal/framed/Ping;->send()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 386
    :cond_0
    :goto_0
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {p0, p1, p2, p3}, Lokhttp3/internal/framed/FrameWriter;->ping(ZII)V

    .line 387
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private writePingLater(ZIILokhttp3/internal/framed/Ping;)V
    .locals 10

    .line 371
    sget-object v0, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lokhttp3/internal/framed/FramedConnection$3;

    const-string v3, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 372
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lokhttp3/internal/framed/FramedConnection$3;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILokhttp3/internal/framed/Ping;)V

    .line 371
    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 2

    .line 319
    iget-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->NO_ERROR:Lokhttp3/internal/framed/ErrorCode;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/framed/FramedConnection;->close(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {p0}, Lokhttp3/internal/framed/FrameWriter;->flush()V

    return-void
.end method

.method public getProtocol()Lokhttp3/Protocol;
    .locals 0

    .line 176
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    return-object p0
.end method

.method declared-synchronized getStream(I)Lokhttp3/internal/framed/FramedStream;
    .locals 1

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/internal/framed/FramedStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized maxConcurrentStreams()I
    .locals 2

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/Settings;->getMaxConcurrentStreams(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;ZZ)",
            "Lokhttp3/internal/framed/FramedStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, v0, p1, p2, p3}, Lokhttp3/internal/framed/FramedConnection;->newStream(ILjava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized openStreamCount()I
    .locals 1

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ping()Lokhttp3/internal/framed/Ping;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    new-instance v0, Lokhttp3/internal/framed/Ping;

    invoke-direct {v0}, Lokhttp3/internal/framed/Ping;-><init>()V

    .line 356
    monitor-enter p0

    .line 357
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v1, :cond_0

    .line 358
    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    iget v1, p0, Lokhttp3/internal/framed/FramedConnection;->nextPingId:I

    .line 361
    iget v2, p0, Lokhttp3/internal/framed/FramedConnection;->nextPingId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lokhttp3/internal/framed/FramedConnection;->nextPingId:I

    .line 362
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    .line 363
    :cond_1
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const v3, 0x4f4b6f6b

    .line 365
    invoke-direct {p0, v2, v1, v3, v0}, Lokhttp3/internal/framed/FramedConnection;->writePing(ZIILokhttp3/internal/framed/Ping;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 364
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pushStream(ILjava/util/List;Z)Lokhttp3/internal/framed/FramedStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;Z)",
            "Lokhttp3/internal/framed/FramedStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->client:Z

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Client cannot push requests."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-eq v0, v1, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "protocol != HTTP_2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/internal/framed/FramedConnection;->newStream(ILjava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;

    move-result-object p0

    return-object p0
.end method

.method declared-synchronized removeStream(I)Lokhttp3/internal/framed/FramedStream;
    .locals 1

    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/internal/framed/FramedStream;

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 190
    monitor-exit p0

    throw p1
.end method

.method public setSettings(Lokhttp3/internal/framed/Settings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v0

    .line 508
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 509
    :try_start_1
    iget-boolean v1, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v1, :cond_0

    .line 510
    new-instance p1, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 512
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v1, p1}, Lokhttp3/internal/framed/Settings;->merge(Lokhttp3/internal/framed/Settings;)V

    .line 513
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v1, p1}, Lokhttp3/internal/framed/FrameWriter;->settings(Lokhttp3/internal/framed/Settings;)V

    .line 514
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 514
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p0

    .line 515
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public shutdown(Lokhttp3/internal/framed/ErrorCode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v0

    .line 406
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 407
    :try_start_1
    iget-boolean v1, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v1, :cond_0

    .line 408
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 410
    :try_start_3
    iput-boolean v1, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    .line 411
    iget v1, p0, Lokhttp3/internal/framed/FramedConnection;->lastGoodStreamId:I

    .line 412
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 414
    :try_start_4
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    sget-object v2, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-interface {p0, v1, p1, v2}, Lokhttp3/internal/framed/FrameWriter;->goAway(ILokhttp3/internal/framed/ErrorCode;[B)V

    .line 415
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 412
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p0

    .line 415
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 486
    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/FramedConnection;->start(Z)V

    return-void
.end method

.method start(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 495
    iget-object p1, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {p1}, Lokhttp3/internal/framed/FrameWriter;->connectionPreface()V

    .line 496
    iget-object p1, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    invoke-interface {p1, v0}, Lokhttp3/internal/framed/FrameWriter;->settings(Lokhttp3/internal/framed/Settings;)V

    .line 497
    iget-object p1, p0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    const/high16 v0, 0x10000

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 499
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-interface {v1, v2, v3, v4}, Lokhttp3/internal/framed/FrameWriter;->windowUpdate(IJ)V

    .line 502
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection;->readerRunnable:Lokhttp3/internal/framed/FramedConnection$Reader;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public writeData(IZLokio/Buffer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 285
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {p0, p2, p1, p3, v3}, Lokhttp3/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    .line 291
    monitor-enter p0

    .line 293
    :goto_1
    :try_start_0
    iget-wide v4, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_2

    .line 296
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 297
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 299
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 305
    :cond_2
    :try_start_1
    iget-wide v4, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 306
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v4}, Lokhttp3/internal/framed/FrameWriter;->maxDataLength()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 307
    iget-wide v4, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 308
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    .line 311
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-interface {v4, v5, p1, p3, v2}, Lokhttp3/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 302
    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 308
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method writeSynReply(IZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {p0, p2, p1, p3}, Lokhttp3/internal/framed/FrameWriter;->synReply(ZILjava/util/List;)V

    return-void
.end method

.method writeSynReset(ILokhttp3/internal/framed/ErrorCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {p0, p1, p2}, Lokhttp3/internal/framed/FrameWriter;->rstStream(ILokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method writeSynResetLater(ILokhttp3/internal/framed/ErrorCode;)V
    .locals 8

    .line 324
    sget-object v0, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lokhttp3/internal/framed/FramedConnection$1;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/framed/FramedConnection$1;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/framed/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .locals 9

    .line 339
    sget-object v0, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lokhttp3/internal/framed/FramedConnection$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/framed/FramedConnection$2;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
