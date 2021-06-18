.class public final Lclarifai2/api/request/model/GetModelInputsRequest;
.super Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;
.source "GetModelInputsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder<",
        "Ljava/util/List<",
        "Lclarifai2/dto/input/ClarifaiInput;",
        ">;",
        "Lclarifai2/api/request/model/GetModelInputsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final modelID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private modelVersionID:Ljava/lang/String;
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

    .line 26
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    .line 27
    iput-object p2, p0, Lclarifai2/api/request/model/GetModelInputsRequest;->modelID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected buildRequest(I)Lokhttp3/Request;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/v2/models/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lclarifai2/api/request/model/GetModelInputsRequest;->modelID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lclarifai2/api/request/model/GetModelInputsRequest;->modelVersionID:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "/versions/"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/api/request/model/GetModelInputsRequest;->modelVersionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "/inputs"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lclarifai2/api/request/model/GetModelInputsRequest;->buildURL(Ljava/lang/String;I)Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public fromSpecificModelVersion(Lclarifai2/dto/model/ModelVersion;)Lclarifai2/api/request/model/GetModelInputsRequest;
    .locals 0
    .param p1    # Lclarifai2/dto/model/ModelVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    invoke-virtual {p1}, Lclarifai2/dto/model/ModelVersion;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/api/request/model/GetModelInputsRequest;->fromSpecificModelVersion(Ljava/lang/String;)Lclarifai2/api/request/model/GetModelInputsRequest;

    move-result-object p0

    return-object p0
.end method

.method public fromSpecificModelVersion(Ljava/lang/String;)Lclarifai2/api/request/model/GetModelInputsRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    iput-object p1, p0, Lclarifai2/api/request/model/GetModelInputsRequest;->modelVersionID:Ljava/lang/String;

    return-object p0
.end method

.method protected unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONUnmarshaler<",
            "Ljava/util/List<",
            "Lclarifai2/dto/input/ClarifaiInput;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 40
    new-instance v0, Lclarifai2/api/request/model/GetModelInputsRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/GetModelInputsRequest$1;-><init>(Lclarifai2/api/request/model/GetModelInputsRequest;)V

    return-object v0
.end method
