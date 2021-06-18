.class Lclarifai2/api/request/model/DeleteModelsBatchRequest$1;
.super Ljava/lang/Object;
.source "DeleteModelsBatchRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/model/DeleteModelsBatchRequest;->request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
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
.field final synthetic this$0:Lclarifai2/api/request/model/DeleteModelsBatchRequest;


# direct methods
.method constructor <init>(Lclarifai2/api/request/model/DeleteModelsBatchRequest;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lclarifai2/api/request/model/DeleteModelsBatchRequest$1;->this$0:Lclarifai2/api/request/model/DeleteModelsBatchRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public httpRequest()Lokhttp3/Request;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "ids"

    new-instance v2, Lclarifai2/internal/JSONArrayBuilder;

    invoke-direct {v2}, Lclarifai2/internal/JSONArrayBuilder;-><init>()V

    iget-object v3, p0, Lclarifai2/api/request/model/DeleteModelsBatchRequest$1;->this$0:Lclarifai2/api/request/model/DeleteModelsBatchRequest;

    .line 44
    invoke-static {v3}, Lclarifai2/api/request/model/DeleteModelsBatchRequest;->access$000(Lclarifai2/api/request/model/DeleteModelsBatchRequest;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lclarifai2/api/request/model/DeleteModelsBatchRequest$1$1;

    invoke-direct {v4, p0}, Lclarifai2/api/request/model/DeleteModelsBatchRequest$1$1;-><init>(Lclarifai2/api/request/model/DeleteModelsBatchRequest$1;)V

    invoke-virtual {v2, v3, v4}, Lclarifai2/internal/JSONArrayBuilder;->addAll(Ljava/lang/Iterable;Lclarifai2/Func1;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 51
    iget-object p0, p0, Lclarifai2/api/request/model/DeleteModelsBatchRequest$1;->this$0:Lclarifai2/api/request/model/DeleteModelsBatchRequest;

    const-string v1, "/v2/models"

    invoke-static {p0, v1, v0}, Lclarifai2/api/request/model/DeleteModelsBatchRequest;->access$100(Lclarifai2/api/request/model/DeleteModelsBatchRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

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

    .line 55
    new-instance v0, Lclarifai2/api/request/model/DeleteModelsBatchRequest$1$2;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/DeleteModelsBatchRequest$1$2;-><init>(Lclarifai2/api/request/model/DeleteModelsBatchRequest$1;)V

    return-object v0
.end method
