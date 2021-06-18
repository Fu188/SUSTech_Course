.class Lclarifai2/api/request/input/DeleteInputsBatchRequest$1;
.super Ljava/lang/Object;
.source "DeleteInputsBatchRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/input/DeleteInputsBatchRequest;->request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
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
.field final synthetic this$0:Lclarifai2/api/request/input/DeleteInputsBatchRequest;


# direct methods
.method constructor <init>(Lclarifai2/api/request/input/DeleteInputsBatchRequest;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lclarifai2/api/request/input/DeleteInputsBatchRequest$1;->this$0:Lclarifai2/api/request/input/DeleteInputsBatchRequest;

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

    iget-object v3, p0, Lclarifai2/api/request/input/DeleteInputsBatchRequest$1;->this$0:Lclarifai2/api/request/input/DeleteInputsBatchRequest;

    .line 43
    invoke-static {v3}, Lclarifai2/api/request/input/DeleteInputsBatchRequest;->access$000(Lclarifai2/api/request/input/DeleteInputsBatchRequest;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lclarifai2/api/request/input/DeleteInputsBatchRequest$1$1;

    invoke-direct {v4, p0}, Lclarifai2/api/request/input/DeleteInputsBatchRequest$1$1;-><init>(Lclarifai2/api/request/input/DeleteInputsBatchRequest$1;)V

    invoke-virtual {v2, v3, v4}, Lclarifai2/internal/JSONArrayBuilder;->addAll(Ljava/lang/Iterable;Lclarifai2/Func1;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object v2

    .line 42
    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 49
    iget-object p0, p0, Lclarifai2/api/request/input/DeleteInputsBatchRequest$1;->this$0:Lclarifai2/api/request/input/DeleteInputsBatchRequest;

    const-string v1, "v2/inputs"

    invoke-static {p0, v1, v0}, Lclarifai2/api/request/input/DeleteInputsBatchRequest;->access$100(Lclarifai2/api/request/input/DeleteInputsBatchRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

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

    .line 53
    new-instance v0, Lclarifai2/api/request/input/DeleteInputsBatchRequest$1$2;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/DeleteInputsBatchRequest$1$2;-><init>(Lclarifai2/api/request/input/DeleteInputsBatchRequest$1;)V

    return-object v0
.end method
