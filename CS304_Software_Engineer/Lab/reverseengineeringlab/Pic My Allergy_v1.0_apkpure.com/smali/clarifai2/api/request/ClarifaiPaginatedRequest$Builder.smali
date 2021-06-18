.class public abstract Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;
.super Ljava/lang/Object;
.source "ClarifaiPaginatedRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiPaginatedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/api/request/ClarifaiPaginatedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "SE",
        "LF:Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder<",
        "TT;TSE",
        "LF;",
        ">;>",
        "Ljava/lang/Object;",
        "Lclarifai2/api/request/ClarifaiPaginatedRequest<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final client:Lclarifai2/api/BaseClarifaiClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field protected final gson:Lcom/google/gson/Gson;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private perPage:I


# direct methods
.method protected constructor <init>(Lclarifai2/api/BaseClarifaiClient;)V
    .locals 1
    .param p1    # Lclarifai2/api/BaseClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;->perPage:I

    .line 46
    iget-object v0, p1, Lclarifai2/api/BaseClarifaiClient;->gson:Lcom/google/gson/Gson;

    iput-object v0, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;->gson:Lcom/google/gson/Gson;

    .line 47
    iput-object p1, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;->client:Lclarifai2/api/BaseClarifaiClient;

    return-void
.end method


# virtual methods
.method public final build()Lclarifai2/api/request/ClarifaiPaginatedRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/api/request/ClarifaiPaginatedRequest<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 65
    new-instance v0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;

    iget-object v1, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;->client:Lclarifai2/api/BaseClarifaiClient;

    new-instance v2, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder$1;

    invoke-direct {v2, p0}, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder$1;-><init>(Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;)V

    .line 69
    invoke-virtual {p0}, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;->unmarshaler()Lclarifai2/internal/JSONUnmarshaler;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;-><init>(Lclarifai2/api/BaseClarifaiClient;Lclarifai2/api/request/PaginatedRequestVendor;Lclarifai2/internal/JSONUnmarshaler;)V

    return-object v0
.end method

.method protected abstract buildRequest(I)Lokhttp3/Request;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected final buildURL(Ljava/lang/String;I)Lokhttp3/HttpUrl;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 93
    :cond_0
    iget-object v0, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;->client:Lclarifai2/api/BaseClarifaiClient;

    iget-object v0, v0, Lclarifai2/api/BaseClarifaiClient;->baseURL:Lokhttp3/HttpUrl;

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    const-string v0, "page"

    .line 95
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lokhttp3/HttpUrl$Builder;->setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    .line 96
    iget p2, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;->perPage:I

    if-lez p2, :cond_1

    const-string p2, "per_page"

    .line 97
    iget p0, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;->perPage:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lokhttp3/HttpUrl$Builder;->setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 99
    :cond_1
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method public final getPage(I)Lclarifai2/api/request/ClarifaiRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lclarifai2/api/request/ClarifaiRequest<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 61
    invoke-virtual {p0}, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;->build()Lclarifai2/api/request/ClarifaiPaginatedRequest;

    move-result-object p0

    invoke-interface {p0, p1}, Lclarifai2/api/request/ClarifaiPaginatedRequest;->getPage(I)Lclarifai2/api/request/ClarifaiRequest;

    move-result-object p0

    return-object p0
.end method

.method public final perPage()I
    .locals 0

    .line 51
    iget p0, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;->perPage:I

    return p0
.end method

.method public final perPage(I)Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TSE",
            "LF;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 56
    iput p1, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;->perPage:I

    return-object p0
.end method

.method protected final toRequestBody(Lcom/google/gson/JsonObject;I)Lokhttp3/RequestBody;
    .locals 2
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 77
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "page"

    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Number;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p2

    .line 79
    iget v0, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;->perPage:I

    if-lez v0, :cond_0

    const-string v0, "per_page"

    .line 80
    iget v1, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;->perPage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Number;)Lclarifai2/internal/JSONObjectBuilder;

    .line 82
    :cond_0
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0, p1}, Lclarifai2/internal/JSONObjectBuilder;-><init>(Lcom/google/gson/JsonObject;)V

    const-string p1, "pagination"

    .line 83
    invoke-virtual {v0, p1, p2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 86
    sget-object p2, Lclarifai2/internal/InternalUtil;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    iget-object p0, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method protected abstract unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONUnmarshaler<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
