.class public final Lclarifai2/api/request/model/TrainModelRequest;
.super Lclarifai2/api/request/ClarifaiRequest$Builder;
.source "TrainModelRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiRequest$Builder<",
        "Lclarifai2/dto/model/Model<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final modelID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .line 19
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    .line 20
    iput-object p2, p0, Lclarifai2/api/request/model/TrainModelRequest;->modelID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/model/TrainModelRequest;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lclarifai2/api/request/model/TrainModelRequest;->modelID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lclarifai2/api/request/model/TrainModelRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/model/TrainModelRequest;->postRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

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
            "Lclarifai2/dto/model/Model<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    new-instance v0, Lclarifai2/api/request/model/TrainModelRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/TrainModelRequest$1;-><init>(Lclarifai2/api/request/model/TrainModelRequest;)V

    return-object v0
.end method
