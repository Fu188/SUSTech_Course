.class final Lclarifai2/dto/input/AutoValue_SearchHit;
.super Lclarifai2/dto/input/SearchHit;
.source "AutoValue_SearchHit.java"


# instance fields
.field private final input:Lclarifai2/dto/input/ClarifaiInput;

.field private final score:F


# direct methods
.method constructor <init>(FLclarifai2/dto/input/ClarifaiInput;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lclarifai2/dto/input/SearchHit;-><init>()V

    .line 16
    iput p1, p0, Lclarifai2/dto/input/AutoValue_SearchHit;->score:F

    if-nez p2, :cond_0

    .line 18
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null input"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_0
    iput-object p2, p0, Lclarifai2/dto/input/AutoValue_SearchHit;->input:Lclarifai2/dto/input/ClarifaiInput;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 48
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/input/SearchHit;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 49
    check-cast p1, Lclarifai2/dto/input/SearchHit;

    .line 50
    iget v1, p0, Lclarifai2/dto/input/AutoValue_SearchHit;->score:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lclarifai2/dto/input/SearchHit;->score()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Lclarifai2/dto/input/AutoValue_SearchHit;->input:Lclarifai2/dto/input/ClarifaiInput;

    .line 51
    invoke-virtual {p1}, Lclarifai2/dto/input/SearchHit;->input()Lclarifai2/dto/input/ClarifaiInput;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    .line 60
    iget v0, p0, Lclarifai2/dto/input/AutoValue_SearchHit;->score:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 62
    iget-object p0, p0, Lclarifai2/dto/input/AutoValue_SearchHit;->input:Lclarifai2/dto/input/ClarifaiInput;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public input()Lclarifai2/dto/input/ClarifaiInput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    iget-object p0, p0, Lclarifai2/dto/input/AutoValue_SearchHit;->input:Lclarifai2/dto/input/ClarifaiInput;

    return-object p0
.end method

.method public score()F
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget p0, p0, Lclarifai2/dto/input/AutoValue_SearchHit;->score:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchHit{score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lclarifai2/dto/input/AutoValue_SearchHit;->score:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", input="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/input/AutoValue_SearchHit;->input:Lclarifai2/dto/input/ClarifaiInput;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
