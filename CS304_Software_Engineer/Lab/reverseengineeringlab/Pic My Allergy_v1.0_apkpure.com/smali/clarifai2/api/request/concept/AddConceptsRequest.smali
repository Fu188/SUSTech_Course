.class public final Lclarifai2/api/request/concept/AddConceptsRequest;
.super Lclarifai2/api/request/ClarifaiRequest$Builder;
.source "AddConceptsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiRequest$Builder<",
        "Lcom/google/gson/JsonNull;",
        ">;"
    }
.end annotation


# instance fields
.field private final concepts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lclarifai2/api/BaseClarifaiClient;)V
    .locals 0
    .param p1    # Lclarifai2/api/BaseClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lclarifai2/api/request/concept/AddConceptsRequest;->concepts:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/concept/AddConceptsRequest;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lclarifai2/api/request/concept/AddConceptsRequest;->concepts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lclarifai2/api/request/concept/AddConceptsRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/concept/AddConceptsRequest;->postRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public plus(Ljava/util/Collection;)Lclarifai2/api/request/concept/AddConceptsRequest;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;)",
            "Lclarifai2/api/request/concept/AddConceptsRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    iget-object v0, p0, Lclarifai2/api/request/concept/AddConceptsRequest;->concepts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs plus([Lclarifai2/dto/prediction/Concept;)Lclarifai2/api/request/concept/AddConceptsRequest;
    .locals 0
    .param p1    # [Lclarifai2/dto/prediction/Concept;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/api/request/concept/AddConceptsRequest;->plus(Ljava/util/Collection;)Lclarifai2/api/request/concept/AddConceptsRequest;

    move-result-object p0

    return-object p0
.end method

.method protected request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
            "Lcom/google/gson/JsonNull;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 40
    new-instance v0, Lclarifai2/api/request/concept/AddConceptsRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/concept/AddConceptsRequest$1;-><init>(Lclarifai2/api/request/concept/AddConceptsRequest;)V

    return-object v0
.end method
