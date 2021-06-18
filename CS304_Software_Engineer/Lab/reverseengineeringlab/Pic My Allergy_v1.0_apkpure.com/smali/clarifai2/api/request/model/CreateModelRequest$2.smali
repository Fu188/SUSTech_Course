.class Lclarifai2/api/request/model/CreateModelRequest$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "CreateModelRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/model/CreateModelRequest;->buildJSONOfModel()Lcom/google/gson/JsonElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lclarifai2/dto/model/Model<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/model/CreateModelRequest;


# direct methods
.method constructor <init>(Lclarifai2/api/request/model/CreateModelRequest;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lclarifai2/api/request/model/CreateModelRequest$2;->this$0:Lclarifai2/api/request/model/CreateModelRequest;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
