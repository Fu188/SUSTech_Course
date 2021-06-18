.class public Ltimber/log/Timber$DebugTree;
.super Ltimber/log/Timber$Tree;
.source "Timber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltimber/log/Timber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugTree"
.end annotation


# static fields
.field private static final ANONYMOUS_CLASS:Ljava/util/regex/Pattern;

.field private static final CALL_STACK_INDEX:I = 0x5

.field private static final MAX_LOG_LENGTH:I = 0xfa0


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\$\\d+)+$"

    .line 562
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ltimber/log/Timber$DebugTree;->ANONYMOUS_CLASS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 559
    invoke-direct {p0}, Ltimber/log/Timber$Tree;-><init>()V

    return-void
.end method


# virtual methods
.method protected createStackElementTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 1

    .line 572
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    .line 573
    sget-object p1, Ltimber/log/Timber$DebugTree;->ANONYMOUS_CLASS:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 574
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    .line 575
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 p1, 0x2e

    .line 577
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method final getTag()Ljava/lang/String;
    .locals 3

    .line 581
    invoke-super {p0}, Ltimber/log/Timber$Tree;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 588
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 589
    array-length v1, v0

    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    .line 590
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Synthetic stacktrace didn\'t have enough elements: are you using proguard?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 593
    :cond_1
    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Ltimber/log/Timber$DebugTree;->createStackElementTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 604
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p4, 0x7

    const/16 v0, 0xfa0

    if-ge p0, v0, :cond_1

    if-ne p1, p4, :cond_0

    .line 606
    invoke-static {p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 608
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 614
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    if-ge p0, v0, :cond_5

    const/16 v1, 0xa

    .line 615
    invoke-virtual {p3, v1, p0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    add-int/lit16 v2, p0, 0xfa0

    .line 618
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 619
    invoke-virtual {p3, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-ne p1, p4, :cond_3

    .line 621
    invoke-static {p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 623
    :cond_3
    invoke-static {p1, p2, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-lt v2, v1, :cond_4

    add-int/lit8 p0, v2, 0x1

    goto :goto_1

    :cond_4
    move p0, v2

    goto :goto_2

    :cond_5
    return-void
.end method
