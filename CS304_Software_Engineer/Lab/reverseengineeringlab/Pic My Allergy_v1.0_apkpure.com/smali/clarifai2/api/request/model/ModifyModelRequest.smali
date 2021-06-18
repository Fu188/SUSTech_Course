.class public final Lclarifai2/api/request/model/ModifyModelRequest;
.super Lclarifai2/api/request/ClarifaiRequest$Builder;
.source "ModifyModelRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiRequest$Builder<",
        "Lclarifai2/dto/model/ConceptModel;",
        ">;"
    }
.end annotation


# instance fields
.field private action:Lclarifai2/api/request/model/Action;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private closedEnvironment:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private concepts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private conceptsMutuallyExclusive:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final modelID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private name:Ljava/lang/String;
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

    .line 38
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lclarifai2/api/request/model/ModifyModelRequest;->action:Lclarifai2/api/request/model/Action;

    .line 31
    iput-object p1, p0, Lclarifai2/api/request/model/ModifyModelRequest;->concepts:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lclarifai2/api/request/model/ModifyModelRequest;->name:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lclarifai2/api/request/model/ModifyModelRequest;->conceptsMutuallyExclusive:Ljava/lang/Boolean;

    .line 34
    iput-object p1, p0, Lclarifai2/api/request/model/ModifyModelRequest;->closedEnvironment:Ljava/lang/Boolean;

    .line 35
    iput-object p1, p0, Lclarifai2/api/request/model/ModifyModelRequest;->language:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lclarifai2/api/request/model/ModifyModelRequest;->modelID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/model/ModifyModelRequest;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lclarifai2/api/request/model/ModifyModelRequest;->modelID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lclarifai2/api/request/model/ModifyModelRequest;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lclarifai2/api/request/model/ModifyModelRequest;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lclarifai2/api/request/model/ModifyModelRequest;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lclarifai2/api/request/model/ModifyModelRequest;->concepts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lclarifai2/api/request/model/ModifyModelRequest;)Lclarifai2/api/BaseClarifaiClient;
    .locals 0

    .line 26
    iget-object p0, p0, Lclarifai2/api/request/model/ModifyModelRequest;->client:Lclarifai2/api/BaseClarifaiClient;

    return-object p0
.end method

.method static synthetic access$400(Lclarifai2/api/request/model/ModifyModelRequest;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lclarifai2/api/request/model/ModifyModelRequest;->language:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lclarifai2/api/request/model/ModifyModelRequest;)Ljava/lang/Boolean;
    .locals 0

    .line 26
    iget-object p0, p0, Lclarifai2/api/request/model/ModifyModelRequest;->conceptsMutuallyExclusive:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$600(Lclarifai2/api/request/model/ModifyModelRequest;)Ljava/lang/Boolean;
    .locals 0

    .line 26
    iget-object p0, p0, Lclarifai2/api/request/model/ModifyModelRequest;->closedEnvironment:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$700(Lclarifai2/api/request/model/ModifyModelRequest;)Lclarifai2/api/request/model/Action;
    .locals 0

    .line 26
    iget-object p0, p0, Lclarifai2/api/request/model/ModifyModelRequest;->action:Lclarifai2/api/request/model/Action;

    return-object p0
.end method

.method static synthetic access$800(Lclarifai2/api/request/model/ModifyModelRequest;)Lclarifai2/api/BaseClarifaiClient;
    .locals 0

    .line 26
    iget-object p0, p0, Lclarifai2/api/request/model/ModifyModelRequest;->client:Lclarifai2/api/BaseClarifaiClient;

    return-object p0
.end method

.method static synthetic access$900(Lclarifai2/api/request/model/ModifyModelRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/model/ModifyModelRequest;->patchRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

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
            "Lclarifai2/dto/model/ConceptModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 105
    new-instance v0, Lclarifai2/api/request/model/ModifyModelRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/ModifyModelRequest$1;-><init>(Lclarifai2/api/request/model/ModifyModelRequest;)V

    return-object v0
.end method

.method public withClosedEnvironment(Z)Lclarifai2/api/request/model/ModifyModelRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 95
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lclarifai2/api/request/model/ModifyModelRequest;->closedEnvironment:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withConcepts(Lclarifai2/api/request/model/Action;Ljava/util/List;)Lclarifai2/api/request/model/ModifyModelRequest;
    .locals 0
    .param p1    # Lclarifai2/api/request/model/Action;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/api/request/model/Action;",
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;)",
            "Lclarifai2/api/request/model/ModifyModelRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 73
    iput-object p2, p0, Lclarifai2/api/request/model/ModifyModelRequest;->concepts:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lclarifai2/api/request/model/ModifyModelRequest;->action:Lclarifai2/api/request/model/Action;

    return-object p0
.end method

.method public varargs withConcepts(Lclarifai2/api/request/model/Action;[Lclarifai2/dto/prediction/Concept;)Lclarifai2/api/request/model/ModifyModelRequest;
    .locals 0
    .param p1    # Lclarifai2/api/request/model/Action;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lclarifai2/dto/prediction/Concept;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 56
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/model/ModifyModelRequest;->withConcepts(Lclarifai2/api/request/model/Action;Ljava/util/List;)Lclarifai2/api/request/model/ModifyModelRequest;

    move-result-object p0

    return-object p0
.end method

.method public withConceptsMutuallyExclusive(Z)Lclarifai2/api/request/model/ModifyModelRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 90
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lclarifai2/api/request/model/ModifyModelRequest;->conceptsMutuallyExclusive:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withLanguage(Ljava/lang/String;)Lclarifai2/api/request/model/ModifyModelRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 100
    iput-object p1, p0, Lclarifai2/api/request/model/ModifyModelRequest;->language:Ljava/lang/String;

    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lclarifai2/api/request/model/ModifyModelRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 85
    iput-object p1, p0, Lclarifai2/api/request/model/ModifyModelRequest;->name:Ljava/lang/String;

    return-object p0
.end method
