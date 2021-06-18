.class public abstract Lclarifai2/dto/feedback/FaceFeedback;
.super Ljava/lang/Object;
.source "FaceFeedback.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/feedback/FaceFeedback$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/feedback/FaceFeedback$Adapter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static make(Ljava/util/Collection;Ljava/util/Collection;)Lclarifai2/dto/feedback/FaceFeedback;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lclarifai2/dto/feedback/ConceptFeedback;",
            ">;",
            "Ljava/util/Collection<",
            "Lclarifai2/dto/feedback/ConceptFeedback;",
            ">;)",
            "Lclarifai2/dto/feedback/FaceFeedback;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    new-instance v0, Lclarifai2/dto/feedback/AutoValue_FaceFeedback;

    invoke-direct {v0, p0, p1}, Lclarifai2/dto/feedback/AutoValue_FaceFeedback;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public abstract ageConceptFeedback()Ljava/util/Collection;
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
.end method

.method public abstract identityConceptFeedback()Ljava/util/Collection;
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
.end method
