.class final Lclarifai2/dto/feedback/AutoValue_FaceFeedback;
.super Lclarifai2/dto/feedback/FaceFeedback;
.source "AutoValue_FaceFeedback.java"


# instance fields
.field private final ageConceptFeedback:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lclarifai2/dto/feedback/ConceptFeedback;",
            ">;"
        }
    .end annotation
.end field

.field private final identityConceptFeedback:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lclarifai2/dto/feedback/ConceptFeedback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lclarifai2/dto/feedback/ConceptFeedback;",
            ">;",
            "Ljava/util/Collection<",
            "Lclarifai2/dto/feedback/ConceptFeedback;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lclarifai2/dto/feedback/FaceFeedback;-><init>()V

    if-nez p1, :cond_0

    .line 18
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null identityConceptFeedback"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_0
    iput-object p1, p0, Lclarifai2/dto/feedback/AutoValue_FaceFeedback;->identityConceptFeedback:Ljava/util/Collection;

    if-nez p2, :cond_1

    .line 22
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null ageConceptFeedback"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_1
    iput-object p2, p0, Lclarifai2/dto/feedback/AutoValue_FaceFeedback;->ageConceptFeedback:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public ageConceptFeedback()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lclarifai2/dto/feedback/ConceptFeedback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    iget-object p0, p0, Lclarifai2/dto/feedback/AutoValue_FaceFeedback;->ageConceptFeedback:Ljava/util/Collection;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 52
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/feedback/FaceFeedback;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 53
    check-cast p1, Lclarifai2/dto/feedback/FaceFeedback;

    .line 54
    iget-object v1, p0, Lclarifai2/dto/feedback/AutoValue_FaceFeedback;->identityConceptFeedback:Ljava/util/Collection;

    invoke-virtual {p1}, Lclarifai2/dto/feedback/FaceFeedback;->identityConceptFeedback()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lclarifai2/dto/feedback/AutoValue_FaceFeedback;->ageConceptFeedback:Ljava/util/Collection;

    .line 55
    invoke-virtual {p1}, Lclarifai2/dto/feedback/FaceFeedback;->ageConceptFeedback()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

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

    .line 64
    iget-object v0, p0, Lclarifai2/dto/feedback/AutoValue_FaceFeedback;->identityConceptFeedback:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 66
    iget-object p0, p0, Lclarifai2/dto/feedback/AutoValue_FaceFeedback;->ageConceptFeedback:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public identityConceptFeedback()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lclarifai2/dto/feedback/ConceptFeedback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iget-object p0, p0, Lclarifai2/dto/feedback/AutoValue_FaceFeedback;->identityConceptFeedback:Ljava/util/Collection;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceFeedback{identityConceptFeedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/feedback/AutoValue_FaceFeedback;->identityConceptFeedback:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ageConceptFeedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/feedback/AutoValue_FaceFeedback;->ageConceptFeedback:Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
