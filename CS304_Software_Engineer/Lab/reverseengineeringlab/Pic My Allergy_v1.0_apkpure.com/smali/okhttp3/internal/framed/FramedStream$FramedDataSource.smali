.class final Lokhttp3/internal/framed/FramedStream$FramedDataSource;
.super Ljava/lang/Object;
.source "FramedStream.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FramedDataSource"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private closed:Z

.field private finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lokio/Buffer;

.field private final receiveBuffer:Lokio/Buffer;

.field final synthetic this$0:Lokhttp3/internal/framed/FramedStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 313
    const-class v0, Lokhttp3/internal/framed/FramedStream;

    return-void
.end method

.method private constructor <init>(Lokhttp3/internal/framed/FramedStream;J)V
    .locals 0

    .line 332
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lokio/Buffer;

    .line 318
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    .line 333
    iput-wide p2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->maxByteCount:J

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/framed/FramedStream;JLokhttp3/internal/framed/FramedStream$1;)V
    .locals 0

    .line 313
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;-><init>(Lokhttp3/internal/framed/FramedStream;J)V

    return-void
.end method

.method static synthetic access$100(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z
    .locals 0

    .line 313
    iget-boolean p0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->finished:Z

    return p0
.end method

.method static synthetic access$102(Lokhttp3/internal/framed/FramedStream$FramedDataSource;Z)Z
    .locals 0

    .line 313
    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->finished:Z

    return p1
.end method

.method static synthetic access$300(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z
    .locals 0

    .line 313
    iget-boolean p0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->closed:Z

    return p0
.end method

.method private checkNotClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->closed:Z

    if-eqz v0, :cond_0

    .line 438
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 440
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$800(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 441
    new-instance v0, Lokhttp3/internal/framed/StreamResetException;

    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {p0}, Lokhttp3/internal/framed/FramedStream;->access$800(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;

    move-result-object p0

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/ErrorCode;)V

    throw v0

    :cond_1
    return-void
.end method

.method private waitUntilReadable()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$700(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->enter()V

    .line 375
    :goto_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->finished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$800(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$900(Lokhttp3/internal/framed/FramedStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 379
    :cond_0
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {p0}, Lokhttp3/internal/framed/FramedStream;->access$700(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {p0}, Lokhttp3/internal/framed/FramedStream;->access$700(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v0

    const/4 v1, 0x1

    .line 429
    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->closed:Z

    .line 430
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->clear()V

    .line 431
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 432
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {p0}, Lokhttp3/internal/framed/FramedStream;->access$1000(Lokhttp3/internal/framed/FramedStream;)V

    return-void

    :catchall_0
    move-exception p0

    .line 432
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 338
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 341
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v2

    .line 342
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->waitUntilReadable()V

    .line 343
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->checkNotClosed()V

    .line 344
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_1

    const-wide/16 p0, -0x1

    monitor-exit v2

    return-wide p0

    .line 347
    :cond_1
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    iget-object v4, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p1

    .line 350
    iget-object p3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    iget-wide v3, p3, Lokhttp3/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    add-long/2addr v3, p1

    iput-wide v3, p3, Lokhttp3/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 351
    iget-object p3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    iget-wide v3, p3, Lokhttp3/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    iget-object p3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    .line 352
    invoke-static {p3}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object p3

    iget-object p3, p3, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    const/high16 v5, 0x10000

    invoke-virtual {p3, v5}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v6, p3

    cmp-long p3, v3, v6

    if-ltz p3, :cond_2

    .line 353
    iget-object p3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {p3}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object p3

    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v3}, Lokhttp3/internal/framed/FramedStream;->access$600(Lokhttp3/internal/framed/FramedStream;)I

    move-result v3

    iget-object v4, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    iget-wide v6, v4, Lokhttp3/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    invoke-virtual {p3, v3, v6, v7}, Lokhttp3/internal/framed/FramedConnection;->writeWindowUpdateLater(IJ)V

    .line 354
    iget-object p3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    iput-wide v0, p3, Lokhttp3/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 356
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 359
    iget-object p3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {p3}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object p3

    monitor-enter p3

    .line 360
    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v2

    iget-wide v3, v2, Lokhttp3/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lokhttp3/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 361
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v2

    iget-wide v2, v2, Lokhttp3/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    iget-object v4, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    .line 362
    invoke-static {v4}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v4

    iget-object v4, v4, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v4, v5}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 363
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v4}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v4

    iget-wide v4, v4, Lokhttp3/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    invoke-virtual {v2, v3, v4, v5}, Lokhttp3/internal/framed/FramedConnection;->writeWindowUpdateLater(IJ)V

    .line 364
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {p0}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object p0

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 366
    :cond_3
    monitor-exit p3

    return-wide p1

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 356
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method receive(Lokio/BufferedSource;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6

    .line 389
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v2

    .line 390
    :try_start_0
    iget-boolean v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->finished:Z

    .line 391
    iget-object v4, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->maxByteCount:J

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v5

    .line 392
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    .line 396
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    .line 397
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    sget-object p1, Lokhttp3/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p0, p1}, Lokhttp3/internal/framed/FramedStream;->closeLater(Lokhttp3/internal/framed/ErrorCode;)V

    return-void

    :cond_1
    if-eqz v3, :cond_2

    .line 403
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    return-void

    .line 408
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lokio/Buffer;

    invoke-interface {p1, v2, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v7, -0x1

    cmp-long v4, v2, v7

    if-nez v4, :cond_3

    .line 409
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_3
    sub-long/2addr p2, v2

    .line 413
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v3

    .line 414
    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v7

    cmp-long v0, v7, v0

    if-nez v0, :cond_4

    move v5, v6

    .line 415
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    if-eqz v5, :cond_5

    .line 417
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 419
    :cond_5
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 392
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_6
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 0

    .line 424
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {p0}, Lokhttp3/internal/framed/FramedStream;->access$700(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object p0

    return-object p0
.end method
