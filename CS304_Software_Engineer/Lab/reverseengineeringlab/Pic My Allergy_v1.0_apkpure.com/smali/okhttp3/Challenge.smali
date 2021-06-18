.class public final Lokhttp3/Challenge;
.super Ljava/lang/Object;
.source "Challenge.java"


# instance fields
.field private final realm:Ljava/lang/String;

.field private final scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lokhttp3/Challenge;->realm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 41
    instance-of v0, p1, Lokhttp3/Challenge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    check-cast p1, Lokhttp3/Challenge;

    iget-object v1, p1, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    .line 42
    invoke-static {v0, v1}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/Challenge;->realm:Ljava/lang/String;

    iget-object p1, p1, Lokhttp3/Challenge;->realm:Ljava/lang/String;

    .line 43
    invoke-static {p0, p1}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 48
    iget-object v0, p0, Lokhttp3/Challenge;->realm:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Challenge;->realm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x383

    add-int/2addr v2, v0

    const/16 v0, 0x1f

    mul-int/2addr v0, v2

    .line 49
    iget-object v2, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object p0, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public realm()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lokhttp3/Challenge;->realm:Ljava/lang/String;

    return-object p0
.end method

.method public scheme()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " realm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/Challenge;->realm:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
