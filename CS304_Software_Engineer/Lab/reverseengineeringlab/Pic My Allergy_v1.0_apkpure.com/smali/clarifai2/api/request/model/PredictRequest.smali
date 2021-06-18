.class public final Lclarifai2/api/request/model/PredictRequest;
.super Lclarifai2/api/request/ClarifaiRequest$Builder;
.source "PredictRequest.java"


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
.field private final inputData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/input/ClarifaiInput;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private maxConcepts:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private minValue:Ljava/lang/Double;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

    .line 40
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lclarifai2/api/request/model/PredictRequest;->inputData:Ljava/util/List;

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lclarifai2/api/request/model/PredictRequest;->version:Lclarifai2/dto/model/ModelVersion;

    .line 34
    iput-object p1, p0, Lclarifai2/api/request/model/PredictRequest;->language:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lclarifai2/api/request/model/PredictRequest;->minValue:Ljava/lang/Double;

    .line 37
    iput-object p1, p0, Lclarifai2/api/request/model/PredictRequest;->maxConcepts:Ljava/lang/Integer;

    .line 41
    iput-object p2, p0, Lclarifai2/api/request/model/PredictRequest;->modelID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/model/PredictRequest;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lclarifai2/api/request/model/PredictRequest;->inputData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lclarifai2/api/request/model/PredictRequest;)Lclarifai2/api/BaseClarifaiClient;
    .locals 0

    .line 27
    iget-object p0, p0, Lclarifai2/api/request/model/PredictRequest;->client:Lclarifai2/api/BaseClarifaiClient;

    return-object p0
.end method

.method static synthetic access$200(Lclarifai2/api/request/model/PredictRequest;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lclarifai2/api/request/model/PredictRequest;->language:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lclarifai2/api/request/model/PredictRequest;)Ljava/lang/Double;
    .locals 0

    .line 27
    iget-object p0, p0, Lclarifai2/api/request/model/PredictRequest;->minValue:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$400(Lclarifai2/api/request/model/PredictRequest;)Ljava/lang/Integer;
    .locals 0

    .line 27
    iget-object p0, p0, Lclarifai2/api/request/model/PredictRequest;->maxConcepts:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$500(Lclarifai2/api/request/model/PredictRequest;)Lclarifai2/dto/model/ModelVersion;
    .locals 0

    .line 27
    iget-object p0, p0, Lclarifai2/api/request/model/PredictRequest;->version:Lclarifai2/dto/model/ModelVersion;

    return-object p0
.end method

.method static synthetic access$600(Lclarifai2/api/request/model/PredictRequest;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lclarifai2/api/request/model/PredictRequest;->modelID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lclarifai2/api/request/model/PredictRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/model/PredictRequest;->postRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lclarifai2/api/request/model/PredictRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/model/PredictRequest;->postRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

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

    .line 74
    new-instance v0, Lclarifai2/api/request/model/PredictRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/PredictRequest$1;-><init>(Lclarifai2/api/request/model/PredictRequest;)V

    return-object v0
.end method

.method public withInputs(Ljava/util/Collection;)Lclarifai2/api/request/model/PredictRequest;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lclarifai2/dto/input/ClarifaiInput;",
            ">;)",
            "Lclarifai2/api/request/model/PredictRequest<",
            "TPREDICTION;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 49
    iget-object v0, p0, Lclarifai2/api/request/model/PredictRequest;->inputData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs withInputs([Lclarifai2/dto/input/ClarifaiInput;)Lclarifai2/api/request/model/PredictRequest;
    .locals 0
    .param p1    # [Lclarifai2/dto/input/ClarifaiInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lclarifai2/dto/input/ClarifaiInput;",
            ")",
            "Lclarifai2/api/request/model/PredictRequest<",
            "TPREDICTION;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 45
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/api/request/model/PredictRequest;->withInputs(Ljava/util/Collection;)Lclarifai2/api/request/model/PredictRequest;

    move-result-object p0

    return-object p0
.end method

.method public withLanguage(Ljava/lang/String;)Lclarifai2/api/request/model/PredictRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lclarifai2/api/request/model/PredictRequest<",
            "TPREDICTION;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 59
    iput-object p1, p0, Lclarifai2/api/request/model/PredictRequest;->language:Ljava/lang/String;

    return-object p0
.end method

.method public final withMaxConcepts(Ljava/lang/Integer;)Lclarifai2/api/request/model/PredictRequest;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lclarifai2/api/request/model/PredictRequest<",
            "TPREDICTION;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 69
    iput-object p1, p0, Lclarifai2/api/request/model/PredictRequest;->maxConcepts:Ljava/lang/Integer;

    return-object p0
.end method

.method public final withMinValue(Ljava/lang/Double;)Lclarifai2/api/request/model/PredictRequest;
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            ")",
            "Lclarifai2/api/request/model/PredictRequest<",
            "TPREDICTION;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 64
    iput-object p1, p0, Lclarifai2/api/request/model/PredictRequest;->minValue:Ljava/lang/Double;

    return-object p0
.end method

.method public withVersion(Lclarifai2/dto/model/ModelVersion;)Lclarifai2/api/request/model/PredictRequest;
    .locals 0
    .param p1    # Lclarifai2/dto/model/ModelVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/dto/model/ModelVersion;",
            ")",
            "Lclarifai2/api/request/model/PredictRequest<",
            "TPREDICTION;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 54
    iput-object p1, p0, Lclarifai2/api/request/model/PredictRequest;->version:Lclarifai2/dto/model/ModelVersion;

    return-object p0
.end method
