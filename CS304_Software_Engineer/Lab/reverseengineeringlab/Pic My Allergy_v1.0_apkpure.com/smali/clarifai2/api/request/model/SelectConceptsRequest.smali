.class public final Lclarifai2/api/request/model/SelectConceptsRequest;
.super Lclarifai2/api/request/ClarifaiRequest$Builder;
.source "SelectConceptsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PREDICTION:",
        "Lclarifai2/dto/prediction/Prediction;",
        ">",
        "Lclarifai2/api/request/ClarifaiRequest$Builder<",
        "Ljava/util/List<",
        "Lclarifai2/dto/model/output/ClarifaiOutput<",
        "TPREDICTION;>;>;>;"
    }
.end annotation


# instance fields
.field private final concepts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/input/ClarifaiURLImage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final modelID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private version:Lclarifai2/dto/model/ModelVersion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lclarifai2/api/BaseClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lclarifai2/api/request/model/SelectConceptsRequest;->images:Ljava/util/List;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lclarifai2/api/request/model/SelectConceptsRequest;->concepts:Ljava/util/List;

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lclarifai2/api/request/model/SelectConceptsRequest;->version:Lclarifai2/dto/model/ModelVersion;

    .line 43
    iput-object p2, p0, Lclarifai2/api/request/model/SelectConceptsRequest;->modelID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/model/SelectConceptsRequest;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lclarifai2/api/request/model/SelectConceptsRequest;->images:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lclarifai2/api/request/model/SelectConceptsRequest;)Lclarifai2/api/BaseClarifaiClient;
    .locals 0

    .line 33
    iget-object p0, p0, Lclarifai2/api/request/model/SelectConceptsRequest;->client:Lclarifai2/api/BaseClarifaiClient;

    return-object p0
.end method

.method static synthetic access$200(Lclarifai2/api/request/model/SelectConceptsRequest;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lclarifai2/api/request/model/SelectConceptsRequest;->concepts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lclarifai2/api/request/model/SelectConceptsRequest;)Lclarifai2/api/BaseClarifaiClient;
    .locals 0

    .line 33
    iget-object p0, p0, Lclarifai2/api/request/model/SelectConceptsRequest;->client:Lclarifai2/api/BaseClarifaiClient;

    return-object p0
.end method

.method static synthetic access$400(Lclarifai2/api/request/model/SelectConceptsRequest;)Lclarifai2/dto/model/ModelVersion;
    .locals 0

    .line 33
    iget-object p0, p0, Lclarifai2/api/request/model/SelectConceptsRequest;->version:Lclarifai2/dto/model/ModelVersion;

    return-object p0
.end method

.method static synthetic access$500(Lclarifai2/api/request/model/SelectConceptsRequest;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lclarifai2/api/request/model/SelectConceptsRequest;->modelID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lclarifai2/api/request/model/SelectConceptsRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/model/SelectConceptsRequest;->postRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lclarifai2/api/request/model/SelectConceptsRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/model/SelectConceptsRequest;->postRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
            "Ljava/util/List<",
            "Lclarifai2/dto/model/output/ClarifaiOutput<",
            "TPREDICTION;>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 70
    new-instance v0, Lclarifai2/api/request/model/SelectConceptsRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/SelectConceptsRequest$1;-><init>(Lclarifai2/api/request/model/SelectConceptsRequest;)V

    return-object v0
.end method

.method public withConcepts(Ljava/util/Collection;)Lclarifai2/api/request/model/SelectConceptsRequest;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;)",
            "Lclarifai2/api/request/model/SelectConceptsRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 60
    iget-object v0, p0, Lclarifai2/api/request/model/SelectConceptsRequest;->concepts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs withConcepts([Lclarifai2/dto/prediction/Concept;)Lclarifai2/api/request/model/SelectConceptsRequest;
    .locals 0
    .param p1    # [Lclarifai2/dto/prediction/Concept;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 56
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/api/request/model/SelectConceptsRequest;->withConcepts(Ljava/util/Collection;)Lclarifai2/api/request/model/SelectConceptsRequest;

    move-result-object p0

    return-object p0
.end method

.method public withImages(Ljava/util/Collection;)Lclarifai2/api/request/model/SelectConceptsRequest;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lclarifai2/dto/input/ClarifaiURLImage;",
            ">;)",
            "Lclarifai2/api/request/model/SelectConceptsRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 51
    iget-object v0, p0, Lclarifai2/api/request/model/SelectConceptsRequest;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs withImages([Lclarifai2/dto/input/ClarifaiURLImage;)Lclarifai2/api/request/model/SelectConceptsRequest;
    .locals 0
    .param p1    # [Lclarifai2/dto/input/ClarifaiURLImage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 47
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/api/request/model/SelectConceptsRequest;->withImages(Ljava/util/Collection;)Lclarifai2/api/request/model/SelectConceptsRequest;

    move-result-object p0

    return-object p0
.end method

.method public withVersion(Lclarifai2/dto/model/ModelVersion;)Lclarifai2/api/request/model/SelectConceptsRequest;
    .locals 0
    .param p1    # Lclarifai2/dto/model/ModelVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 65
    iput-object p1, p0, Lclarifai2/api/request/model/SelectConceptsRequest;->version:Lclarifai2/dto/model/ModelVersion;

    return-object p0
.end method
