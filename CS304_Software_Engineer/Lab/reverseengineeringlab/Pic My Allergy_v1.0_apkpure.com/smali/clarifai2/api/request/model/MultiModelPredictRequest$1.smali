.class Lclarifai2/api/request/model/MultiModelPredictRequest$1;
.super Ljava/lang/Object;
.source "MultiModelPredictRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/model/MultiModelPredictRequest;->request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
        "Lclarifai2/dto/multimodel/WorkflowResult<",
        "TPREDICTION;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/model/MultiModelPredictRequest;


# direct methods
.method constructor <init>(Lclarifai2/api/request/model/MultiModelPredictRequest;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lclarifai2/api/request/model/MultiModelPredictRequest$1;->this$0:Lclarifai2/api/request/model/MultiModelPredictRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public httpRequest()Lokhttp3/Request;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "inputs"

    new-instance v2, Lclarifai2/internal/JSONArrayBuilder;

    invoke-direct {v2}, Lclarifai2/internal/JSONArrayBuilder;-><init>()V

    iget-object v3, p0, Lclarifai2/api/request/model/MultiModelPredictRequest$1;->this$0:Lclarifai2/api/request/model/MultiModelPredictRequest;

    .line 55
    invoke-static {v3}, Lclarifai2/api/request/model/MultiModelPredictRequest;->access$000(Lclarifai2/api/request/model/MultiModelPredictRequest;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lclarifai2/api/request/model/MultiModelPredictRequest$1$1;

    invoke-direct {v4, p0}, Lclarifai2/api/request/model/MultiModelPredictRequest$1$1;-><init>(Lclarifai2/api/request/model/MultiModelPredictRequest$1;)V

    invoke-virtual {v2, v3, v4}, Lclarifai2/internal/JSONArrayBuilder;->addAll(Ljava/lang/Iterable;Lclarifai2/Func1;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object v2

    .line 54
    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lclarifai2/api/request/model/MultiModelPredictRequest$1;->this$0:Lclarifai2/api/request/model/MultiModelPredictRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/v2/workflows/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/api/request/model/MultiModelPredictRequest$1;->this$0:Lclarifai2/api/request/model/MultiModelPredictRequest;

    invoke-static {p0}, Lclarifai2/api/request/model/MultiModelPredictRequest;->access$100(Lclarifai2/api/request/model/MultiModelPredictRequest;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/results"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lclarifai2/api/request/model/MultiModelPredictRequest;->access$200(Lclarifai2/api/request/model/MultiModelPredictRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONUnmarshaler<",
            "Lclarifai2/dto/multimodel/WorkflowResult<",
            "TPREDICTION;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 72
    new-instance v0, Lclarifai2/api/request/model/MultiModelPredictRequest$1$2;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/MultiModelPredictRequest$1$2;-><init>(Lclarifai2/api/request/model/MultiModelPredictRequest$1;)V

    return-object v0
.end method
