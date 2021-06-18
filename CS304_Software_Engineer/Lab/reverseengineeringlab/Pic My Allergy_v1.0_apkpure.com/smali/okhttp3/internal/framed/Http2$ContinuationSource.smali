.class final Lokhttp3/internal/framed/Http2$ContinuationSource;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContinuationSource"
.end annotation


# instance fields
.field flags:B

.field left:I

.field length:I

.field padding:S

.field private final source:Lokio/BufferedSource;

.field streamId:I


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 0

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    return-void
.end method

.method private readContinuationHeader()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    iget v0, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->streamId:I

    .line 633
    iget-object v1, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-static {v1}, Lokhttp3/internal/framed/Http2;->access$300(Lokio/BufferedSource;)I

    move-result v1

    iput v1, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->left:I

    iput v1, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->length:I

    .line 634
    iget-object v1, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 635
    iget-object v2, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->flags:B

    .line 636
    invoke-static {}, Lokhttp3/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-static {}, Lokhttp3/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    iget v4, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->streamId:I

    iget v5, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->length:I

    iget-byte v6, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->flags:B

    invoke-static {v3, v4, v5, v1, v6}, Lokhttp3/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 637
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    iput v2, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->streamId:I

    const/16 v2, 0x9

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    const-string p0, "%s != TYPE_CONTINUATION"

    .line 638
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 639
    :cond_1
    iget p0, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->streamId:I

    if-eq p0, v0, :cond_2

    const-string p0, "TYPE_CONTINUATION streamId changed"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lokhttp3/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    :goto_0
    iget v0, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->left:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    .line 610
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    iget-short v3, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->padding:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->skip(J)V

    const/4 v0, 0x0

    .line 611
    iput-short v0, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->padding:S

    .line 612
    iget-byte v0, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->flags:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    .line 613
    :cond_0
    invoke-direct {p0}, Lokhttp3/internal/framed/Http2$ContinuationSource;->readContinuationHeader()V

    goto :goto_0

    .line 617
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    iget v3, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->left:I

    int-to-long v3, v3

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v0, p1, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_2

    return-wide v1

    .line 619
    :cond_2
    iget p3, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->left:I

    int-to-long v0, p3

    sub-long/2addr v0, p1

    long-to-int p3, v0

    iput p3, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->left:I

    return-wide p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 0

    .line 624
    iget-object p0, p0, Lokhttp3/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method
