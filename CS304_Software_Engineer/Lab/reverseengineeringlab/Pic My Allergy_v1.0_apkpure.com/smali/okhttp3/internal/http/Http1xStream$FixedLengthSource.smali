.class Lokhttp3/internal/http/Http1xStream$FixedLengthSource;
.super Lokhttp3/internal/http/Http1xStream$AbstractSource;
.source "Http1xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Lokhttp3/internal/http/Http1xStream;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http/Http1xStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->this$0:Lokhttp3/internal/http/Http1xStream;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http/Http1xStream$AbstractSource;-><init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V

    .line 366
    iput-wide p2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    .line 367
    iget-wide p1, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 368
    invoke-virtual {p0, p1}, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->endOfInput(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 393
    :cond_0
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->endOfInput(Z)V

    :cond_1
    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->closed:Z

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 373
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

    .line 374
    :cond_0
    iget-boolean v2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->closed:Z

    if-eqz v2, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 375
    :cond_1
    iget-wide v2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    cmp-long v2, v2, v0

    const-wide/16 v3, -0x1

    if-nez v2, :cond_2

    return-wide v3

    .line 377
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->this$0:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v2}, Lokhttp3/internal/http/Http1xStream;->access$600(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v2

    iget-wide v5, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    invoke-static {v5, v6, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v2, p1, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-nez p3, :cond_3

    const/4 p1, 0x0

    .line 379
    invoke-virtual {p0, p1}, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->endOfInput(Z)V

    .line 380
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "unexpected end of stream"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 383
    :cond_3
    iget-wide v2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    .line 384
    iget-wide v2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_4

    const/4 p3, 0x1

    .line 385
    invoke-virtual {p0, p3}, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->endOfInput(Z)V

    :cond_4
    return-wide p1
.end method
