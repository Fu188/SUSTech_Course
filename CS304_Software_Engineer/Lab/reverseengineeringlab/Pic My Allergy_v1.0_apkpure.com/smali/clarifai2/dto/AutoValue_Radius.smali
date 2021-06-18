.class final Lclarifai2/dto/AutoValue_Radius;
.super Lclarifai2/dto/Radius;
.source "AutoValue_Radius.java"


# instance fields
.field private final unit:Lclarifai2/dto/Radius$Unit;

.field private final value:F


# direct methods
.method constructor <init>(FLclarifai2/dto/Radius$Unit;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lclarifai2/dto/Radius;-><init>()V

    .line 16
    iput p1, p0, Lclarifai2/dto/AutoValue_Radius;->value:F

    if-nez p2, :cond_0

    .line 18
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null unit"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_0
    iput-object p2, p0, Lclarifai2/dto/AutoValue_Radius;->unit:Lclarifai2/dto/Radius$Unit;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 47
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/Radius;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 48
    check-cast p1, Lclarifai2/dto/Radius;

    .line 49
    iget v1, p0, Lclarifai2/dto/AutoValue_Radius;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lclarifai2/dto/Radius;->value()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Lclarifai2/dto/AutoValue_Radius;->unit:Lclarifai2/dto/Radius$Unit;

    .line 50
    invoke-virtual {p1}, Lclarifai2/dto/Radius;->unit()Lclarifai2/dto/Radius$Unit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/dto/Radius$Unit;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

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

    .line 59
    iget v0, p0, Lclarifai2/dto/AutoValue_Radius;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 61
    iget-object p0, p0, Lclarifai2/dto/AutoValue_Radius;->unit:Lclarifai2/dto/Radius$Unit;

    invoke-virtual {p0}, Lclarifai2/dto/Radius$Unit;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Radius{value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lclarifai2/dto/AutoValue_Radius;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/AutoValue_Radius;->unit:Lclarifai2/dto/Radius$Unit;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unit()Lclarifai2/dto/Radius$Unit;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    iget-object p0, p0, Lclarifai2/dto/AutoValue_Radius;->unit:Lclarifai2/dto/Radius$Unit;

    return-object p0
.end method

.method public value()F
    .locals 0

    .line 25
    iget p0, p0, Lclarifai2/dto/AutoValue_Radius;->value:F

    return p0
.end method
