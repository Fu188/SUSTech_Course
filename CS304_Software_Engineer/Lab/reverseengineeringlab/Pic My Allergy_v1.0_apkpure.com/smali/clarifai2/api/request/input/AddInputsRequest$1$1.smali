.class Lclarifai2/api/request/input/AddInputsRequest$1$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "AddInputsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/input/AddInputsRequest$1;->httpRequest()Lokhttp3/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lclarifai2/dto/input/ClarifaiInput;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lclarifai2/api/request/input/AddInputsRequest$1;


# direct methods
.method constructor <init>(Lclarifai2/api/request/input/AddInputsRequest$1;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lclarifai2/api/request/input/AddInputsRequest$1$1;->this$1:Lclarifai2/api/request/input/AddInputsRequest$1;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
