.class public final Lclarifai2/api/request/input/GetInputsRequest;
.super Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;
.source "GetInputsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder<",
        "Ljava/util/List<",
        "Lclarifai2/dto/input/ClarifaiInput;",
        ">;",
        "Lclarifai2/api/request/input/GetInputsRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lclarifai2/api/BaseClarifaiClient;)V
    .locals 0
    .param p1    # Lclarifai2/api/BaseClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-void
.end method


# virtual methods
.method protected buildRequest(I)Lokhttp3/Request;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "/v2/inputs"

    .line 36
    invoke-virtual {p0, v1, p1}, Lclarifai2/api/request/input/GetInputsRequest;->buildURL(Ljava/lang/String;I)Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p0

    .line 38
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
            "Lclarifai2/dto/input/ClarifaiInput;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 22
    new-instance v0, Lclarifai2/api/request/input/GetInputsRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/GetInputsRequest$1;-><init>(Lclarifai2/api/request/input/GetInputsRequest;)V

    return-object v0
.end method
