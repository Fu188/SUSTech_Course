.class final Lclarifai2/dto/feedback/AutoValue_ConceptFeedback;
.super Lclarifai2/dto/feedback/ConceptFeedback;
.source "AutoValue_ConceptFeedback.java"


# instance fields
.field private final id:Ljava/lang/String;

.field private final value:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0}, Lclarifai2/dto/feedback/ConceptFeedback;-><init>()V

    .line 17
    iput-object p1, p0, Lclarifai2/dto/feedback/AutoValue_ConceptFeedback;->id:Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lclarifai2/dto/feedback/AutoValue_ConceptFeedback;->value:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 46
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/feedback/ConceptFeedback;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 47
    check-cast p1, Lclarifai2/dto/feedback/ConceptFeedback;

    .line 48
    iget-object v1, p0, Lclarifai2/dto/feedback/AutoValue_ConceptFeedback;->id:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lclarifai2/dto/feedback/ConceptFeedback;->id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lclarifai2/dto/feedback/AutoValue_ConceptFeedback;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lclarifai2/dto/feedback/ConceptFeedback;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-boolean p0, p0, Lclarifai2/dto/feedback/AutoValue_ConceptFeedback;->value:Z

    .line 49
    invoke-virtual {p1}, Lclarifai2/dto/feedback/ConceptFeedback;->value()Z

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

    .line 58
    iget-object v0, p0, Lclarifai2/dto/feedback/AutoValue_ConceptFeedback;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lclarifai2/dto/feedback/AutoValue_ConceptFeedback;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 60
    iget-boolean p0, p0, Lclarifai2/dto/feedback/AutoValue_ConceptFeedback;->value:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x4cf

    goto :goto_1

    :cond_1
    const/16 p0, 0x4d5

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method

.method public id()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 24
    iget-object p0, p0, Lclarifai2/dto/feedback/AutoValue_ConceptFeedback;->id:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConceptFeedback{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/feedback/AutoValue_ConceptFeedback;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lclarifai2/dto/feedback/AutoValue_ConceptFeedback;->value:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public value()Z
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iget-boolean p0, p0, Lclarifai2/dto/feedback/AutoValue_ConceptFeedback;->value:Z

    return p0
.end method
