.class final Lclarifai2/dto/prediction/AutoValue_Color;
.super Lclarifai2/dto/prediction/Color;
.source "AutoValue_Color.java"


# instance fields
.field private final hex:Ljava/lang/String;

.field private final value:F

.field private final webSafeColorName:Ljava/lang/String;

.field private final webSafeHex:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lclarifai2/dto/prediction/Color;-><init>()V

    if-nez p1, :cond_0

    .line 21
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null hex"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_0
    iput-object p1, p0, Lclarifai2/dto/prediction/AutoValue_Color;->hex:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 25
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null webSafeHex"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_1
    iput-object p2, p0, Lclarifai2/dto/prediction/AutoValue_Color;->webSafeHex:Ljava/lang/String;

    if-nez p3, :cond_2

    .line 29
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null webSafeColorName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_2
    iput-object p3, p0, Lclarifai2/dto/prediction/AutoValue_Color;->webSafeColorName:Ljava/lang/String;

    .line 32
    iput p4, p0, Lclarifai2/dto/prediction/AutoValue_Color;->value:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 74
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/prediction/Color;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 75
    check-cast p1, Lclarifai2/dto/prediction/Color;

    .line 76
    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Color;->hex:Ljava/lang/String;

    invoke-virtual {p1}, Lclarifai2/dto/prediction/Color;->hex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Color;->webSafeHex:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Color;->webSafeHex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Color;->webSafeColorName:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Color;->webSafeColorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Lclarifai2/dto/prediction/AutoValue_Color;->value:F

    .line 79
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-virtual {p1}, Lclarifai2/dto/prediction/Color;->value()F

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

    .line 88
    iget-object v0, p0, Lclarifai2/dto/prediction/AutoValue_Color;->hex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 90
    iget-object v2, p0, Lclarifai2/dto/prediction/AutoValue_Color;->webSafeHex:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 92
    iget-object v2, p0, Lclarifai2/dto/prediction/AutoValue_Color;->webSafeColorName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 94
    iget p0, p0, Lclarifai2/dto/prediction/AutoValue_Color;->value:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public hex()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Color;->hex:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color{hex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Color;->hex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", webSafeHex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Color;->webSafeHex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", webSafeColorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Color;->webSafeColorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lclarifai2/dto/prediction/AutoValue_Color;->value:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public value()F
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 56
    iget p0, p0, Lclarifai2/dto/prediction/AutoValue_Color;->value:F

    return p0
.end method

.method public webSafeColorName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Color;->webSafeColorName:Ljava/lang/String;

    return-object p0
.end method

.method public webSafeHex()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 44
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Color;->webSafeHex:Ljava/lang/String;

    return-object p0
.end method
