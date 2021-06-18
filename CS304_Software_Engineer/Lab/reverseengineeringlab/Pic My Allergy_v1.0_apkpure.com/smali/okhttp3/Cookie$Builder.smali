.class public final Lokhttp3/Cookie$Builder;
.super Ljava/lang/Object;
.source "Cookie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field domain:Ljava/lang/String;

.field expiresAt:J

.field hostOnly:Z

.field httpOnly:Z

.field name:Ljava/lang/String;

.field path:Ljava/lang/String;

.field persistent:Z

.field secure:Z

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0xe677d21fdbffL

    .line 454
    iput-wide v0, p0, Lokhttp3/Cookie$Builder;->expiresAt:J

    const-string v0, "/"

    .line 456
    iput-object v0, p0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    return-void
.end method

.method private domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 501
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "domain == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 502
    :cond_0
    invoke-static {p1}, Lokhttp3/internal/Util;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 504
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected domain: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 506
    :cond_1
    iput-object v0, p0, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    .line 507
    iput-boolean p2, p0, Lokhttp3/Cookie$Builder;->hostOnly:Z

    return-object p0
.end method


# virtual methods
.method public build()Lokhttp3/Cookie;
    .locals 2

    .line 528
    new-instance v0, Lokhttp3/Cookie;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/Cookie;-><init>(Lokhttp3/Cookie$Builder;Lokhttp3/Cookie$1;)V

    return-object v0
.end method

.method public domain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 489
    invoke-direct {p0, p1, v0}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;

    move-result-object p0

    return-object p0
.end method

.method public expiresAt(J)Lokhttp3/Cookie$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/high16 p1, -0x8000000000000000L

    :cond_0
    const-wide v0, 0xe677d21fdbffL

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    .line 479
    :cond_1
    iput-wide p1, p0, Lokhttp3/Cookie$Builder;->expiresAt:J

    const/4 p1, 0x1

    .line 480
    iput-boolean p1, p0, Lokhttp3/Cookie$Builder;->persistent:Z

    return-object p0
.end method

.method public hostOnlyDomain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 497
    invoke-direct {p0, p1, v0}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;

    move-result-object p0

    return-object p0
.end method

.method public httpOnly()Lokhttp3/Cookie$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 523
    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->httpOnly:Z

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 463
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 464
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name is not trimmed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 465
    :cond_1
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public path(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 1

    const-string v0, "/"

    .line 512
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "path must start with \'/\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 513
    :cond_0
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    return-object p0
.end method

.method public secure()Lokhttp3/Cookie$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 518
    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->secure:Z

    return-object p0
.end method

.method public value(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 470
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "value == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 471
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "value is not trimmed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 472
    :cond_1
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    return-object p0
.end method
