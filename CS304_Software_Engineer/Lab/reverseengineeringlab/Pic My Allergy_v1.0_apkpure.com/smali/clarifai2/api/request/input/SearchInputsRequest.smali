.class public final Lclarifai2/api/request/input/SearchInputsRequest;
.super Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;
.source "SearchInputsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder<",
        "Ljava/util/List<",
        "Lclarifai2/dto/input/SearchHit;",
        ">;",
        "Lclarifai2/api/request/input/SearchInputsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final andClauses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/api/request/input/SearchClause;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lclarifai2/api/BaseClarifaiClient;Ljava/util/List;)V
    .locals 0
    .param p1    # Lclarifai2/api/BaseClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/api/BaseClarifaiClient;",
            "Ljava/util/List<",
            "Lclarifai2/api/request/input/SearchClause;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lclarifai2/api/request/input/SearchInputsRequest;->andClauses:Ljava/util/List;

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lclarifai2/api/request/input/SearchInputsRequest;->language:Ljava/lang/String;

    .line 32
    iget-object p0, p0, Lclarifai2/api/request/input/SearchInputsRequest;->andClauses:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/input/SearchInputsRequest;)Lcom/google/gson/Gson;
    .locals 0

    .line 24
    iget-object p0, p0, Lclarifai2/api/request/input/SearchInputsRequest;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method


# virtual methods
.method public and(Lclarifai2/api/request/input/SearchClause;)Lclarifai2/api/request/input/SearchInputsRequest;
    .locals 1
    .param p1    # Lclarifai2/api/request/input/SearchClause;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 60
    iget-object v0, p0, Lclarifai2/api/request/input/SearchInputsRequest;->andClauses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public ands(Ljava/util/Collection;)Lclarifai2/api/request/input/SearchInputsRequest;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lclarifai2/api/request/input/SearchClause;",
            ">;)",
            "Lclarifai2/api/request/input/SearchInputsRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 71
    iget-object v0, p0, Lclarifai2/api/request/input/SearchInputsRequest;->andClauses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs ands([Lclarifai2/api/request/input/SearchClause;)Lclarifai2/api/request/input/SearchInputsRequest;
    .locals 0
    .param p1    # [Lclarifai2/api/request/input/SearchClause;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 82
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/api/request/input/SearchInputsRequest;->ands(Ljava/util/Collection;)Lclarifai2/api/request/input/SearchInputsRequest;

    move-result-object p0

    return-object p0
.end method

.method protected buildRequest(I)Lokhttp3/Request;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 87
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    .line 88
    new-instance v1, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v1}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v2, "ands"

    .line 89
    new-instance v3, Lclarifai2/internal/JSONArrayBuilder;

    invoke-direct {v3}, Lclarifai2/internal/JSONArrayBuilder;-><init>()V

    iget-object v4, p0, Lclarifai2/api/request/input/SearchInputsRequest;->andClauses:Ljava/util/List;

    new-instance v5, Lclarifai2/api/request/input/SearchInputsRequest$2;

    invoke-direct {v5, p0}, Lclarifai2/api/request/input/SearchInputsRequest$2;-><init>(Lclarifai2/api/request/input/SearchInputsRequest;)V

    .line 90
    invoke-virtual {v3, v4, v5}, Lclarifai2/internal/JSONArrayBuilder;->addAll(Ljava/lang/Iterable;Lclarifai2/Func1;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object v3

    .line 89
    invoke-virtual {v1, v2, v3}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    .line 96
    iget-object v2, p0, Lclarifai2/api/request/input/SearchInputsRequest;->language:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "language"

    .line 97
    iget-object v3, p0, Lclarifai2/api/request/input/SearchInputsRequest;->language:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    :cond_0
    const-string v2, "query"

    .line 99
    invoke-virtual {v1}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    .line 100
    invoke-virtual {v0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 101
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    const-string v2, "/v2/searches"

    .line 102
    invoke-virtual {p0, v2, p1}, Lclarifai2/api/request/input/SearchInputsRequest;->buildURL(Ljava/lang/String;I)Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 103
    invoke-virtual {p0, v0, p1}, Lclarifai2/api/request/input/SearchInputsRequest;->toRequestBody(Lcom/google/gson/JsonObject;I)Lokhttp3/RequestBody;

    move-result-object p0

    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 104
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
            "Lclarifai2/dto/input/SearchHit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    new-instance v0, Lclarifai2/api/request/input/SearchInputsRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/SearchInputsRequest$1;-><init>(Lclarifai2/api/request/input/SearchInputsRequest;)V

    return-object v0
.end method

.method public withLanguage(Ljava/lang/String;)Lclarifai2/api/request/input/SearchInputsRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 49
    iput-object p1, p0, Lclarifai2/api/request/input/SearchInputsRequest;->language:Ljava/lang/String;

    return-object p0
.end method
