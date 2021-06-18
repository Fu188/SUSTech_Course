.class public final Lclarifai2/api/request/concept/SearchConceptsRequest;
.super Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;
.source "SearchConceptsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder<",
        "Ljava/util/List<",
        "Lclarifai2/dto/prediction/Concept;",
        ">;",
        "Lclarifai2/api/request/concept/SearchConceptsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final conceptSearchQuery:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private language:Ljava/lang/String;
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

    .line 28
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lclarifai2/api/request/concept/SearchConceptsRequest;->language:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lclarifai2/api/request/concept/SearchConceptsRequest;->conceptSearchQuery:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected buildRequest(I)Lokhttp3/Request;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 51
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    .line 52
    new-instance v1, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v1}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v2, "name"

    .line 53
    iget-object v3, p0, Lclarifai2/api/request/concept/SearchConceptsRequest;->conceptSearchQuery:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    .line 54
    iget-object v2, p0, Lclarifai2/api/request/concept/SearchConceptsRequest;->language:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "language"

    .line 55
    iget-object v3, p0, Lclarifai2/api/request/concept/SearchConceptsRequest;->language:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    :cond_0
    const-string v2, "concept_query"

    .line 57
    invoke-virtual {v1}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    .line 58
    invoke-virtual {v0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 60
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 61
    invoke-virtual {p0, v0, p1}, Lclarifai2/api/request/concept/SearchConceptsRequest;->toRequestBody(Lcom/google/gson/JsonObject;I)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "/v2/concepts/searches"

    .line 62
    invoke-virtual {p0, v1, p1}, Lclarifai2/api/request/concept/SearchConceptsRequest;->buildURL(Ljava/lang/String;I)Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 63
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

    .line 38
    new-instance v0, Lclarifai2/api/request/concept/SearchConceptsRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/concept/SearchConceptsRequest$1;-><init>(Lclarifai2/api/request/concept/SearchConceptsRequest;)V

    return-object v0
.end method

.method public withLanguage(Ljava/lang/String;)Lclarifai2/api/request/concept/SearchConceptsRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 33
    iput-object p1, p0, Lclarifai2/api/request/concept/SearchConceptsRequest;->language:Ljava/lang/String;

    return-object p0
.end method
