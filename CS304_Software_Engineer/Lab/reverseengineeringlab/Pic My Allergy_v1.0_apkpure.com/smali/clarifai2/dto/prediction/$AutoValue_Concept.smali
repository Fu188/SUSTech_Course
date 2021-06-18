.class abstract Lclarifai2/dto/prediction/$AutoValue_Concept;
.super Lclarifai2/dto/prediction/Concept;
.source "$AutoValue_Concept.java"


# instance fields
.field private final appID:Ljava/lang/String;

.field private final createdAt:Ljava/util/Date;

.field private final id:Ljava/lang/String;

.field private final language:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final value:F


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;FLjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0}, Lclarifai2/dto/prediction/Concept;-><init>()V

    .line 26
    iput-object p1, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->id:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->name:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->createdAt:Ljava/util/Date;

    .line 29
    iput-object p4, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->appID:Ljava/lang/String;

    .line 30
    iput p5, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->value:F

    .line 31
    iput-object p6, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appID()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 55
    iget-object p0, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->appID:Ljava/lang/String;

    return-object p0
.end method

.method public createdAt()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 49
    iget-object p0, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->createdAt:Ljava/util/Date;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 87
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/prediction/Concept;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 88
    check-cast p1, Lclarifai2/dto/prediction/Concept;

    .line 89
    iget-object v1, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->id:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 90
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->name()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->createdAt:Ljava/util/Date;

    if-nez v1, :cond_3

    .line 91
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->createdAt()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->createdAt:Ljava/util/Date;

    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->createdAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->appID:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 92
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->appID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->appID:Ljava/lang/String;

    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->appID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iget v1, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->value:F

    .line 93
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->value()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->language:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 94
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->language()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_4

    :cond_5
    iget-object p0, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->language:Ljava/lang/String;

    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->language()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    return v0

    :cond_7
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 103
    iget-object v0, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 105
    iget-object v3, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->name:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 107
    iget-object v3, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->createdAt:Ljava/util/Date;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->createdAt:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 109
    iget-object v3, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->appID:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->appID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 111
    iget v3, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->value:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 113
    iget-object v2, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->language:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    iget-object p0, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->language:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    xor-int p0, v0, v1

    return p0
.end method

.method public id()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 37
    iget-object p0, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->id:Ljava/lang/String;

    return-object p0
.end method

.method public language()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 67
    iget-object p0, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->language:Ljava/lang/String;

    return-object p0
.end method

.method public name()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 43
    iget-object p0, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->name:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Concept{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->appID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->language:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 61
    iget p0, p0, Lclarifai2/dto/prediction/$AutoValue_Concept;->value:F

    return p0
.end method
