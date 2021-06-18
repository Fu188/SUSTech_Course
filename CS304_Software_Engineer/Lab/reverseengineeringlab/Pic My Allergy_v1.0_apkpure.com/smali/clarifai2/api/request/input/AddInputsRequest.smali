.class public final Lclarifai2/api/request/input/AddInputsRequest;
.super Lclarifai2/api/request/ClarifaiRequest$Builder;
.source "AddInputsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiRequest$Builder<",
        "Ljava/util/List<",
        "Lclarifai2/dto/input/ClarifaiInput;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final MAX_NUM_INPUTS:I = 0x80


# instance fields
.field private allowDuplicateURLs:Z

.field private final inputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/input/ClarifaiInput;",
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

    .line 34
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lclarifai2/api/request/input/AddInputsRequest;->inputs:Ljava/util/List;

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lclarifai2/api/request/input/AddInputsRequest;->allowDuplicateURLs:Z

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/input/AddInputsRequest;)Lclarifai2/api/BaseClarifaiClient;
    .locals 0

    .line 25
    iget-object p0, p0, Lclarifai2/api/request/input/AddInputsRequest;->client:Lclarifai2/api/BaseClarifaiClient;

    return-object p0
.end method

.method static synthetic access$100(Lclarifai2/api/request/input/AddInputsRequest;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lclarifai2/api/request/input/AddInputsRequest;->inputs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lclarifai2/api/request/input/AddInputsRequest;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lclarifai2/api/request/input/AddInputsRequest;->allowDuplicateURLs:Z

    return p0
.end method

.method static synthetic access$300(Lclarifai2/api/request/input/AddInputsRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/input/AddInputsRequest;->postRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public allowDuplicateURLs(Z)Lclarifai2/api/request/input/AddInputsRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 55
    iput-boolean p1, p0, Lclarifai2/api/request/input/AddInputsRequest;->allowDuplicateURLs:Z

    return-object p0
.end method

.method public plus(Ljava/util/Collection;)Lclarifai2/api/request/input/AddInputsRequest;
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lclarifai2/dto/input/ClarifaiInput;",
            ">;)",
            "Lclarifai2/api/request/input/AddInputsRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    .line 43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t add more than %d inputs in one request"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_0
    iget-object v0, p0, Lclarifai2/api/request/input/AddInputsRequest;->inputs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs plus([Lclarifai2/dto/input/ClarifaiInput;)Lclarifai2/api/request/input/AddInputsRequest;
    .locals 0
    .param p1    # [Lclarifai2/dto/input/ClarifaiInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/api/request/input/AddInputsRequest;->plus(Ljava/util/Collection;)Lclarifai2/api/request/input/AddInputsRequest;

    move-result-object p0

    return-object p0
.end method

.method protected request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
            "Ljava/util/List<",
            "Lclarifai2/dto/input/ClarifaiInput;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 60
    new-instance v0, Lclarifai2/api/request/input/AddInputsRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/AddInputsRequest$1;-><init>(Lclarifai2/api/request/input/AddInputsRequest;)V

    return-object v0
.end method
