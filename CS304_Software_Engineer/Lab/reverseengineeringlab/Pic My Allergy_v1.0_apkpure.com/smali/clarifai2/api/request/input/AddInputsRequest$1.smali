.class Lclarifai2/api/request/input/AddInputsRequest$1;
.super Ljava/lang/Object;
.source "AddInputsRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/input/AddInputsRequest;->request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
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
        "Lclarifai2/dto/input/ClarifaiInput;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/input/AddInputsRequest;


# direct methods
.method constructor <init>(Lclarifai2/api/request/input/AddInputsRequest;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lclarifai2/api/request/input/AddInputsRequest$1;->this$0:Lclarifai2/api/request/input/AddInputsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public httpRequest()Lokhttp3/Request;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 63
    new-instance v0, Lclarifai2/api/request/input/AddInputsRequest$1$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/AddInputsRequest$1$1;-><init>(Lclarifai2/api/request/input/AddInputsRequest$1;)V

    .line 64
    iget-object v1, p0, Lclarifai2/api/request/input/AddInputsRequest$1;->this$0:Lclarifai2/api/request/input/AddInputsRequest;

    invoke-static {v1}, Lclarifai2/api/request/input/AddInputsRequest;->access$000(Lclarifai2/api/request/input/AddInputsRequest;)Lclarifai2/api/BaseClarifaiClient;

    move-result-object v1

    iget-object v1, v1, Lclarifai2/api/BaseClarifaiClient;->gson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lclarifai2/api/request/input/AddInputsRequest$1;->this$0:Lclarifai2/api/request/input/AddInputsRequest;

    invoke-static {v2}, Lclarifai2/api/request/input/AddInputsRequest;->access$100(Lclarifai2/api/request/input/AddInputsRequest;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lclarifai2/internal/InternalUtil;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lclarifai2/api/request/input/AddInputsRequest$1;->this$0:Lclarifai2/api/request/input/AddInputsRequest;

    invoke-static {v1}, Lclarifai2/api/request/input/AddInputsRequest;->access$200(Lclarifai2/api/request/input/AddInputsRequest;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 67
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "url"

    .line 68
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "allow_duplicate_url"

    .line 69
    iget-object v4, p0, Lclarifai2/api/request/input/AddInputsRequest$1;->this$0:Lclarifai2/api/request/input/AddInputsRequest;

    invoke-static {v4}, Lclarifai2/api/request/input/AddInputsRequest;->access$200(Lclarifai2/api/request/input/AddInputsRequest;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 74
    :cond_1
    new-instance v1, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v1}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v2, "inputs"

    .line 75
    invoke-virtual {v1, v2, v0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 77
    iget-object p0, p0, Lclarifai2/api/request/input/AddInputsRequest$1;->this$0:Lclarifai2/api/request/input/AddInputsRequest;

    const-string v1, "/v2/inputs"

    invoke-static {p0, v1, v0}, Lclarifai2/api/request/input/AddInputsRequest;->access$300(Lclarifai2/api/request/input/AddInputsRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

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
            "Lclarifai2/dto/input/ClarifaiInput;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 81
    new-instance v0, Lclarifai2/api/request/input/AddInputsRequest$1$2;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/AddInputsRequest$1$2;-><init>(Lclarifai2/api/request/input/AddInputsRequest$1;)V

    return-object v0
.end method
