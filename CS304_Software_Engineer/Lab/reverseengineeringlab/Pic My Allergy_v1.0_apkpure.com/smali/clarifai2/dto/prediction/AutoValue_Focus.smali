.class final Lclarifai2/dto/prediction/AutoValue_Focus;
.super Lclarifai2/dto/prediction/Focus;
.source "AutoValue_Focus.java"


# instance fields
.field private final crop:Lclarifai2/dto/input/Crop;

.field private final density:D

.field private final value:D


# direct methods
.method constructor <init>(Lclarifai2/dto/input/Crop;DD)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lclarifai2/dto/prediction/Focus;-><init>()V

    if-nez p1, :cond_0

    .line 20
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null crop"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_0
    iput-object p1, p0, Lclarifai2/dto/prediction/AutoValue_Focus;->crop:Lclarifai2/dto/input/Crop;

    .line 23
    iput-wide p2, p0, Lclarifai2/dto/prediction/AutoValue_Focus;->density:D

    .line 24
    iput-wide p4, p0, Lclarifai2/dto/prediction/AutoValue_Focus;->value:D

    return-void
.end method


# virtual methods
.method public crop()Lclarifai2/dto/input/Crop;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Focus;->crop:Lclarifai2/dto/input/Crop;

    return-object p0
.end method

.method public density()D
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    iget-wide v0, p0, Lclarifai2/dto/prediction/AutoValue_Focus;->density:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/prediction/Focus;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 60
    check-cast p1, Lclarifai2/dto/prediction/Focus;

    .line 61
    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Focus;->crop:Lclarifai2/dto/input/Crop;

    invoke-virtual {p1}, Lclarifai2/dto/prediction/Focus;->crop()Lclarifai2/dto/input/Crop;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lclarifai2/dto/prediction/AutoValue_Focus;->density:D

    .line 62
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lclarifai2/dto/prediction/Focus;->density()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lclarifai2/dto/prediction/AutoValue_Focus;->value:D

    .line 63
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lclarifai2/dto/prediction/Focus;->value()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 8

    .line 72
    iget-object v0, p0, Lclarifai2/dto/prediction/AutoValue_Focus;->crop:Lclarifai2/dto/input/Crop;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    int-to-long v2, v0

    .line 74
    iget-wide v4, p0, Lclarifai2/dto/prediction/AutoValue_Focus;->density:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    iget-wide v6, p0, Lclarifai2/dto/prediction/AutoValue_Focus;->density:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    mul-int/2addr v2, v1

    int-to-long v1, v2

    .line 76
    iget-wide v3, p0, Lclarifai2/dto/prediction/AutoValue_Focus;->value:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    ushr-long/2addr v3, v0

    iget-wide v5, p0, Lclarifai2/dto/prediction/AutoValue_Focus;->value:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    xor-long/2addr v3, v5

    xor-long v0, v1, v3

    long-to-int p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Focus{crop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Focus;->crop:Lclarifai2/dto/input/Crop;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lclarifai2/dto/prediction/AutoValue_Focus;->density:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lclarifai2/dto/prediction/AutoValue_Focus;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public value()D
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    iget-wide v0, p0, Lclarifai2/dto/prediction/AutoValue_Focus;->value:D

    return-wide v0
.end method
