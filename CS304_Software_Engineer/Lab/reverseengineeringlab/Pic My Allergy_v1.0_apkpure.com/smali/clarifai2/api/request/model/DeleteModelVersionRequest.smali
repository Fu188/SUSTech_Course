.class public final Lclarifai2/api/request/model/DeleteModelVersionRequest;
.super Lclarifai2/api/request/ClarifaiRequest$Builder;
.source "DeleteModelVersionRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiRequest$Builder<",
        "Ljava/util/List<",
        "Lclarifai2/dto/model/ModelVersion;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final modelID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final versionID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lclarifai2/api/BaseClarifaiClient;
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

    .line 26
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    .line 27
    iput-object p2, p0, Lclarifai2/api/request/model/DeleteModelVersionRequest;->modelID:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lclarifai2/api/request/model/DeleteModelVersionRequest;->versionID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/model/DeleteModelVersionRequest;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lclarifai2/api/request/model/DeleteModelVersionRequest;->modelID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lclarifai2/api/request/model/DeleteModelVersionRequest;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lclarifai2/api/request/model/DeleteModelVersionRequest;->versionID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lclarifai2/api/request/model/DeleteModelVersionRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/model/DeleteModelVersionRequest;->deleteRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

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
            "Lclarifai2/dto/model/ModelVersion;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    new-instance v0, Lclarifai2/api/request/model/DeleteModelVersionRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/DeleteModelVersionRequest$1;-><init>(Lclarifai2/api/request/model/DeleteModelVersionRequest;)V

    return-object v0
.end method
