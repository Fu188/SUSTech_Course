.class public final Lclarifai2/api/request/input/DeleteInputRequest;
.super Lclarifai2/api/request/ClarifaiRequest$Builder;
.source "DeleteInputRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiRequest$Builder<",
        "Lcom/google/gson/JsonNull;",
        ">;"
    }
.end annotation


# instance fields
.field private final inputID:Ljava/lang/String;


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

    .line 18
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    .line 19
    iput-object p2, p0, Lclarifai2/api/request/input/DeleteInputRequest;->inputID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/input/DeleteInputRequest;)Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lclarifai2/api/request/input/DeleteInputRequest;->inputID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lclarifai2/api/request/input/DeleteInputRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/input/DeleteInputRequest;->deleteRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

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

    .line 23
    new-instance v0, Lclarifai2/api/request/input/DeleteInputRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/DeleteInputRequest$1;-><init>(Lclarifai2/api/request/input/DeleteInputRequest;)V

    return-object v0
.end method
