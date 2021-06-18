.class public final Lclarifai2/api/request/concept/GetConceptsRequest;
.super Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;
.source "GetConceptsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder<",
        "Ljava/util/List<",
        "Lclarifai2/dto/prediction/Concept;",
        ">;",
        "Lclarifai2/api/request/concept/GetConceptsRequest;",
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

    .line 19
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-void
.end method


# virtual methods
.method protected buildRequest(I)Lokhttp3/Request;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "/v2/concepts"

    .line 37
    invoke-virtual {p0, v1, p1}, Lclarifai2/api/request/concept/GetConceptsRequest;->buildURL(Ljava/lang/String;I)Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p0

    .line 39
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
            "Lclarifai2/dto/prediction/Concept;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    new-instance v0, Lclarifai2/api/request/concept/GetConceptsRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/concept/GetConceptsRequest$1;-><init>(Lclarifai2/api/request/concept/GetConceptsRequest;)V

    return-object v0
.end method
