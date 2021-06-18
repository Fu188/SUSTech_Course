.class public final Lclarifai2/api/request/feedback/AddModelFeedbackRequest;
.super Lclarifai2/api/request/ClarifaiRequest$Builder;
.source "AddModelFeedbackRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiRequest$Builder<",
        "Lcom/google/gson/JsonNull;",
        ">;"
    }
.end annotation


# instance fields
.field private final concepts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/feedback/ConceptFeedback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private endUserId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private eventType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private outputId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/feedback/RegionFeedback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private version:Lclarifai2/dto/model/ModelVersion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lclarifai2/api/BaseClarifaiClient;)V
    .locals 0
    .param p1    # Lclarifai2/api/BaseClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->concepts:Ljava/util/List;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->regions:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->concepts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->endUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->regions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Lclarifai2/dto/model/ModelVersion;
    .locals 0

    .line 25
    iget-object p0, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->version:Lclarifai2/dto/model/ModelVersion;

    return-object p0
.end method

.method static synthetic access$500(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->postRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->postRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Lclarifai2/api/BaseClarifaiClient;
    .locals 0

    .line 25
    iget-object p0, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->client:Lclarifai2/api/BaseClarifaiClient;

    return-object p0
.end method

.method static synthetic access$800(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->outputId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->eventType:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
            "Lcom/google/gson/JsonNull;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 95
    new-instance v0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;-><init>(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)V

    return-object v0
.end method

.method public withConcepts(Ljava/util/Collection;)Lclarifai2/api/request/feedback/AddModelFeedbackRequest;
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
            "Lclarifai2/api/request/feedback/AddModelFeedbackRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 56
    iget-object v0, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->concepts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs withConcepts([Lclarifai2/dto/feedback/ConceptFeedback;)Lclarifai2/api/request/feedback/AddModelFeedbackRequest;
    .locals 0
    .param p1    # [Lclarifai2/dto/feedback/ConceptFeedback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 52
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->withConcepts(Ljava/util/Collection;)Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    move-result-object p0

    return-object p0
.end method

.method public withEndUserId(Ljava/lang/String;)Lclarifai2/api/request/feedback/AddModelFeedbackRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 75
    iput-object p1, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->endUserId:Ljava/lang/String;

    return-object p0
.end method

.method public withEventType(Ljava/lang/String;)Lclarifai2/api/request/feedback/AddModelFeedbackRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 85
    iput-object p1, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->eventType:Ljava/lang/String;

    return-object p0
.end method

.method public withId(Ljava/lang/String;)Lclarifai2/api/request/feedback/AddModelFeedbackRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    iput-object p1, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->id:Ljava/lang/String;

    return-object p0
.end method

.method public withImageUrl(Ljava/lang/String;)Lclarifai2/api/request/feedback/AddModelFeedbackRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 47
    iput-object p1, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public withOutputId(Ljava/lang/String;)Lclarifai2/api/request/feedback/AddModelFeedbackRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 90
    iput-object p1, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->outputId:Ljava/lang/String;

    return-object p0
.end method

.method public withRegions(Ljava/util/Collection;)Lclarifai2/api/request/feedback/AddModelFeedbackRequest;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lclarifai2/dto/feedback/RegionFeedback;",
            ">;)",
            "Lclarifai2/api/request/feedback/AddModelFeedbackRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 65
    iget-object v0, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->regions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs withRegions([Lclarifai2/dto/feedback/RegionFeedback;)Lclarifai2/api/request/feedback/AddModelFeedbackRequest;
    .locals 0
    .param p1    # [Lclarifai2/dto/feedback/RegionFeedback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 61
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->withRegions(Ljava/util/Collection;)Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    move-result-object p0

    return-object p0
.end method

.method public withSessionId(Ljava/lang/String;)Lclarifai2/api/request/feedback/AddModelFeedbackRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 80
    iput-object p1, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public withVersion(Lclarifai2/dto/model/ModelVersion;)Lclarifai2/api/request/feedback/AddModelFeedbackRequest;
    .locals 0
    .param p1    # Lclarifai2/dto/model/ModelVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 70
    iput-object p1, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->version:Lclarifai2/dto/model/ModelVersion;

    return-object p0
.end method
