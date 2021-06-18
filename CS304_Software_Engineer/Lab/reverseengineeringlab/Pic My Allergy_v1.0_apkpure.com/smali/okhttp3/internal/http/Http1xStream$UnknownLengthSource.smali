.class Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;
.super Lokhttp3/internal/http/Http1xStream$AbstractSource;
.source "Http1xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnknownLengthSource"
.end annotation


# instance fields
.field private inputExhausted:Z

.field final synthetic this$0:Lokhttp3/internal/http/Http1xStream;


# direct methods
.method private constructor <init>(Lokhttp3/internal/http/Http1xStream;)V
    .locals 1

    .line 463
    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->this$0:Lokhttp3/internal/http/Http1xStream;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http/Http1xStream$AbstractSource;-><init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V
    .locals 0

    .line 463
    invoke-direct {p0, p1}, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;-><init>(Lokhttp3/internal/http/Http1xStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 483
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->inputExhausted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 484
    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->endOfInput(Z)V

    :cond_1
    const/4 v0, 0x1

    .line 486
    iput-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->closed:Z

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 468
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

    .line 469
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->closed:Z

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 470
    :cond_1
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->inputExhausted:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    return-wide v1

    .line 472
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->this$0:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lokhttp3/internal/http/Http1xStream;->access$600(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_3

    const/4 p1, 0x1

    .line 474
    iput-boolean p1, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->inputExhausted:Z

    .line 475
    invoke-virtual {p0, p1}, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->endOfInput(Z)V

    return-wide v1

    :cond_3
    return-wide p1
.end method
