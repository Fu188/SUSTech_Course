.class public abstract Lclarifai2/dto/feedback/RegionFeedback;
.super Ljava/lang/Object;
.source "RegionFeedback.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/feedback/RegionFeedback$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/feedback/RegionFeedback$Adapter;
    }
.end annotation


# instance fields
.field private conceptFeedbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lclarifai2/dto/feedback/ConceptFeedback;",
            ">;"
        }
    .end annotation
.end field

.field private faceFeedback:Lclarifai2/dto/feedback/FaceFeedback;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lclarifai2/dto/feedback/RegionFeedback;->conceptFeedbacks:Ljava/util/Collection;

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lclarifai2/dto/feedback/RegionFeedback;->faceFeedback:Lclarifai2/dto/feedback/FaceFeedback;

    return-void
.end method

.method static synthetic access$000(Lclarifai2/dto/feedback/RegionFeedback;)Ljava/util/Collection;
    .locals 0

    .line 31
    iget-object p0, p0, Lclarifai2/dto/feedback/RegionFeedback;->conceptFeedbacks:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$100(Lclarifai2/dto/feedback/RegionFeedback;)Lclarifai2/dto/feedback/FaceFeedback;
    .locals 0

    .line 31
    iget-object p0, p0, Lclarifai2/dto/feedback/RegionFeedback;->faceFeedback:Lclarifai2/dto/feedback/FaceFeedback;

    return-object p0
.end method

.method public static make(Lclarifai2/dto/input/Crop;Lclarifai2/api/request/feedback/Feedback;)Lclarifai2/dto/feedback/RegionFeedback;
    .locals 1
    .param p0    # Lclarifai2/dto/input/Crop;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lclarifai2/api/request/feedback/Feedback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    new-instance v0, Lclarifai2/dto/feedback/AutoValue_RegionFeedback;

    invoke-direct {v0, p0, p1}, Lclarifai2/dto/feedback/AutoValue_RegionFeedback;-><init>(Lclarifai2/dto/input/Crop;Lclarifai2/api/request/feedback/Feedback;)V

    return-object v0
.end method


# virtual methods
.method public abstract crop()Lclarifai2/dto/input/Crop;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract feedback()Lclarifai2/api/request/feedback/Feedback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public withConceptFeedbacks(Ljava/util/Collection;)Lclarifai2/dto/feedback/RegionFeedback;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lclarifai2/dto/feedback/ConceptFeedback;",
            ">;)",
            "Lclarifai2/dto/feedback/RegionFeedback;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 49
    iget-object v0, p0, Lclarifai2/dto/feedback/RegionFeedback;->conceptFeedbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs withConceptFeedbacks([Lclarifai2/dto/feedback/ConceptFeedback;)Lclarifai2/dto/feedback/RegionFeedback;
    .locals 0
    .param p1    # [Lclarifai2/dto/feedback/ConceptFeedback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 45
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/dto/feedback/RegionFeedback;->withConceptFeedbacks(Ljava/util/Collection;)Lclarifai2/dto/feedback/RegionFeedback;

    move-result-object p0

    return-object p0
.end method

.method public withFaceFeedback(Lclarifai2/dto/feedback/FaceFeedback;)Lclarifai2/dto/feedback/RegionFeedback;
    .locals 0
    .param p1    # Lclarifai2/dto/feedback/FaceFeedback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 54
    iput-object p1, p0, Lclarifai2/dto/feedback/RegionFeedback;->faceFeedback:Lclarifai2/dto/feedback/FaceFeedback;

    return-object p0
.end method
