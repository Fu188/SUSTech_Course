.class Lclarifai2/api/request/model/MultiModelPredictRequest$1$2;
.super Ljava/lang/Object;
.source "MultiModelPredictRequest.java"

# interfaces
.implements Lclarifai2/internal/JSONUnmarshaler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/model/MultiModelPredictRequest$1;->unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONUnmarshaler<",
        "Lclarifai2/dto/multimodel/WorkflowResult<",
        "TPREDICTION;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lclarifai2/api/request/model/MultiModelPredictRequest$1;


# direct methods
.method constructor <init>(Lclarifai2/api/request/model/MultiModelPredictRequest$1;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lclarifai2/api/request/model/MultiModelPredictRequest$1$2;->this$1:Lclarifai2/api/request/model/MultiModelPredictRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJSON(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)Lclarifai2/dto/multimodel/WorkflowResult;
    .locals 1
    .param p1    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Lclarifai2/dto/multimodel/WorkflowResult<",
            "TPREDICTION;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 75
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p2

    .line 76
    new-instance v0, Lclarifai2/api/request/model/MultiModelPredictRequest$1$2$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/MultiModelPredictRequest$1$2$1;-><init>(Lclarifai2/api/request/model/MultiModelPredictRequest$1$2;)V

    invoke-static {p1, p2, v0}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lclarifai2/dto/multimodel/WorkflowResult;

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

    .line 72
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/model/MultiModelPredictRequest$1$2;->fromJSON(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)Lclarifai2/dto/multimodel/WorkflowResult;

    move-result-object p0

    return-object p0
.end method
