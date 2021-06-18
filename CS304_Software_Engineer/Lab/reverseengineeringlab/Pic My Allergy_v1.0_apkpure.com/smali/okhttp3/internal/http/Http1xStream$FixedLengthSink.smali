.class final Lokhttp3/internal/http/Http1xStream$FixedLengthSink;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FixedLengthSink"
.end annotation


# instance fields
.field private bytesRemaining:J

.field private closed:Z

.field final synthetic this$0:Lokhttp3/internal/http/Http1xStream;

.field private final timeout:Lokio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lokhttp3/internal/http/Http1xStream;J)V
    .locals 1

    .line 267
    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->this$0:Lokhttp3/internal/http/Http1xStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    new-instance p1, Lokio/ForwardingTimeout;

    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->this$0:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->access$300(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-direct {p1, v0}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->timeout:Lokio/ForwardingTimeout;

    .line 268
    iput-wide p2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/http/Http1xStream;JLokhttp3/internal/http/Http1xStream$1;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;-><init>(Lokhttp3/internal/http/Http1xStream;J)V

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

    .line 292
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    .line 294
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "unexpected end of stream"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 295
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->this$0:Lokhttp3/internal/http/Http1xStream;

    iget-object v1, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->timeout:Lokio/ForwardingTimeout;

    invoke-static {v0, v1}, Lokhttp3/internal/http/Http1xStream;->access$400(Lokhttp3/internal/http/Http1xStream;Lokio/ForwardingTimeout;)V

    .line 296
    iget-object p0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->this$0:Lokhttp3/internal/http/Http1xStream;

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lokhttp3/internal/http/Http1xStream;->access$502(Lokhttp3/internal/http/Http1xStream;I)I

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object p0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->this$0:Lokhttp3/internal/http/Http1xStream;

    invoke-static {p0}, Lokhttp3/internal/http/Http1xStream;->access$300(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSink;

    move-result-object p0

    invoke-interface {p0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 0

    .line 272
    iget-object p0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->timeout:Lokio/ForwardingTimeout;

    return-object p0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 277
    :cond_0
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 278
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 279
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " bytes but received "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->this$0:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->access$300(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 283
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    return-void
.end method
