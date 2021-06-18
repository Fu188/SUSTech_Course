.class final Lokhttp3/internal/framed/Spdy3$Writer;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lokhttp3/internal/framed/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final headerBlockBuffer:Lokio/Buffer;

.field private final headerBlockOut:Lokio/BufferedSink;

.field private final sink:Lokio/BufferedSink;


# direct methods
.method constructor <init>(Lokio/BufferedSink;Z)V
    .locals 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    .line 296
    iput-boolean p2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->client:Z

    .line 298
    new-instance p1, Ljava/util/zip/Deflater;

    invoke-direct {p1}, Ljava/util/zip/Deflater;-><init>()V

    .line 299
    sget-object p2, Lokhttp3/internal/framed/Spdy3;->DICTIONARY:[B

    invoke-virtual {p1, p2}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 300
    new-instance p2, Lokio/Buffer;

    invoke-direct {p2}, Lokio/Buffer;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    .line 301
    new-instance p2, Lokio/DeflaterSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-direct {p2, v0, p1}, Lokio/DeflaterSink;-><init>(Lokio/Sink;Ljava/util/zip/Deflater;)V

    invoke-static {p2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    return-void
.end method

.method private writeNameValueBlockToBuffer(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 409
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 410
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 411
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/internal/framed/Header;

    iget-object v2, v2, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    .line 412
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v4

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 413
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {v3, v2}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 414
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/internal/framed/Header;

    iget-object v2, v2, Lokhttp3/internal/framed/Header;->value:Lokio/ByteString;

    .line 415
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v4

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 416
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {v3, v2}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    :cond_0
    iget-object p0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->flush()V

    return-void
.end method


# virtual methods
.method public applyAndAckSettings(Lokhttp3/internal/framed/Settings;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 487
    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    .line 488
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 486
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .locals 0

    monitor-enter p0

    .line 316
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized data(ZILokio/Buffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 392
    :try_start_0
    invoke-virtual {p0, p2, p1, p3, p4}, Lokhttp3/internal/framed/Spdy3$Writer;->sendDataFrame(IILokio/Buffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 390
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 319
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 318
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized goAway(ILokhttp3/internal/framed/ErrorCode;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 455
    :try_start_0
    iget-boolean p3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz p3, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 456
    :cond_0
    iget p3, p2, Lokhttp3/internal/framed/ErrorCode;->spdyGoAwayCode:I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 457
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 462
    :cond_1
    iget-object p3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v0, -0x7ffcfff9

    invoke-interface {p3, v0}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 463
    iget-object p3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/16 v0, 0x8

    invoke-interface {p3, v0}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 464
    iget-object p3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p3, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 465
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget p2, p2, Lokhttp3/internal/framed/ErrorCode;->spdyGoAwayCode:I

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 466
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 454
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    monitor-enter p0

    .line 359
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 360
    :cond_0
    invoke-direct {p0, p2}, Lokhttp3/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 363
    iget-object p2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-virtual {p2}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    long-to-int p2, v0

    .line 365
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v1, -0x7ffcfff8

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 366
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/4 v1, 0x0

    const v2, 0xffffff

    and-int/2addr p2, v2

    or-int/2addr p2, v1

    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 367
    iget-object p2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 368
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object p2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 358
    monitor-exit p0

    throw p1
.end method

.method public maxDataLength()I
    .locals 0

    const/16 p0, 0x3fff

    return p0
.end method

.method public declared-synchronized ping(ZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 441
    :try_start_0
    iget-boolean p3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz p3, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 442
    :cond_0
    iget-boolean p3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->client:Z

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eq p3, v0, :cond_2

    move v1, v2

    :cond_2
    if-eq p1, v1, :cond_3

    .line 443
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "payload != reply"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 447
    :cond_3
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const p3, -0x7ffcfffa

    invoke-interface {p1, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 448
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/4 p3, 0x4

    invoke-interface {p1, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 449
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 450
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 440
    monitor-exit p0

    throw p1
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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

    return-void
.end method

.method public declared-synchronized rstStream(ILokhttp3/internal/framed/ErrorCode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 373
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 374
    :cond_0
    iget v0, p2, Lokhttp3/internal/framed/ErrorCode;->spdyRstCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 378
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v1, -0x7ffcfffd

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 379
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 380
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 381
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget p2, p2, Lokhttp3/internal/framed/ErrorCode;->spdyRstCode:I

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 382
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 372
    monitor-exit p0

    throw p1
.end method

.method sendDataFrame(IILokio/Buffer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    int-to-long v0, p4

    const-wide/32 v2, 0xffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 399
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 401
    :cond_1
    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v3, 0x7fffffff

    and-int/2addr p1, v3

    invoke-interface {v2, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 402
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr p2, v2

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    if-lez p4, :cond_2

    .line 404
    iget-object p0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p0, p3, v0, v1}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    :cond_2
    return-void
.end method

.method public declared-synchronized settings(Lokhttp3/internal/framed/Settings;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 422
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 425
    :cond_0
    invoke-virtual {p1}, Lokhttp3/internal/framed/Settings;->size()I

    move-result v0

    const/4 v1, 0x4

    mul-int/lit8 v2, v0, 0x8

    add-int/2addr v1, v2

    .line 427
    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v3, -0x7ffcfffc

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 428
    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v3, 0xffffff

    and-int/2addr v1, v3

    const/4 v4, 0x0

    or-int/2addr v1, v4

    invoke-interface {v2, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 429
    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v1, v0}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    :goto_0
    const/16 v0, 0xa

    if-gt v4, v0, :cond_2

    .line 431
    invoke-virtual {p1, v4}, Lokhttp3/internal/framed/Settings;->isSet(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 432
    :cond_1
    invoke-virtual {p1, v4}, Lokhttp3/internal/framed/Settings;->flags(I)I

    move-result v0

    .line 433
    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int v2, v4, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 434
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v4}, Lokhttp3/internal/framed/Settings;->get(I)I

    move-result v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 436
    :cond_2
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 421
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
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

    monitor-enter p0

    .line 344
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 345
    :cond_0
    invoke-direct {p0, p3}, Lokhttp3/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 348
    iget-object p3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    long-to-int p3, v0

    .line 350
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v1, -0x7ffcfffe

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 351
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const v1, 0xffffff

    and-int/2addr p3, v1

    or-int/2addr p1, p3

    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 352
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const p3, 0x7fffffff

    and-int/2addr p2, p3

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 353
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object p2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 354
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 343
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
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

    monitor-enter p0

    .line 326
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 327
    :cond_0
    invoke-direct {p0, p5}, Lokhttp3/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    const-wide/16 v0, 0xa

    .line 328
    iget-object p5, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-virtual {p5}, Lokio/Buffer;->size()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int p5, v0

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    or-int/2addr p1, p2

    .line 333
    iget-object p2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v1, -0x7ffcffff

    invoke-interface {p2, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 334
    iget-object p2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const v1, 0xffffff

    and-int/2addr p5, v1

    or-int/2addr p1, p5

    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 335
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const p2, 0x7fffffff

    and-int/2addr p3, p2

    invoke-interface {p1, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 336
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/2addr p2, p4

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 337
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    .line 338
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object p2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 339
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 325
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 471
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 479
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v1, -0x7ffcfff7

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 480
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 481
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 482
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    long-to-int p2, p2

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 483
    iget-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    monitor-exit p0

    return-void

    .line 473
    :cond_2
    :goto_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 470
    monitor-exit p0

    throw p1
.end method
