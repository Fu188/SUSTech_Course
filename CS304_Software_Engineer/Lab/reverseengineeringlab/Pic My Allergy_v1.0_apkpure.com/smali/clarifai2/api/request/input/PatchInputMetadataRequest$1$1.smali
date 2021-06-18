.class Lclarifai2/api/request/input/PatchInputMetadataRequest$1$1;
.super Ljava/lang/Object;
.source "PatchInputMetadataRequest.java"

# interfaces
.implements Lclarifai2/internal/JSONUnmarshaler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/input/PatchInputMetadataRequest$1;->unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONUnmarshaler<",
        "Lclarifai2/dto/input/ClarifaiInput;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lclarifai2/api/request/input/PatchInputMetadataRequest$1;


# direct methods
.method constructor <init>(Lclarifai2/api/request/input/PatchInputMetadataRequest$1;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lclarifai2/api/request/input/PatchInputMetadataRequest$1$1;->this$1:Lclarifai2/api/request/input/PatchInputMetadataRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJSON(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)Lclarifai2/dto/input/ClarifaiInput;
    .locals 1
    .param p1    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 56
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p2

    const-string v0, "inputs"

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p2

    .line 57
    new-instance v0, Lclarifai2/api/request/input/PatchInputMetadataRequest$1$1$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/PatchInputMetadataRequest$1$1$1;-><init>(Lclarifai2/api/request/input/PatchInputMetadataRequest$1$1;)V

    invoke-static {p1, p2, v0}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lclarifai2/internal/InternalUtil;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lclarifai2/dto/input/ClarifaiInput;

    return-object p0
.end method

.method public bridge synthetic fromJSON(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/input/PatchInputMetadataRequest$1$1;->fromJSON(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)Lclarifai2/dto/input/ClarifaiInput;

    move-result-object p0

    return-object p0
.end method
