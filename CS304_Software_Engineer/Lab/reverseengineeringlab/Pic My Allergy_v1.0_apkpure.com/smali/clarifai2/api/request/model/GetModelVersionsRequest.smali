.class public final Lclarifai2/api/request/model/GetModelVersionsRequest;
.super Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;
.source "GetModelVersionsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder<",
        "Ljava/util/List<",
        "Lclarifai2/dto/model/ModelVersion;",
        ">;",
        "Lclarifai2/api/request/model/GetModelVersionsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final modelID:Ljava/lang/String;
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

    .line 22
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    .line 23
    iput-object p2, p0, Lclarifai2/api/request/model/GetModelVersionsRequest;->modelID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected buildRequest(I)Lokhttp3/Request;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 40
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/v2/models/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lclarifai2/api/request/model/GetModelVersionsRequest;->modelID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/versions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {p0, v1, p1}, Lclarifai2/api/request/model/GetModelVersionsRequest;->buildURL(Ljava/lang/String;I)Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method protected unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONUnmarshaler<",
            "Ljava/util/List<",
            "Lclarifai2/dto/model/ModelVersion;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    new-instance v0, Lclarifai2/api/request/model/GetModelVersionsRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/GetModelVersionsRequest$1;-><init>(Lclarifai2/api/request/model/GetModelVersionsRequest;)V

    return-object v0
.end method
