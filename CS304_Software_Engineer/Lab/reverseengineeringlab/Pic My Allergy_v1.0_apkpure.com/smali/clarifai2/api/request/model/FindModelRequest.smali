.class public final Lclarifai2/api/request/model/FindModelRequest;
.super Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;
.source "FindModelRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder<",
        "Ljava/util/List<",
        "Lclarifai2/dto/model/Model<",
        "*>;>;",
        "Lclarifai2/api/request/model/FindModelRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private modelType:Lclarifai2/dto/model/ModelType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lclarifai2/api/BaseClarifaiClient;)V
    .locals 0
    .param p1    # Lclarifai2/api/BaseClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-void
.end method


# virtual methods
.method protected buildRequest(I)Lokhttp3/Request;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "model_query"

    new-instance v2, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v2}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v3, "name"

    iget-object v4, p0, Lclarifai2/api/request/model/FindModelRequest;->name:Ljava/lang/String;

    .line 55
    invoke-virtual {v2, v3, v4}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v2

    const-string v3, "type"

    iget-object v4, p0, Lclarifai2/api/request/model/FindModelRequest;->modelType:Lclarifai2/dto/model/ModelType;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lclarifai2/api/request/model/FindModelRequest;->modelType:Lclarifai2/dto/model/ModelType;

    .line 56
    invoke-virtual {v4}, Lclarifai2/dto/model/ModelType;->typeName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v3, v4}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v2

    .line 54
    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 59
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    const-string v2, "/v2/models/searches"

    .line 60
    invoke-virtual {p0, v2, p1}, Lclarifai2/api/request/model/FindModelRequest;->buildURL(Ljava/lang/String;I)Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 61
    invoke-virtual {p0, v0, p1}, Lclarifai2/api/request/model/FindModelRequest;->toRequestBody(Lcom/google/gson/JsonObject;I)Lokhttp3/RequestBody;

    move-result-object p0

    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 62
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
            "Lclarifai2/dto/model/Model<",
            "*>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 40
    new-instance v0, Lclarifai2/api/request/model/FindModelRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/FindModelRequest$1;-><init>(Lclarifai2/api/request/model/FindModelRequest;)V

    return-object v0
.end method

.method public withModelType(Lclarifai2/dto/model/ModelType;)Lclarifai2/api/request/model/FindModelRequest;
    .locals 0
    .param p1    # Lclarifai2/dto/model/ModelType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    iput-object p1, p0, Lclarifai2/api/request/model/FindModelRequest;->modelType:Lclarifai2/dto/model/ModelType;

    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lclarifai2/api/request/model/FindModelRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iput-object p1, p0, Lclarifai2/api/request/model/FindModelRequest;->name:Ljava/lang/String;

    return-object p0
.end method
