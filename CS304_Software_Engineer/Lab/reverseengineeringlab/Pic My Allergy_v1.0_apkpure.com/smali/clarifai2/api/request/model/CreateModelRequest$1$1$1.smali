.class Lclarifai2/api/request/model/CreateModelRequest$1$1$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "CreateModelRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/model/CreateModelRequest$1$1;->fromJSON(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)Lclarifai2/dto/model/ConceptModel;
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
.field final synthetic this$2:Lclarifai2/api/request/model/CreateModelRequest$1$1;


# direct methods
.method constructor <init>(Lclarifai2/api/request/model/CreateModelRequest$1$1;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lclarifai2/api/request/model/CreateModelRequest$1$1$1;->this$2:Lclarifai2/api/request/model/CreateModelRequest$1$1;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
