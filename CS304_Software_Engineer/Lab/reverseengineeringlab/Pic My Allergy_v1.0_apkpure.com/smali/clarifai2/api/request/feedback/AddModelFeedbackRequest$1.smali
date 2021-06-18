.class Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;
.super Ljava/lang/Object;
.source "AddModelFeedbackRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
        "Lcom/google/gson/JsonNull;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/feedback/AddModelFeedbackRequest;


# direct methods
.method constructor <init>(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private makeConceptsJsonArray()Lclarifai2/internal/JSONArrayBuilder;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 121
    new-instance v0, Lclarifai2/internal/JSONArrayBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONArrayBuilder;-><init>()V

    iget-object v1, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    .line 122
    invoke-static {v1}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->access$100(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1$1;

    invoke-direct {v2, p0}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1$1;-><init>(Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;)V

    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONArrayBuilder;->addAll(Ljava/lang/Iterable;Lclarifai2/Func1;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object p0

    return-object p0
.end method

.method private makeFeedbackInfoJsonObject()Lclarifai2/internal/JSONObjectBuilder;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 142
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "end_user_id"

    iget-object v2, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    .line 143
    invoke-static {v2}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->access$1100(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    const-string v1, "session_id"

    iget-object v2, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    .line 144
    invoke-static {v2}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->access$1000(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    const-string v1, "event_type"

    iget-object v2, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    .line 145
    invoke-static {v2}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->access$900(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    const-string v1, "output_id"

    iget-object p0, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    .line 146
    invoke-static {p0}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->access$800(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    return-object p0
.end method

.method private makeRegionsJsonArray()Lclarifai2/internal/JSONArrayBuilder;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 133
    new-instance v0, Lclarifai2/internal/JSONArrayBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONArrayBuilder;-><init>()V

    iget-object v1, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    .line 134
    invoke-static {v1}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->access$200(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1$2;

    invoke-direct {v2, p0}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1$2;-><init>(Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;)V

    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONArrayBuilder;->addAll(Ljava/lang/Iterable;Lclarifai2/Func1;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public httpRequest()Lokhttp3/Request;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 97
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "image"

    new-instance v2, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v2}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v3, "url"

    iget-object v4, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    .line 99
    invoke-static {v4}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->access$000(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v2

    .line 98
    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    invoke-static {v1}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->access$100(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "concepts"

    .line 101
    invoke-direct {p0}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->makeConceptsJsonArray()Lclarifai2/internal/JSONArrayBuilder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    .line 103
    :cond_0
    iget-object v1, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    invoke-static {v1}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->access$200(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "regions"

    .line 104
    invoke-direct {p0}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->makeRegionsJsonArray()Lclarifai2/internal/JSONArrayBuilder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    .line 106
    :cond_1
    new-instance v1, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v1}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v2, "input"

    new-instance v3, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v3}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v4, "id"

    iget-object v5, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    .line 108
    invoke-static {v5}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->access$300(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v3

    const-string v4, "data"

    .line 109
    invoke-virtual {v0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    const-string v3, "feedback_info"

    .line 110
    invoke-direct {p0}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->makeFeedbackInfoJsonObject()Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {v1, v2, v0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    invoke-static {v1}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->access$400(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Lclarifai2/dto/model/ModelVersion;

    move-result-object v1

    if-nez v1, :cond_2

    .line 115
    iget-object v1, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/v2/models/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    invoke-static {p0}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->access$300(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/feedback"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->access$500(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0

    .line 117
    :cond_2
    iget-object v1, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/v2/models/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    invoke-static {v3}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->access$300(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/versions/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    invoke-static {p0}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->access$400(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;)Lclarifai2/dto/model/ModelVersion;

    move-result-object p0

    invoke-virtual {p0}, Lclarifai2/dto/model/ModelVersion;->id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/feedback"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;->access$600(Lclarifai2/api/request/feedback/AddModelFeedbackRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONUnmarshaler<",
            "Lcom/google/gson/JsonNull;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 150
    new-instance v0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1$3;

    invoke-direct {v0, p0}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1$3;-><init>(Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;)V

    return-object v0
.end method
