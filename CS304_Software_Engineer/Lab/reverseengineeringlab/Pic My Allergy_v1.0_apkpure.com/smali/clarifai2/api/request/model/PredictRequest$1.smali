.class Lclarifai2/api/request/model/PredictRequest$1;
.super Ljava/lang/Object;
.source "PredictRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/model/PredictRequest;->request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
        "Ljava/util/List<",
        "Lclarifai2/dto/model/output/ClarifaiOutput<",
        "TPREDICTION;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/model/PredictRequest;


# direct methods
.method constructor <init>(Lclarifai2/api/request/model/PredictRequest;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lclarifai2/api/request/model/PredictRequest$1;->this$0:Lclarifai2/api/request/model/PredictRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public httpRequest()Lokhttp3/Request;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 76
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "inputs"

    new-instance v2, Lclarifai2/internal/JSONArrayBuilder;

    invoke-direct {v2}, Lclarifai2/internal/JSONArrayBuilder;-><init>()V

    iget-object v3, p0, Lclarifai2/api/request/model/PredictRequest$1;->this$0:Lclarifai2/api/request/model/PredictRequest;

    .line 78
    invoke-static {v3}, Lclarifai2/api/request/model/PredictRequest;->access$000(Lclarifai2/api/request/model/PredictRequest;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lclarifai2/api/request/model/PredictRequest$1$1;

    invoke-direct {v4, p0}, Lclarifai2/api/request/model/PredictRequest$1$1;-><init>(Lclarifai2/api/request/model/PredictRequest$1;)V

    invoke-virtual {v2, v3, v4}, Lclarifai2/internal/JSONArrayBuilder;->addAll(Ljava/lang/Iterable;Lclarifai2/Func1;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object v2

    .line 77
    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lclarifai2/api/request/model/PredictRequest$1;->this$0:Lclarifai2/api/request/model/PredictRequest;

    invoke-static {v1}, Lclarifai2/api/request/model/PredictRequest;->access$200(Lclarifai2/api/request/model/PredictRequest;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lclarifai2/api/request/model/PredictRequest$1;->this$0:Lclarifai2/api/request/model/PredictRequest;

    invoke-static {v1}, Lclarifai2/api/request/model/PredictRequest;->access$300(Lclarifai2/api/request/model/PredictRequest;)Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lclarifai2/api/request/model/PredictRequest$1;->this$0:Lclarifai2/api/request/model/PredictRequest;

    invoke-static {v1}, Lclarifai2/api/request/model/PredictRequest;->access$400(Lclarifai2/api/request/model/PredictRequest;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "model"

    .line 84
    new-instance v2, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v2}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v3, "output_info"

    new-instance v4, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v4}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v5, "output_config"

    new-instance v6, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v6}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v7, "language"

    iget-object v8, p0, Lclarifai2/api/request/model/PredictRequest$1;->this$0:Lclarifai2/api/request/model/PredictRequest;

    .line 87
    invoke-static {v8}, Lclarifai2/api/request/model/PredictRequest;->access$200(Lclarifai2/api/request/model/PredictRequest;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lclarifai2/internal/JSONObjectBuilder;->addIfNotNull(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v6

    const-string v7, "min_value"

    iget-object v8, p0, Lclarifai2/api/request/model/PredictRequest$1;->this$0:Lclarifai2/api/request/model/PredictRequest;

    .line 88
    invoke-static {v8}, Lclarifai2/api/request/model/PredictRequest;->access$300(Lclarifai2/api/request/model/PredictRequest;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lclarifai2/internal/JSONObjectBuilder;->addIfNotNull(Ljava/lang/String;Ljava/lang/Number;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v6

    const-string v7, "max_concepts"

    iget-object v8, p0, Lclarifai2/api/request/model/PredictRequest$1;->this$0:Lclarifai2/api/request/model/PredictRequest;

    .line 89
    invoke-static {v8}, Lclarifai2/api/request/model/PredictRequest;->access$400(Lclarifai2/api/request/model/PredictRequest;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lclarifai2/internal/JSONObjectBuilder;->addIfNotNull(Ljava/lang/String;Ljava/lang/Number;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v6

    .line 86
    invoke-virtual {v4, v5, v6}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v4

    .line 85
    invoke-virtual {v2, v3, v4}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    .line 92
    :cond_1
    invoke-virtual {v0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lclarifai2/api/request/model/PredictRequest$1;->this$0:Lclarifai2/api/request/model/PredictRequest;

    invoke-static {v1}, Lclarifai2/api/request/model/PredictRequest;->access$500(Lclarifai2/api/request/model/PredictRequest;)Lclarifai2/dto/model/ModelVersion;

    move-result-object v1

    if-nez v1, :cond_2

    .line 94
    iget-object v1, p0, Lclarifai2/api/request/model/PredictRequest$1;->this$0:Lclarifai2/api/request/model/PredictRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/v2/models/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/api/request/model/PredictRequest$1;->this$0:Lclarifai2/api/request/model/PredictRequest;

    invoke-static {p0}, Lclarifai2/api/request/model/PredictRequest;->access$600(Lclarifai2/api/request/model/PredictRequest;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/outputs"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lclarifai2/api/request/model/PredictRequest;->access$700(Lclarifai2/api/request/model/PredictRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0

    .line 96
    :cond_2
    iget-object v1, p0, Lclarifai2/api/request/model/PredictRequest$1;->this$0:Lclarifai2/api/request/model/PredictRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/v2/models/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lclarifai2/api/request/model/PredictRequest$1;->this$0:Lclarifai2/api/request/model/PredictRequest;

    invoke-static {v3}, Lclarifai2/api/request/model/PredictRequest;->access$600(Lclarifai2/api/request/model/PredictRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/versions/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/api/request/model/PredictRequest$1;->this$0:Lclarifai2/api/request/model/PredictRequest;

    invoke-static {p0}, Lclarifai2/api/request/model/PredictRequest;->access$500(Lclarifai2/api/request/model/PredictRequest;)Lclarifai2/dto/model/ModelVersion;

    move-result-object p0

    invoke-virtual {p0}, Lclarifai2/dto/model/ModelVersion;->id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/outputs"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lclarifai2/api/request/model/PredictRequest;->access$800(Lclarifai2/api/request/model/PredictRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONUnmarshaler<",
            "Ljava/util/List<",
            "Lclarifai2/dto/model/output/ClarifaiOutput<",
            "TPREDICTION;>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 100
    new-instance v0, Lclarifai2/api/request/model/PredictRequest$1$2;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/PredictRequest$1$2;-><init>(Lclarifai2/api/request/model/PredictRequest$1;)V

    return-object v0
.end method
