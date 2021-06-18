.class public final Lclarifai2/api/request/input/PatchInputRequest;
.super Lclarifai2/api/request/ClarifaiRequest$Builder;
.source "PatchInputRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiRequest$Builder<",
        "Lclarifai2/dto/input/ClarifaiInput;",
        ">;"
    }
.end annotation


# instance fields
.field private final action:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

.field private final inputID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lclarifai2/api/BaseClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lclarifai2/api/request/input/PatchInputRequest;->concepts:Ljava/util/List;

    .line 32
    iput-object p2, p0, Lclarifai2/api/request/input/PatchInputRequest;->inputID:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lclarifai2/api/request/input/PatchInputRequest;->action:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/input/PatchInputRequest;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lclarifai2/api/request/input/PatchInputRequest;->concepts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lclarifai2/api/request/input/PatchInputRequest;)Lclarifai2/api/BaseClarifaiClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lclarifai2/api/request/input/PatchInputRequest;->client:Lclarifai2/api/BaseClarifaiClient;

    return-object p0
.end method

.method static synthetic access$200(Lclarifai2/api/request/input/PatchInputRequest;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lclarifai2/api/request/input/PatchInputRequest;->inputID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lclarifai2/api/request/input/PatchInputRequest;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lclarifai2/api/request/input/PatchInputRequest;->action:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lclarifai2/api/request/input/PatchInputRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/input/PatchInputRequest;->patchRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public plus(Ljava/util/Collection;)Lclarifai2/api/request/input/PatchInputRequest;
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
            "Lclarifai2/api/request/input/PatchInputRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    iget-object v0, p0, Lclarifai2/api/request/input/PatchInputRequest;->concepts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs plus([Lclarifai2/dto/prediction/Concept;)Lclarifai2/api/request/input/PatchInputRequest;
    .locals 0
    .param p1    # [Lclarifai2/dto/prediction/Concept;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/api/request/input/PatchInputRequest;->plus(Ljava/util/Collection;)Lclarifai2/api/request/input/PatchInputRequest;

    move-result-object p0

    return-object p0
.end method

.method protected request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
            "Lclarifai2/dto/input/ClarifaiInput;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    new-instance v0, Lclarifai2/api/request/input/PatchInputRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/PatchInputRequest$1;-><init>(Lclarifai2/api/request/input/PatchInputRequest;)V

    return-object v0
.end method
