.class abstract Lclarifai2/dto/input/$AutoValue_Crop;
.super Lclarifai2/dto/input/Crop;
.source "$AutoValue_Crop.java"


# instance fields
.field private final bottom:F

.field private final left:F

.field private final right:F

.field private final top:F


# direct methods
.method constructor <init>(FFFF)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lclarifai2/dto/input/Crop;-><init>()V

    .line 20
    iput p1, p0, Lclarifai2/dto/input/$AutoValue_Crop;->top:F

    .line 21
    iput p2, p0, Lclarifai2/dto/input/$AutoValue_Crop;->left:F

    .line 22
    iput p3, p0, Lclarifai2/dto/input/$AutoValue_Crop;->bottom:F

    .line 23
    iput p4, p0, Lclarifai2/dto/input/$AutoValue_Crop;->right:F

    return-void
.end method


# virtual methods
.method public bottom()F
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    iget p0, p0, Lclarifai2/dto/input/$AutoValue_Crop;->bottom:F

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 65
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/input/Crop;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 66
    check-cast p1, Lclarifai2/dto/input/Crop;

    .line 67
    iget v1, p0, Lclarifai2/dto/input/$AutoValue_Crop;->top:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lclarifai2/dto/input/Crop;->top()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lclarifai2/dto/input/$AutoValue_Crop;->left:F

    .line 68
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lclarifai2/dto/input/Crop;->left()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lclarifai2/dto/input/$AutoValue_Crop;->bottom:F

    .line 69
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lclarifai2/dto/input/Crop;->bottom()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_1

    iget p0, p0, Lclarifai2/dto/input/$AutoValue_Crop;->right:F

    .line 70
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-virtual {p1}, Lclarifai2/dto/input/Crop;->right()F

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
    .locals 3

    .line 79
    iget v0, p0, Lclarifai2/dto/input/$AutoValue_Crop;->top:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 81
    iget v2, p0, Lclarifai2/dto/input/$AutoValue_Crop;->left:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 83
    iget v2, p0, Lclarifai2/dto/input/$AutoValue_Crop;->bottom:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 85
    iget p0, p0, Lclarifai2/dto/input/$AutoValue_Crop;->right:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public left()F
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    iget p0, p0, Lclarifai2/dto/input/$AutoValue_Crop;->left:F

    return p0
.end method

.method public right()F
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 47
    iget p0, p0, Lclarifai2/dto/input/$AutoValue_Crop;->right:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Crop{top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lclarifai2/dto/input/$AutoValue_Crop;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lclarifai2/dto/input/$AutoValue_Crop;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lclarifai2/dto/input/$AutoValue_Crop;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lclarifai2/dto/input/$AutoValue_Crop;->right:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public top()F
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    iget p0, p0, Lclarifai2/dto/input/$AutoValue_Crop;->top:F

    return p0
.end method
