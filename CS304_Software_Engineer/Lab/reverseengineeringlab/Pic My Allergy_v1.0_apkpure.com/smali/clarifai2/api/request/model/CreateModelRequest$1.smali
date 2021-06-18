.class Lclarifai2/api/request/model/CreateModelRequest$1;
.super Ljava/lang/Object;
.source "CreateModelRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/model/CreateModelRequest;->request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
        "Lclarifai2/dto/model/ConceptModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/model/CreateModelRequest;


# direct methods
.method constructor <init>(Lclarifai2/api/request/model/CreateModelRequest;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lclarifai2/api/request/model/CreateModelRequest$1;->this$0:Lclarifai2/api/request/model/CreateModelRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public httpRequest()Lokhttp3/Request;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "model"

    .line 51
    iget-object v2, p0, Lclarifai2/api/request/model/CreateModelRequest$1;->this$0:Lclarifai2/api/request/model/CreateModelRequest;

    invoke-virtual {v2}, Lclarifai2/api/request/model/CreateModelRequest;->buildJSONOfModel()Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    .line 52
    invoke-virtual {v0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 53
    iget-object p0, p0, Lclarifai2/api/request/model/CreateModelRequest$1;->this$0:Lclarifai2/api/request/model/CreateModelRequest;

    const-string v1, "/v2/models"

    invoke-static {p0, v1, v0}, Lclarifai2/api/request/model/CreateModelRequest;->access$000(Lclarifai2/api/request/model/CreateModelRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONUnmarshaler<",
            "Lclarifai2/dto/model/ConceptModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 57
    new-instance v0, Lclarifai2/api/request/model/CreateModelRequest$1$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/CreateModelRequest$1$1;-><init>(Lclarifai2/api/request/model/CreateModelRequest$1;)V

    return-object v0
.end method
