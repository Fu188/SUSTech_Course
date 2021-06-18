.class Lclarifai2/api/request/input/PatchInputMetadataRequest$1;
.super Ljava/lang/Object;
.source "PatchInputMetadataRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/input/PatchInputMetadataRequest;->request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
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
.field final synthetic this$0:Lclarifai2/api/request/input/PatchInputMetadataRequest;


# direct methods
.method constructor <init>(Lclarifai2/api/request/input/PatchInputMetadataRequest;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lclarifai2/api/request/input/PatchInputMetadataRequest$1;->this$0:Lclarifai2/api/request/input/PatchInputMetadataRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public httpRequest()Lokhttp3/Request;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 39
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "action"

    const-string v2, "overwrite"

    .line 40
    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    const-string v1, "inputs"

    new-instance v2, Lclarifai2/internal/JSONArrayBuilder;

    invoke-direct {v2}, Lclarifai2/internal/JSONArrayBuilder;-><init>()V

    new-instance v3, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v3}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v4, "id"

    iget-object v5, p0, Lclarifai2/api/request/input/PatchInputMetadataRequest$1;->this$0:Lclarifai2/api/request/input/PatchInputMetadataRequest;

    .line 43
    invoke-static {v5}, Lclarifai2/api/request/input/PatchInputMetadataRequest;->access$100(Lclarifai2/api/request/input/PatchInputMetadataRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v3

    const-string v4, "data"

    new-instance v5, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v5}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v6, "metadata"

    iget-object v7, p0, Lclarifai2/api/request/input/PatchInputMetadataRequest$1;->this$0:Lclarifai2/api/request/input/PatchInputMetadataRequest;

    .line 45
    invoke-static {v7}, Lclarifai2/api/request/input/PatchInputMetadataRequest;->access$000(Lclarifai2/api/request/input/PatchInputMetadataRequest;)Lcom/google/gson/JsonObject;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v5

    .line 44
    invoke-virtual {v3, v4, v5}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Lclarifai2/internal/JSONArrayBuilder;->add(Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 50
    iget-object p0, p0, Lclarifai2/api/request/input/PatchInputMetadataRequest$1;->this$0:Lclarifai2/api/request/input/PatchInputMetadataRequest;

    const-string v1, "/v2/inputs"

    invoke-static {p0, v1, v0}, Lclarifai2/api/request/input/PatchInputMetadataRequest;->access$200(Lclarifai2/api/request/input/PatchInputMetadataRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

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

    .line 54
    new-instance v0, Lclarifai2/api/request/input/PatchInputMetadataRequest$1$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/PatchInputMetadataRequest$1$1;-><init>(Lclarifai2/api/request/input/PatchInputMetadataRequest$1;)V

    return-object v0
.end method
