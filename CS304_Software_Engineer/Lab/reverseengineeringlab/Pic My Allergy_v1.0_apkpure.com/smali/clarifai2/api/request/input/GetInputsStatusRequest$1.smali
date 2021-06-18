.class Lclarifai2/api/request/input/GetInputsStatusRequest$1;
.super Ljava/lang/Object;
.source "GetInputsStatusRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/input/GetInputsStatusRequest;->request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
        "Lclarifai2/dto/input/ClarifaiInputsStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/input/GetInputsStatusRequest;


# direct methods
.method constructor <init>(Lclarifai2/api/request/input/GetInputsStatusRequest;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lclarifai2/api/request/input/GetInputsStatusRequest$1;->this$0:Lclarifai2/api/request/input/GetInputsStatusRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public httpRequest()Lokhttp3/Request;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    iget-object p0, p0, Lclarifai2/api/request/input/GetInputsStatusRequest$1;->this$0:Lclarifai2/api/request/input/GetInputsStatusRequest;

    const-string v0, "/v2/inputs/status"

    invoke-static {p0, v0}, Lclarifai2/api/request/input/GetInputsStatusRequest;->access$000(Lclarifai2/api/request/input/GetInputsStatusRequest;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONUnmarshaler<",
            "Lclarifai2/dto/input/ClarifaiInputsStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    new-instance v0, Lclarifai2/api/request/input/GetInputsStatusRequest$1$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/GetInputsStatusRequest$1$1;-><init>(Lclarifai2/api/request/input/GetInputsStatusRequest$1;)V

    return-object v0
.end method
