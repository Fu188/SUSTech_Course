.class Lclarifai2/api/request/input/PatchInputRequest$1;
.super Ljava/lang/Object;
.source "PatchInputRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/input/PatchInputRequest;->request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
        "Lclarifai2/dto/input/ClarifaiInput;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/input/PatchInputRequest;


# direct methods
.method constructor <init>(Lclarifai2/api/request/input/PatchInputRequest;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lclarifai2/api/request/input/PatchInputRequest$1;->this$0:Lclarifai2/api/request/input/PatchInputRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public httpRequest()Lokhttp3/Request;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 48
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "action"

    iget-object v2, p0, Lclarifai2/api/request/input/PatchInputRequest$1;->this$0:Lclarifai2/api/request/input/PatchInputRequest;

    .line 49
    invoke-static {v2}, Lclarifai2/api/request/input/PatchInputRequest;->access$300(Lclarifai2/api/request/input/PatchInputRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    const-string v1, "inputs"

    new-instance v2, Lclarifai2/internal/JSONArrayBuilder;

    invoke-direct {v2}, Lclarifai2/internal/JSONArrayBuilder;-><init>()V

    new-instance v3, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v3}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v4, "id"

    iget-object v5, p0, Lclarifai2/api/request/input/PatchInputRequest$1;->this$0:Lclarifai2/api/request/input/PatchInputRequest;

    .line 52
    invoke-static {v5}, Lclarifai2/api/request/input/PatchInputRequest;->access$200(Lclarifai2/api/request/input/PatchInputRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v3

    const-string v4, "data"

    new-instance v5, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v5}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v6, "concepts"

    new-instance v7, Lclarifai2/internal/JSONArrayBuilder;

    invoke-direct {v7}, Lclarifai2/internal/JSONArrayBuilder;-><init>()V

    iget-object v8, p0, Lclarifai2/api/request/input/PatchInputRequest$1;->this$0:Lclarifai2/api/request/input/PatchInputRequest;

    .line 55
    invoke-static {v8}, Lclarifai2/api/request/input/PatchInputRequest;->access$000(Lclarifai2/api/request/input/PatchInputRequest;)Ljava/util/List;

    move-result-object v8

    new-instance v9, Lclarifai2/api/request/input/PatchInputRequest$1$1;

    invoke-direct {v9, p0}, Lclarifai2/api/request/input/PatchInputRequest$1$1;-><init>(Lclarifai2/api/request/input/PatchInputRequest$1;)V

    invoke-virtual {v7, v8, v9}, Lclarifai2/internal/JSONArrayBuilder;->addAll(Ljava/lang/Iterable;Lclarifai2/Func1;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object v7

    .line 54
    invoke-virtual {v5, v6, v7}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v5

    .line 53
    invoke-virtual {v3, v4, v5}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Lclarifai2/internal/JSONArrayBuilder;->add(Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object v2

    .line 50
    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 65
    iget-object p0, p0, Lclarifai2/api/request/input/PatchInputRequest$1;->this$0:Lclarifai2/api/request/input/PatchInputRequest;

    const-string v1, "/v2/inputs"

    invoke-static {p0, v1, v0}, Lclarifai2/api/request/input/PatchInputRequest;->access$400(Lclarifai2/api/request/input/PatchInputRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONUnmarshaler<",
            "Lclarifai2/dto/input/ClarifaiInput;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 69
    new-instance v0, Lclarifai2/api/request/input/PatchInputRequest$1$2;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/PatchInputRequest$1$2;-><init>(Lclarifai2/api/request/input/PatchInputRequest$1;)V

    return-object v0
.end method
