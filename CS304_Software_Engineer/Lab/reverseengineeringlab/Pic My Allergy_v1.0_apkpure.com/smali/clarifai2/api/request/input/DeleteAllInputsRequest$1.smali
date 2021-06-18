.class Lclarifai2/api/request/input/DeleteAllInputsRequest$1;
.super Ljava/lang/Object;
.source "DeleteAllInputsRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/input/DeleteAllInputsRequest;->request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
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
.field final synthetic this$0:Lclarifai2/api/request/input/DeleteAllInputsRequest;


# direct methods
.method constructor <init>(Lclarifai2/api/request/input/DeleteAllInputsRequest;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lclarifai2/api/request/input/DeleteAllInputsRequest$1;->this$0:Lclarifai2/api/request/input/DeleteAllInputsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public httpRequest()Lokhttp3/Request;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    iget-object p0, p0, Lclarifai2/api/request/input/DeleteAllInputsRequest$1;->this$0:Lclarifai2/api/request/input/DeleteAllInputsRequest;

    const-string v0, "/v2/inputs"

    new-instance v1, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v1}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v2, "delete_all"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Boolean;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lclarifai2/api/request/input/DeleteAllInputsRequest;->access$000(Lclarifai2/api/request/input/DeleteAllInputsRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

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

    .line 27
    new-instance v0, Lclarifai2/api/request/input/DeleteAllInputsRequest$1$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/DeleteAllInputsRequest$1$1;-><init>(Lclarifai2/api/request/input/DeleteAllInputsRequest$1;)V

    return-object v0
.end method
