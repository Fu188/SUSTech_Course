.class public final Lclarifai2/api/request/input/GetInputsStatusRequest;
.super Lclarifai2/api/request/ClarifaiRequest$Builder;
.source "GetInputsStatusRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiRequest$Builder<",
        "Lclarifai2/dto/input/ClarifaiInputsStatus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lclarifai2/api/BaseClarifaiClient;)V
    .locals 0
    .param p1    # Lclarifai2/api/BaseClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/input/GetInputsStatusRequest;Ljava/lang/String;)Lokhttp3/Request;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lclarifai2/api/request/input/GetInputsStatusRequest;->getRequest(Ljava/lang/String;)Lokhttp3/Request;

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
            "Lclarifai2/dto/input/ClarifaiInputsStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    new-instance v0, Lclarifai2/api/request/input/GetInputsStatusRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/GetInputsStatusRequest$1;-><init>(Lclarifai2/api/request/input/GetInputsStatusRequest;)V

    return-object v0
.end method
