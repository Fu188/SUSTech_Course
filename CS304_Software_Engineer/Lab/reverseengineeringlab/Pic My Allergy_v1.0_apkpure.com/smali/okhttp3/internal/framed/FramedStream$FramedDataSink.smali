.class final Lokhttp3/internal/framed/FramedStream$FramedDataSink;
.super Ljava/lang/Object;
.source "FramedStream.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FramedDataSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMIT_BUFFER_SIZE:J = 0x4000L


# instance fields
.field private closed:Z

.field private finished:Z

.field private final sendBuffer:Lokio/Buffer;

.field final synthetic this$0:Lokhttp3/internal/framed/FramedStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 468
    const-class v0, Lokhttp3/internal/framed/FramedStream;

    return-void
.end method

.method constructor <init>(Lokhttp3/internal/framed/FramedStream;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    return-void
.end method

.method static synthetic access$200(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z
    .locals 0

    .line 468
    iget-boolean p0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->finished:Z

    return p0
.end method

.method static synthetic access$202(Lokhttp3/internal/framed/FramedStream$FramedDataSink;Z)Z
    .locals 0

    .line 468
    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->finished:Z

    return p1
.end method

.method static synthetic access$400(Lokhttp3/internal/framed/FramedStream$FramedDataSink;)Z
    .locals 0

    .line 468
    iget-boolean p0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->closed:Z

    return p0
.end method

.method private emitDataFrame(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v0

    .line 499
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->access$1100(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 501
    :goto_0
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    iget-wide v1, v1, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->finished:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->closed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->access$800(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v1

    if-nez v1, :cond_0

    .line 502
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->access$900(Lokhttp3/internal/framed/FramedStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 505
    :cond_0
    :try_start_2
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->access$1100(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 508
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->access$1200(Lokhttp3/internal/framed/FramedStream;)V

    .line 509
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    iget-wide v1, v1, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 510
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    iget-wide v2, v1, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 511
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 513
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$1100(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->enter()V

    .line 515
    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v5

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$600(Lokhttp3/internal/framed/FramedStream;)I

    move-result v6

    if-eqz p1, :cond_1

    iget-object p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    move v7, p1

    iget-object v8, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual/range {v5 .. v10}, Lokhttp3/internal/framed/FramedConnection;->writeData(IZLokio/Buffer;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 517
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {p0}, Lokhttp3/internal/framed/FramedStream;->access$1100(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {p0}, Lokhttp3/internal/framed/FramedStream;->access$1100(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw p1

    :catchall_1
    move-exception p1

    .line 505
    :try_start_4
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {p0}, Lokhttp3/internal/framed/FramedStream;->access$1100(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw p1

    :catchall_2
    move-exception p0

    .line 511
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v0

    .line 539
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->closed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 540
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 541
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    iget-object v0, v0, Lokhttp3/internal/framed/FramedStream;->sink:Lokhttp3/internal/framed/FramedStream$FramedDataSink;

    iget-boolean v0, v0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->finished:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 543
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 544
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 545
    invoke-direct {p0, v1}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    goto :goto_0

    .line 549
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$600(Lokhttp3/internal/framed/FramedStream;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lokhttp3/internal/framed/FramedConnection;->writeData(IZLokio/Buffer;J)V

    .line 552
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v2

    .line 553
    :try_start_1
    iput-boolean v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->closed:Z

    .line 554
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->flush()V

    .line 556
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {p0}, Lokhttp3/internal/framed/FramedStream;->access$1000(Lokhttp3/internal/framed/FramedStream;)V

    return-void

    :catchall_0
    move-exception p0

    .line 554
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 540
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v0

    .line 524
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->access$1200(Lokhttp3/internal/framed/FramedStream;)V

    .line 525
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 527
    invoke-direct {p0, v0}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    .line 528
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->flush()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 525
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public timeout()Lokio/Timeout;
    .locals 0

    .line 533
    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-static {p0}, Lokhttp3/internal/framed/FramedStream;->access$1100(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object p0

    return-object p0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 487
    :goto_0
    iget-object p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    .line 488
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
