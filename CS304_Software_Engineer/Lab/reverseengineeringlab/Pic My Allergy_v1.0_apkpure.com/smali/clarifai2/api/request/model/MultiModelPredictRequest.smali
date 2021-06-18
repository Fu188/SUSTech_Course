.class public final Lclarifai2/api/request/model/MultiModelPredictRequest;
.super Lclarifai2/api/request/ClarifaiRequest$Builder;
.source "MultiModelPredictRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PREDICTION:",
        "Lclarifai2/dto/prediction/Prediction;",
        ">",
        "Lclarifai2/api/request/ClarifaiRequest$Builder<",
        "Lclarifai2/dto/multimodel/WorkflowResult<",
        "TPREDICTION;>;>;"
    }
.end annotation


# instance fields
.field private final urlImages:Ljava/util/List;
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

.field private final workflowID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .line 37
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lclarifai2/api/request/model/MultiModelPredictRequest;->urlImages:Ljava/util/List;

    .line 38
    iput-object p2, p0, Lclarifai2/api/request/model/MultiModelPredictRequest;->workflowID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/model/MultiModelPredictRequest;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lclarifai2/api/request/model/MultiModelPredictRequest;->urlImages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lclarifai2/api/request/model/MultiModelPredictRequest;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lclarifai2/api/request/model/MultiModelPredictRequest;->workflowID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lclarifai2/api/request/model/MultiModelPredictRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/model/MultiModelPredictRequest;->postRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

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
            "Lclarifai2/dto/multimodel/WorkflowResult<",
            "TPREDICTION;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 51
    new-instance v0, Lclarifai2/api/request/model/MultiModelPredictRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/MultiModelPredictRequest$1;-><init>(Lclarifai2/api/request/model/MultiModelPredictRequest;)V

    return-object v0
.end method

.method public withUrlImages(Ljava/util/Collection;)Lclarifai2/api/request/model/MultiModelPredictRequest;
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
            "Lclarifai2/api/request/model/MultiModelPredictRequest<",
            "TPREDICTION;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    iget-object v0, p0, Lclarifai2/api/request/model/MultiModelPredictRequest;->urlImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs withUrlImages([Lclarifai2/dto/input/ClarifaiURLImage;)Lclarifai2/api/request/model/MultiModelPredictRequest;
    .locals 0
    .param p1    # [Lclarifai2/dto/input/ClarifaiURLImage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lclarifai2/dto/input/ClarifaiURLImage;",
            ")",
            "Lclarifai2/api/request/model/MultiModelPredictRequest<",
            "TPREDICTION;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/api/request/model/MultiModelPredictRequest;->withUrlImages(Ljava/util/Collection;)Lclarifai2/api/request/model/MultiModelPredictRequest;

    move-result-object p0

    return-object p0
.end method
