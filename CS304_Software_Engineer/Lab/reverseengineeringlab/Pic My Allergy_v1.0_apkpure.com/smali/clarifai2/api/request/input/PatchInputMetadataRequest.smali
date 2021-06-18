.class public final Lclarifai2/api/request/input/PatchInputMetadataRequest;
.super Lclarifai2/api/request/ClarifaiRequest$Builder;
.source "PatchInputMetadataRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiRequest$Builder<",
        "Lclarifai2/dto/input/ClarifaiInput;",
        ">;"
    }
.end annotation


# instance fields
.field private final inputID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final metadata:Lcom/google/gson/JsonObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0
    .param p1    # Lclarifai2/api/BaseClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/gson/JsonObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    .line 31
    iput-object p2, p0, Lclarifai2/api/request/input/PatchInputMetadataRequest;->inputID:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lclarifai2/api/request/input/PatchInputMetadataRequest;->metadata:Lcom/google/gson/JsonObject;

    .line 33
    invoke-static {p3}, Lclarifai2/internal/InternalUtil;->assertMetadataHasNoNulls(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/input/PatchInputMetadataRequest;)Lcom/google/gson/JsonObject;
    .locals 0

    .line 20
    iget-object p0, p0, Lclarifai2/api/request/input/PatchInputMetadataRequest;->metadata:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method static synthetic access$100(Lclarifai2/api/request/input/PatchInputMetadataRequest;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lclarifai2/api/request/input/PatchInputMetadataRequest;->inputID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lclarifai2/api/request/input/PatchInputMetadataRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/input/PatchInputMetadataRequest;->patchRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

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
            "Lclarifai2/dto/input/ClarifaiInput;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    new-instance v0, Lclarifai2/api/request/input/PatchInputMetadataRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/PatchInputMetadataRequest$1;-><init>(Lclarifai2/api/request/input/PatchInputMetadataRequest;)V

    return-object v0
.end method
