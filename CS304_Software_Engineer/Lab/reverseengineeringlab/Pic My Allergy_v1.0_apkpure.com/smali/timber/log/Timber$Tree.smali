.class public abstract Ltimber/log/Timber$Tree;
.super Ljava/lang/Object;
.source "Timber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltimber/log/Timber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Tree"
.end annotation


# instance fields
.field final explicitTag:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Ltimber/log/Timber$Tree;->explicitTag:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 540
    new-instance p0, Ljava/io/StringWriter;

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Ljava/io/StringWriter;-><init>(I)V

    .line 541
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 542
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 543
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 544
    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private varargs prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 512
    invoke-virtual {p0}, Ltimber/log/Timber$Tree;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-virtual {p0, p1}, Ltimber/log/Timber$Tree;->isLoggable(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 517
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 p3, 0x0

    :cond_1
    if-nez p3, :cond_3

    if-nez p2, :cond_2

    return-void

    .line 524
    :cond_2
    invoke-direct {p0, p2}, Ltimber/log/Timber$Tree;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 526
    :cond_3
    array-length v1, p4

    if-lez v1, :cond_4

    .line 527
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_4
    if-eqz p2, :cond_5

    .line 530
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ltimber/log/Timber$Tree;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 534
    :cond_5
    :goto_0
    invoke-virtual {p0, p1, v0, p3, p2}, Ltimber/log/Timber$Tree;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 417
    invoke-direct {p0, v0, v1, p1, p2}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    .line 427
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 422
    invoke-direct {p0, v0, p1, p2, p3}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 462
    invoke-direct {p0, v0, v1, p1, p2}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    .line 472
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 467
    invoke-direct {p0, v0, p1, p2, p3}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method getTag()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Ltimber/log/Timber$Tree;->explicitTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 395
    iget-object p0, p0, Ltimber/log/Timber$Tree;->explicitTag:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_0
    return-object v0
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 432
    invoke-direct {p0, v0, v1, p1, p2}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public i(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    .line 442
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    .line 437
    invoke-direct {p0, v0, p1, p2, p3}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected isLoggable(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected abstract log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 492
    invoke-direct {p0, p1, v0, p2, p3}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(ILjava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    .line 502
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 497
    invoke-direct {p0, p1, p2, p3, p4}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 402
    invoke-direct {p0, v0, v1, p1, p2}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    .line 412
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 407
    invoke-direct {p0, v0, p1, p2, p3}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 447
    invoke-direct {p0, v0, v1, p1, p2}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    .line 457
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 452
    invoke-direct {p0, v0, p1, p2, p3}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 477
    invoke-direct {p0, v0, v1, p1, p2}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public wtf(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    .line 487
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    .line 482
    invoke-direct {p0, v0, p1, p2, p3}, Ltimber/log/Timber$Tree;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
