.class final Lclarifai2/dto/prediction/AutoValue_Embedding;
.super Lclarifai2/dto/prediction/Embedding;
.source "AutoValue_Embedding.java"


# instance fields
.field private final _embedding:[F

.field private final numDimensions:I


# direct methods
.method constructor <init>([FI)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lclarifai2/dto/prediction/Embedding;-><init>()V

    if-nez p1, :cond_0

    .line 18
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null _embedding"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_0
    iput-object p1, p0, Lclarifai2/dto/prediction/AutoValue_Embedding;->_embedding:[F

    .line 21
    iput p2, p0, Lclarifai2/dto/prediction/AutoValue_Embedding;->numDimensions:I

    return-void
.end method


# virtual methods
.method _embedding()[F
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Embedding;->_embedding:[F

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 50
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/prediction/Embedding;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 51
    check-cast p1, Lclarifai2/dto/prediction/Embedding;

    .line 52
    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Embedding;->_embedding:[F

    instance-of v3, p1, Lclarifai2/dto/prediction/AutoValue_Embedding;

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Lclarifai2/dto/prediction/AutoValue_Embedding;

    iget-object v3, v3, Lclarifai2/dto/prediction/AutoValue_Embedding;->_embedding:[F

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Embedding;->_embedding()[F

    move-result-object v3

    :goto_0
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Lclarifai2/dto/prediction/AutoValue_Embedding;->numDimensions:I

    .line 53
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Embedding;->numDimensions()I

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 62
    iget-object v0, p0, Lclarifai2/dto/prediction/AutoValue_Embedding;->_embedding:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 64
    iget p0, p0, Lclarifai2/dto/prediction/AutoValue_Embedding;->numDimensions:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public numDimensions()I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    iget p0, p0, Lclarifai2/dto/prediction/AutoValue_Embedding;->numDimensions:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Embedding{_embedding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Embedding;->_embedding:[F

    .line 40
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", numDimensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lclarifai2/dto/prediction/AutoValue_Embedding;->numDimensions:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
