.class public final Lokhttp3/internal/framed/FramedStream;
.super Ljava/lang/Object;
.source "FramedStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/framed/FramedStream$StreamTimeout;,
        Lokhttp3/internal/framed/FramedStream$FramedDataSink;,
        Lokhttp3/internal/framed/FramedStream$FramedDataSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field private final connection:Lokhttp3/internal/framed/FramedConnection;

.field private errorCode:Lokhttp3/internal/framed/ErrorCode;

.field private final id:I

.field private final readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

.field private final requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field final sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

.field private final source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

.field unacknowledgedBytesRead:J

.field private final writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(ILokhttp3/internal/framed/FramedConnection;ZZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lokhttp3/internal/framed/FramedConnection;",
            "ZZ",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lokhttp3/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 64
    new-instance v0, Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;-><init>(Lokhttp3/internal/framed/FramedStream;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    .line 65
    new-instance v0, Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;-><init>(Lokhttp3/internal/framed/FramedStream;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream;->writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    if-nez p2, :cond_0

    .line 76
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "connection == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p5, :cond_1

    .line 77
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "requestHeaders == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_1
    iput p1, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    .line 79
    iput-object p2, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    .line 80
    iget-object p1, p2, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const/high16 v1, 0x10000

    .line 81
    invoke-virtual {p1, v1}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result p1

    int-to-long v2, p1

    iput-wide v2, p0, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 82
    new-instance p1, Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    iget-object p2, p2, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    .line 83
    invoke-virtual {p2, v1}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2, v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;-><init>(Lokhttp3/internal/framed/FramedStream;JLokhttp3/internal/framed/FramedStream$1;)V

    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    .line 84
    new-instance p1, Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-direct {p1, p0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;-><init>(Lokhttp3/internal/framed/FramedStream;)V

    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    .line 85
    iget-object p1, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    invoke-static {p1, p4}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$102(Lokhttp3/internal/framed/FramedStream$FramedDataSource;Z)Z

    .line 86
    iget-object p1, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {p1, p3}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$202(Lokhttp3/internal/framed/FramedStream$FramedDataSink;Z)Z

    .line 87
    iput-object p5, p0, Lokhttp3/internal/framed/FramedStream;->requestHeaders:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1000(Lokhttp3/internal/framed/FramedStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream;->cancelStreamIfNecessary()V

    return-void
.end method

.method static synthetic access$1100(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    .locals 0

    .line 34
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    return-object p0
.end method

.method static synthetic access$1200(Lokhttp3/internal/framed/FramedStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream;->checkOutNotClosed()V

    return-void
.end method

.method static synthetic access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;
    .locals 0

    .line 34
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    return-object p0
.end method

.method static synthetic access$600(Lokhttp3/internal/framed/FramedStream;)I
    .locals 0

    .line 34
    iget p0, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    return p0
.end method

.method static synthetic access$700(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    .locals 0

    .line 34
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    return-object p0
.end method

.method static synthetic access$800(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;
    .locals 0

    .line 34
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    return-object p0
.end method

.method static synthetic access$900(Lokhttp3/internal/framed/FramedStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream;->waitForIo()V

    return-void
.end method

.method private cancelStreamIfNecessary()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    monitor-enter p0

    .line 451
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$100(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$300(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$200(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$400(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 452
    :goto_0
    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->isOpen()Z

    move-result v1

    .line 453
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 459
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/FramedStream;->close(Lokhttp3/internal/framed/ErrorCode;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 461
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget p0, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, p0}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 453
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private checkOutNotClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$400(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 571
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$200(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 573
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    if-eqz v0, :cond_2

    .line 574
    new-instance v0, Lokhttp3/internal/framed/StreamResetException;

    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/ErrorCode;)V

    throw v0

    :cond_2
    return-void
.end method

.method private closeInternal(Lokhttp3/internal/framed/ErrorCode;)Z
    .locals 2

    .line 238
    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    monitor-exit p0

    return v1

    .line 242
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$100(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$200(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    monitor-exit p0

    return v1

    .line 245
    :cond_1
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 247
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-object p1, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget p0, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {p1, p0}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    .line 247
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private waitForIo()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 584
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 586
    :catch_0
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 2

    .line 564
    iget-wide v0, p0, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 565
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public close(Lokhttp3/internal/framed/ErrorCode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedStream;->closeInternal(Lokhttp3/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget p0, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, p0, p1}, Lokhttp3/internal/framed/FramedConnection;->writeSynReset(ILokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method public closeLater(Lokhttp3/internal/framed/ErrorCode;)V
    .locals 1

    .line 229
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedStream;->closeInternal(Lokhttp3/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget p0, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, p0, p1}, Lokhttp3/internal/framed/FramedConnection;->writeSynResetLater(ILokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method public getConnection()Lokhttp3/internal/framed/FramedConnection;
    .locals 0

    .line 124
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    return-object p0
.end method

.method public declared-synchronized getErrorCode()Lokhttp3/internal/framed/ErrorCode;
    .locals 1

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()I
    .locals 0

    .line 91
    iget p0, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    return p0
.end method

.method public getRequestHeaders()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->requestHeaders:Ljava/util/List;

    return-object p0
.end method

.method public declared-synchronized getResponseHeaders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :goto_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream;->waitForIo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :cond_0
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 144
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 145
    :cond_1
    :try_start_3
    new-instance v0, Lokhttp3/internal/framed/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/ErrorCode;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 142
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 135
    monitor-exit p0

    throw v0
.end method

.method public getSink()Lokio/Sink;
    .locals 2

    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->isLocallyInitiated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    return-object p0

    :catchall_0
    move-exception v0

    .line 209
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSource()Lokio/Source;
    .locals 0

    .line 195
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    return-object p0
.end method

.method public isLocallyInitiated()Z
    .locals 3

    .line 119
    iget v0, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 120
    :goto_0
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget-boolean p0, p0, Lokhttp3/internal/framed/FramedConnection;->client:Z

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public declared-synchronized isOpen()Z
    .locals 2

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 107
    monitor-exit p0

    return v1

    .line 109
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$100(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$300(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    .line 110
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$200(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$400(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 112
    monitor-exit p0

    return v1

    :cond_3
    const/4 v0, 0x1

    .line 114
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 105
    monitor-exit p0

    throw v0
.end method

.method public readTimeout()Lokio/Timeout;
    .locals 0

    .line 186
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    return-object p0
.end method

.method receiveData(Lokio/BufferedSource;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->receive(Lokio/BufferedSource;J)V

    return-void
.end method

.method receiveFin()V
    .locals 2

    .line 291
    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->source:Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->access$102(Lokhttp3/internal/framed/FramedStream$FramedDataSource;Z)Z

    .line 293
    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->isOpen()Z

    move-result v0

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 295
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget p0, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, p0}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 295
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method receiveHeaders(Ljava/util/List;Lokhttp3/internal/framed/HeadersMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;",
            "Lokhttp3/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v2, :cond_1

    .line 258
    invoke-virtual {p2}, Lokhttp3/internal/framed/HeadersMode;->failIfHeadersAbsent()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 259
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    goto :goto_0

    .line 261
    :cond_0
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 262
    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->isOpen()Z

    move-result v1

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {p2}, Lokhttp3/internal/framed/HeadersMode;->failIfHeadersPresent()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 267
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->STREAM_IN_USE:Lokhttp3/internal/framed/ErrorCode;

    goto :goto_0

    .line 269
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    iput-object p2, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 275
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 277
    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/FramedStream;->closeLater(Lokhttp3/internal/framed/ErrorCode;)V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    .line 279
    iget-object p1, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget p0, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {p1, p0}, Lokhttp3/internal/framed/FramedConnection;->removeStream(I)Lokhttp3/internal/framed/FramedStream;

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 275
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized receiveRstStream(Lokhttp3/internal/framed/ErrorCode;)V
    .locals 1

    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    .line 303
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 301
    monitor-exit p0

    throw p1
.end method

.method public reply(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 165
    monitor-enter p0

    if-nez p1, :cond_0

    .line 167
    :try_start_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "responseHeaders == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 169
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 170
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "reply already sent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_1
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 174
    iget-object p2, p0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    invoke-static {p2, v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->access$202(Lokhttp3/internal/framed/FramedStream$FramedDataSink;Z)Z

    move v0, v1

    .line 177
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object p2, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedStream;->id:I

    invoke-virtual {p2, v1, v0, p1}, Lokhttp3/internal/framed/FramedConnection;->writeSynReply(IZLjava/util/List;)V

    if-eqz v0, :cond_3

    .line 181
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedConnection;->flush()V

    :cond_3
    return-void

    .line 177
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public writeTimeout()Lokio/Timeout;
    .locals 0

    .line 190
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->writeTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    return-object p0
.end method
