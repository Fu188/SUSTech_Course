.class Lclarifai2/api/request/model/MultiModelPredictRequest$1$2$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "MultiModelPredictRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/model/MultiModelPredictRequest$1$2;->fromJSON(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)Lclarifai2/dto/multimodel/WorkflowResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lclarifai2/dto/multimodel/WorkflowResult<",
        "TPREDICTION;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lclarifai2/api/request/model/MultiModelPredictRequest$1$2;


# direct methods
.method constructor <init>(Lclarifai2/api/request/model/MultiModelPredictRequest$1$2;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lclarifai2/api/request/model/MultiModelPredictRequest$1$2$1;->this$2:Lclarifai2/api/request/model/MultiModelPredictRequest$1$2;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
