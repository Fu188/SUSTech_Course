.class Lclarifai2/api/request/model/TrainModelRequest$1;
.super Ljava/lang/Object;
.source "TrainModelRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/model/TrainModelRequest;->request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
        "Lclarifai2/dto/model/Model<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/model/TrainModelRequest;


# direct methods
.method constructor <init>(Lclarifai2/api/request/model/TrainModelRequest;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lclarifai2/api/request/model/TrainModelRequest$1;->this$0:Lclarifai2/api/request/model/TrainModelRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public httpRequest()Lokhttp3/Request;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lclarifai2/api/request/model/TrainModelRequest$1;->this$0:Lclarifai2/api/request/model/TrainModelRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/v2/models/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/api/request/model/TrainModelRequest$1;->this$0:Lclarifai2/api/request/model/TrainModelRequest;

    invoke-static {p0}, Lclarifai2/api/request/model/TrainModelRequest;->access$000(Lclarifai2/api/request/model/TrainModelRequest;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/versions"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-static {v0, p0, v1}, Lclarifai2/api/request/model/TrainModelRequest;->access$100(Lclarifai2/api/request/model/TrainModelRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONUnmarshaler<",
            "Lclarifai2/dto/model/Model<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    new-instance v0, Lclarifai2/api/request/model/TrainModelRequest$1$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/TrainModelRequest$1$1;-><init>(Lclarifai2/api/request/model/TrainModelRequest$1;)V

    return-object v0
.end method
