.class abstract Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;
.super Lclarifai2/dto/model/output_info/ConceptOutputInfo;
.source "$AutoValue_ConceptOutputInfo.java"


# instance fields
.field private final areConceptsMutuallyExclusive:Z

.field private final concepts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;"
        }
    .end annotation
.end field

.field private final isEnvironmentClosed:Z

.field private final language:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;ZZLjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lclarifai2/dto/model/output_info/ConceptOutputInfo;-><init>()V

    .line 23
    iput-object p1, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->concepts:Ljava/util/List;

    .line 24
    iput-boolean p2, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->areConceptsMutuallyExclusive:Z

    .line 25
    iput-boolean p3, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->isEnvironmentClosed:Z

    .line 26
    iput-object p4, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public areConceptsMutuallyExclusive()Z
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    iget-boolean p0, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->areConceptsMutuallyExclusive:Z

    return p0
.end method

.method public concepts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 32
    iget-object p0, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->concepts:Ljava/util/List;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 68
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/model/output_info/ConceptOutputInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 69
    check-cast p1, Lclarifai2/dto/model/output_info/ConceptOutputInfo;

    .line 70
    iget-object v1, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->concepts:Ljava/util/List;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lclarifai2/dto/model/output_info/ConceptOutputInfo;->concepts()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->concepts:Ljava/util/List;

    invoke-virtual {p1}, Lclarifai2/dto/model/output_info/ConceptOutputInfo;->concepts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-boolean v1, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->areConceptsMutuallyExclusive:Z

    .line 71
    invoke-virtual {p1}, Lclarifai2/dto/model/output_info/ConceptOutputInfo;->areConceptsMutuallyExclusive()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->isEnvironmentClosed:Z

    .line 72
    invoke-virtual {p1}, Lclarifai2/dto/model/output_info/ConceptOutputInfo;->isEnvironmentClosed()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->language:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 73
    invoke-virtual {p1}, Lclarifai2/dto/model/output_info/ConceptOutputInfo;->language()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->language:Ljava/lang/String;

    invoke-virtual {p1}, Lclarifai2/dto/model/output_info/ConceptOutputInfo;->language()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 6

    .line 82
    iget-object v0, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->concepts:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->concepts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 84
    iget-boolean v3, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->areConceptsMutuallyExclusive:Z

    const/16 v4, 0x4d5

    const/16 v5, 0x4cf

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 86
    iget-boolean v3, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->isEnvironmentClosed:Z

    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    xor-int/2addr v0, v4

    mul-int/2addr v0, v2

    .line 88
    iget-object v2, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->language:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->language:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    xor-int p0, v0, v1

    return p0
.end method

.method public isEnvironmentClosed()Z
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 44
    iget-boolean p0, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->isEnvironmentClosed:Z

    return p0
.end method

.method public language()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 50
    iget-object p0, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->language:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConceptOutputInfo{concepts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->concepts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", areConceptsMutuallyExclusive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->areConceptsMutuallyExclusive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEnvironmentClosed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->isEnvironmentClosed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;->language:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
