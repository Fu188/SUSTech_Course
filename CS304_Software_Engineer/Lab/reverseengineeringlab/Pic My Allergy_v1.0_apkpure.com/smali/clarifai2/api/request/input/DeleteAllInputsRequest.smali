.class public Lclarifai2/api/request/input/DeleteAllInputsRequest;
.super Lclarifai2/api/request/ClarifaiRequest$Builder;
.source "DeleteAllInputsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiRequest$Builder<",
        "Lcom/google/gson/JsonNull;",
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

    .line 17
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/input/DeleteAllInputsRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/input/DeleteAllInputsRequest;->deleteRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

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
            "Lcom/google/gson/JsonNull;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    new-instance v0, Lclarifai2/api/request/input/DeleteAllInputsRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/DeleteAllInputsRequest$1;-><init>(Lclarifai2/api/request/input/DeleteAllInputsRequest;)V

    return-object v0
.end method
