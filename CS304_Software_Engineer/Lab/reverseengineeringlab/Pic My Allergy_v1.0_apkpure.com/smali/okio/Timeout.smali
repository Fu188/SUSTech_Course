.class public Lokio/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"


# static fields
.field public static final NONE:Lokio/Timeout;


# instance fields
.field private deadlineNanoTime:J

.field private hasDeadline:Z

.field private timeoutNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lokio/Timeout$1;

    invoke-direct {v0}, Lokio/Timeout$1;-><init>()V

    sput-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDeadline()Lokio/Timeout;
    .locals 1

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    return-object p0
.end method

.method public clearTimeout()Lokio/Timeout;
    .locals 2

    const-wide/16 v0, 0x0

    .line 129
    iput-wide v0, p0, Lokio/Timeout;->timeoutNanos:J

    return-object p0
.end method

.method public final deadline(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 122
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "duration <= 0: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p3, :cond_1

    .line 123
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public deadlineNanoTime()J
    .locals 2

    .line 105
    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No deadline"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_0
    iget-wide v0, p0, Lokio/Timeout;->deadlineNanoTime:J

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lokio/Timeout;
    .locals 1

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    .line 116
    iput-wide p1, p0, Lokio/Timeout;->deadlineNanoTime:J

    return-object p0
.end method

.method public hasDeadline()Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lokio/Timeout;->hasDeadline:Z

    return p0
.end method

.method public throwIfReached()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string v0, "thread interrupted"

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_0
    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lokio/Timeout;->deadlineNanoTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_1

    .line 150
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string v0, "deadline reached"

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "timeout < 0: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p3, :cond_1

    .line 83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lokio/Timeout;->timeoutNanos:J

    return-object p0
.end method

.method public timeoutNanos()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lokio/Timeout;->timeoutNanos:J

    return-wide v0
.end method

.method public final waitUntilNotified(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 192
    :try_start_0
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    .line 193
    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    return-void

    .line 202
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    if-eqz v0, :cond_1

    cmp-long v7, v1, v3

    if-eqz v7, :cond_1

    .line 204
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 205
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    sub-long v1, v0, v5

    :cond_2
    :goto_0
    cmp-long p0, v1, v3

    if-lez p0, :cond_3

    const-wide/32 v3, 0xf4240

    .line 215
    div-long v7, v1, v3

    mul-long/2addr v3, v7

    sub-long v3, v1, v3

    long-to-int p0, v3

    .line 216
    invoke-virtual {p1, v7, v8, p0}, Ljava/lang/Object;->wait(JI)V

    .line 217
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p0

    sub-long v3, p0, v5

    :cond_3
    cmp-long p0, v3, v1

    if-ltz p0, :cond_4

    .line 222
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string p1, "timeout"

    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    .line 225
    :catch_0
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string p1, "interrupted"

    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
