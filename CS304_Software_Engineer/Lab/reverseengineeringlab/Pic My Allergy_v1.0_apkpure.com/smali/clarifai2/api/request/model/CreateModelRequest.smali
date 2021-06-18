.class public final Lclarifai2/api/request/model/CreateModelRequest;
.super Lclarifai2/api/request/ClarifaiRequest$Builder;
.source "CreateModelRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiRequest$Builder<",
        "Lclarifai2/dto/model/ConceptModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final helper:Lclarifai2/api/BaseClarifaiClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private outputInfo:Lclarifai2/dto/model/output_info/ConceptOutputInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lclarifai2/api/BaseClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lclarifai2/api/request/model/CreateModelRequest;->name:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lclarifai2/api/request/model/CreateModelRequest;->helper:Lclarifai2/api/BaseClarifaiClient;

    .line 34
    iput-object p2, p0, Lclarifai2/api/request/model/CreateModelRequest;->id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/model/CreateModelRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/model/CreateModelRequest;->postRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected buildJSONOfModel()Lcom/google/gson/JsonElement;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 69
    iget-object v0, p0, Lclarifai2/api/request/model/CreateModelRequest;->client:Lclarifai2/api/BaseClarifaiClient;

    iget-object v0, v0, Lclarifai2/api/BaseClarifaiClient;->gson:Lcom/google/gson/Gson;

    sget-object v1, Lclarifai2/dto/model/ModelType;->CONCEPT:Lclarifai2/dto/model/ModelType;

    iget-object v2, p0, Lclarifai2/api/request/model/CreateModelRequest;->helper:Lclarifai2/api/BaseClarifaiClient;

    iget-object v3, p0, Lclarifai2/api/request/model/CreateModelRequest;->id:Ljava/lang/String;

    iget-object v4, p0, Lclarifai2/api/request/model/CreateModelRequest;->name:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lclarifai2/api/request/model/CreateModelRequest;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lclarifai2/api/request/model/CreateModelRequest;->id:Ljava/lang/String;

    :goto_0
    iget-object v5, p0, Lclarifai2/api/request/model/CreateModelRequest;->outputInfo:Lclarifai2/dto/model/output_info/ConceptOutputInfo;

    .line 71
    invoke-static {v1, v2, v3, v4, v5}, Lclarifai2/dto/model/Model;->_create(Lclarifai2/dto/model/ModelType;Lclarifai2/api/ClarifaiClient;Ljava/lang/String;Ljava/lang/String;Lclarifai2/dto/model/output_info/OutputInfo;)Lclarifai2/dto/model/Model;

    move-result-object v1

    new-instance v2, Lclarifai2/api/request/model/CreateModelRequest$2;

    invoke-direct {v2, p0}, Lclarifai2/api/request/model/CreateModelRequest$2;-><init>(Lclarifai2/api/request/model/CreateModelRequest;)V

    .line 69
    invoke-static {v0, v1, v2}, Lclarifai2/internal/InternalUtil;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

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

    .line 48
    new-instance v0, Lclarifai2/api/request/model/CreateModelRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/CreateModelRequest$1;-><init>(Lclarifai2/api/request/model/CreateModelRequest;)V

    return-object v0
.end method

.method public withName(Ljava/lang/String;)Lclarifai2/api/request/model/CreateModelRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 43
    iput-object p1, p0, Lclarifai2/api/request/model/CreateModelRequest;->name:Ljava/lang/String;

    return-object p0
.end method

.method public withOutputInfo(Lclarifai2/dto/model/output_info/ConceptOutputInfo;)Lclarifai2/api/request/model/CreateModelRequest;
    .locals 0
    .param p1    # Lclarifai2/dto/model/output_info/ConceptOutputInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    iput-object p1, p0, Lclarifai2/api/request/model/CreateModelRequest;->outputInfo:Lclarifai2/dto/model/output_info/ConceptOutputInfo;

    return-object p0
.end method
