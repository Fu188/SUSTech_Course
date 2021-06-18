.class public abstract Lclarifai2/dto/model/Model;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lclarifai2/dto/HasClarifaiIDRequired;


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/model/Model$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/model/Model$Adapter;,
        Lclarifai2/dto/model/Model$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PREDICTION:",
        "Lclarifai2/dto/prediction/Prediction;",
        ">",
        "Ljava/lang/Object;",
        "Lclarifai2/dto/HasClarifaiIDRequired;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _create(Lclarifai2/dto/model/ModelType;Lclarifai2/api/ClarifaiClient;Ljava/lang/String;Ljava/lang/String;Lclarifai2/dto/model/output_info/OutputInfo;)Lclarifai2/dto/model/Model;
    .locals 0
    .param p0    # Lclarifai2/dto/model/ModelType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lclarifai2/api/ClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lclarifai2/dto/model/output_info/OutputInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lclarifai2/dto/model/Model<",
            "*>;>(",
            "Lclarifai2/dto/model/ModelType;",
            "Lclarifai2/api/ClarifaiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lclarifai2/dto/model/output_info/OutputInfo;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 47
    invoke-static {p0}, Lclarifai2/dto/model/Model;->getBuilder(Lclarifai2/dto/model/ModelType;)Lclarifai2/dto/model/Model$Builder;

    move-result-object p0

    .line 48
    invoke-interface {p0, p1}, Lclarifai2/dto/model/Model$Builder;->client(Lclarifai2/api/ClarifaiClient;)Lclarifai2/dto/model/Model$Builder;

    move-result-object p0

    .line 49
    invoke-interface {p0, p2}, Lclarifai2/dto/model/Model$Builder;->id(Ljava/lang/String;)Lclarifai2/dto/model/Model$Builder;

    move-result-object p0

    .line 50
    invoke-interface {p0, p3}, Lclarifai2/dto/model/Model$Builder;->name(Ljava/lang/String;)Lclarifai2/dto/model/Model$Builder;

    move-result-object p0

    .line 51
    invoke-interface {p0, p4}, Lclarifai2/dto/model/Model$Builder;->_outputInfo(Lclarifai2/dto/model/output_info/OutputInfo;)Lclarifai2/dto/model/Model$Builder;

    move-result-object p0

    .line 52
    invoke-interface {p0}, Lclarifai2/dto/model/Model$Builder;->build()Lclarifai2/dto/model/Model;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lclarifai2/dto/model/ModelType;)Lclarifai2/dto/model/Model$Builder;
    .locals 0

    .line 34
    invoke-static {p0}, Lclarifai2/dto/model/Model;->getBuilder(Lclarifai2/dto/model/ModelType;)Lclarifai2/dto/model/Model$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static getBuilder(Lclarifai2/dto/model/ModelType;)Lclarifai2/dto/model/Model$Builder;
    .locals 1
    .param p0    # Lclarifai2/dto/model/ModelType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/dto/model/ModelType;",
            ")",
            "Lclarifai2/dto/model/Model$Builder<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 56
    sget-object v0, Lclarifai2/dto/model/Model$1;->$SwitchMap$clarifai2$dto$model$ModelType:[I

    invoke-virtual {p0}, Lclarifai2/dto/model/ModelType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 76
    new-instance p0, Lclarifai2/dto/model/$AutoValue_UnknownModel$Builder;

    invoke-direct {p0}, Lclarifai2/dto/model/$AutoValue_UnknownModel$Builder;-><init>()V

    return-object p0

    .line 74
    :pswitch_0
    new-instance p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;

    invoke-direct {p0}, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;-><init>()V

    return-object p0

    .line 72
    :pswitch_1
    new-instance p0, Lclarifai2/dto/model/$AutoValue_DemographicsModel$Builder;

    invoke-direct {p0}, Lclarifai2/dto/model/$AutoValue_DemographicsModel$Builder;-><init>()V

    return-object p0

    .line 70
    :pswitch_2
    new-instance p0, Lclarifai2/dto/model/$AutoValue_FaceDetectionModel$Builder;

    invoke-direct {p0}, Lclarifai2/dto/model/$AutoValue_FaceDetectionModel$Builder;-><init>()V

    return-object p0

    .line 68
    :pswitch_3
    new-instance p0, Lclarifai2/dto/model/$AutoValue_LogoModel$Builder;

    invoke-direct {p0}, Lclarifai2/dto/model/$AutoValue_LogoModel$Builder;-><init>()V

    return-object p0

    .line 66
    :pswitch_4
    new-instance p0, Lclarifai2/dto/model/$AutoValue_EmbeddingModel$Builder;

    invoke-direct {p0}, Lclarifai2/dto/model/$AutoValue_EmbeddingModel$Builder;-><init>()V

    return-object p0

    .line 64
    :pswitch_5
    new-instance p0, Lclarifai2/dto/model/$AutoValue_ColorModel$Builder;

    invoke-direct {p0}, Lclarifai2/dto/model/$AutoValue_ColorModel$Builder;-><init>()V

    return-object p0

    .line 62
    :pswitch_6
    new-instance p0, Lclarifai2/dto/model/$AutoValue_ClusterModel$Builder;

    invoke-direct {p0}, Lclarifai2/dto/model/$AutoValue_ClusterModel$Builder;-><init>()V

    return-object p0

    .line 60
    :pswitch_7
    new-instance p0, Lclarifai2/dto/model/$AutoValue_FocusModel$Builder;

    invoke-direct {p0}, Lclarifai2/dto/model/$AutoValue_FocusModel$Builder;-><init>()V

    return-object p0

    .line 58
    :pswitch_8
    new-instance p0, Lclarifai2/dto/model/$AutoValue_ConceptModel$Builder;

    invoke-direct {p0}, Lclarifai2/dto/model/$AutoValue_ConceptModel$Builder;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method abstract _outputInfo()Lclarifai2/dto/model/output_info/OutputInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract appID()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final asClusterModel()Lclarifai2/dto/model/ClusterModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 125
    check-cast p0, Lclarifai2/dto/model/ClusterModel;

    return-object p0
.end method

.method public final asColorModel()Lclarifai2/dto/model/ColorModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 93
    check-cast p0, Lclarifai2/dto/model/ColorModel;

    return-object p0
.end method

.method public final asConceptModel()Lclarifai2/dto/model/ConceptModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 85
    check-cast p0, Lclarifai2/dto/model/ConceptModel;

    return-object p0
.end method

.method public final asEmbeddingModel()Lclarifai2/dto/model/EmbeddingModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 109
    check-cast p0, Lclarifai2/dto/model/EmbeddingModel;

    return-object p0
.end method

.method public final asFaceDetectionModel()Lclarifai2/dto/model/FaceDetectionModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 101
    check-cast p0, Lclarifai2/dto/model/FaceDetectionModel;

    return-object p0
.end method

.method public final asFocusModel()Lclarifai2/dto/model/FocusModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 117
    check-cast p0, Lclarifai2/dto/model/FocusModel;

    return-object p0
.end method

.method abstract client()Lclarifai2/api/ClarifaiClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract createdAt()Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final deleteVersion(Lclarifai2/dto/model/ModelVersion;)Lclarifai2/api/request/ClarifaiRequest;
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
            "Lclarifai2/api/request/ClarifaiRequest<",
            "Ljava/util/List<",
            "Lclarifai2/dto/model/ModelVersion;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 162
    invoke-virtual {p1}, Lclarifai2/dto/model/ModelVersion;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/dto/model/Model;->deleteVersion(Ljava/lang/String;)Lclarifai2/api/request/ClarifaiRequest;

    move-result-object p0

    return-object p0
.end method

.method public final deleteVersion(Ljava/lang/String;)Lclarifai2/api/request/ClarifaiRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lclarifai2/api/request/ClarifaiRequest<",
            "Ljava/util/List<",
            "Lclarifai2/dto/model/ModelVersion;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 166
    invoke-virtual {p0}, Lclarifai2/dto/model/Model;->client()Lclarifai2/api/ClarifaiClient;

    move-result-object v0

    invoke-virtual {p0}, Lclarifai2/dto/model/Model;->id()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lclarifai2/api/ClarifaiClient;->deleteModelVersion(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/api/request/model/DeleteModelVersionRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getInputs()Lclarifai2/api/request/model/GetModelInputsRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 145
    invoke-virtual {p0}, Lclarifai2/dto/model/Model;->client()Lclarifai2/api/ClarifaiClient;

    move-result-object v0

    invoke-virtual {p0}, Lclarifai2/dto/model/Model;->id()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lclarifai2/api/ClarifaiClient;->getModelInputs(Ljava/lang/String;)Lclarifai2/api/request/model/GetModelInputsRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getVersionByID(Ljava/lang/String;)Lclarifai2/api/request/ClarifaiRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lclarifai2/api/request/ClarifaiRequest<",
            "Lclarifai2/dto/model/ModelVersion;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 158
    invoke-virtual {p0}, Lclarifai2/dto/model/Model;->client()Lclarifai2/api/ClarifaiClient;

    move-result-object v0

    invoke-virtual {p0}, Lclarifai2/dto/model/Model;->id()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lclarifai2/api/ClarifaiClient;->getModelVersionByID(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/api/request/model/GetModelVersionRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getVersions()Lclarifai2/api/request/ClarifaiPaginatedRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/api/request/ClarifaiPaginatedRequest<",
            "Ljava/util/List<",
            "Lclarifai2/dto/model/ModelVersion;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 149
    invoke-virtual {p0}, Lclarifai2/dto/model/Model;->client()Lclarifai2/api/ClarifaiClient;

    move-result-object v0

    invoke-virtual {p0}, Lclarifai2/dto/model/Model;->id()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lclarifai2/api/ClarifaiClient;->getModelVersions(Ljava/lang/String;)Lclarifai2/api/request/model/GetModelVersionsRequest;

    move-result-object p0

    return-object p0
.end method

.method public final isClusterModel()Z
    .locals 0

    .line 121
    instance-of p0, p0, Lclarifai2/dto/model/ClusterModel;

    return p0
.end method

.method public final isColorModel()Z
    .locals 0

    .line 89
    instance-of p0, p0, Lclarifai2/dto/model/ColorModel;

    return p0
.end method

.method public final isConceptModel()Z
    .locals 0

    .line 81
    instance-of p0, p0, Lclarifai2/dto/model/ConceptModel;

    return p0
.end method

.method public final isEmbeddingModel()Z
    .locals 0

    .line 105
    instance-of p0, p0, Lclarifai2/dto/model/EmbeddingModel;

    return p0
.end method

.method public final isFaceDetectionModel()Z
    .locals 0

    .line 97
    instance-of p0, p0, Lclarifai2/dto/model/FaceDetectionModel;

    return p0
.end method

.method public final isFocusModel()Z
    .locals 0

    .line 113
    instance-of p0, p0, Lclarifai2/dto/model/FocusModel;

    return p0
.end method

.method public abstract modelType()Lclarifai2/dto/model/ModelType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract modelVersion()Lclarifai2/dto/model/ModelVersion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract name()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract outputInfo()Lclarifai2/dto/model/output_info/OutputInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final predict()Lclarifai2/api/request/model/PredictRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/api/request/model/PredictRequest<",
            "TPREDICTION;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 154
    invoke-virtual {p0}, Lclarifai2/dto/model/Model;->client()Lclarifai2/api/ClarifaiClient;

    move-result-object v0

    invoke-virtual {p0}, Lclarifai2/dto/model/Model;->id()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lclarifai2/api/ClarifaiClient;->predict(Ljava/lang/String;)Lclarifai2/api/request/model/PredictRequest;

    move-result-object p0

    return-object p0
.end method

.method public final train()Lclarifai2/api/request/model/TrainModelRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 170
    invoke-virtual {p0}, Lclarifai2/dto/model/Model;->client()Lclarifai2/api/ClarifaiClient;

    move-result-object v0

    invoke-virtual {p0}, Lclarifai2/dto/model/Model;->id()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lclarifai2/api/ClarifaiClient;->trainModel(Ljava/lang/String;)Lclarifai2/api/request/model/TrainModelRequest;

    move-result-object p0

    return-object p0
.end method
