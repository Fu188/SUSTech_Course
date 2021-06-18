.class final Lclarifai2/dto/AutoValue_PointF;
.super Lclarifai2/dto/PointF;
.source "AutoValue_PointF.java"


# instance fields
.field private final x:F

.field private final y:F


# direct methods
.method constructor <init>(FF)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lclarifai2/dto/PointF;-><init>()V

    .line 15
    iput p1, p0, Lclarifai2/dto/AutoValue_PointF;->x:F

    .line 16
    iput p2, p0, Lclarifai2/dto/AutoValue_PointF;->y:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 42
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/PointF;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 43
    check-cast p1, Lclarifai2/dto/PointF;

    .line 44
    iget v1, p0, Lclarifai2/dto/AutoValue_PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lclarifai2/dto/PointF;->x()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_1

    iget p0, p0, Lclarifai2/dto/AutoValue_PointF;->y:F

    .line 45
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-virtual {p1}, Lclarifai2/dto/PointF;->y()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 54
    iget v0, p0, Lclarifai2/dto/AutoValue_PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 56
    iget p0, p0, Lclarifai2/dto/AutoValue_PointF;->y:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PointF{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lclarifai2/dto/AutoValue_PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lclarifai2/dto/AutoValue_PointF;->y:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public x()F
    .locals 0

    .line 21
    iget p0, p0, Lclarifai2/dto/AutoValue_PointF;->x:F

    return p0
.end method

.method public y()F
    .locals 0

    .line 26
    iget p0, p0, Lclarifai2/dto/AutoValue_PointF;->y:F

    return p0
.end method
