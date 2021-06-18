.class Lclarifai2/api/request/model/SelectConceptsRequest$1$3$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "SelectConceptsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/model/SelectConceptsRequest$1$3;->fromJSON(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lclarifai2/dto/model/output/ClarifaiOutput<",
        "TPREDICTION;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lclarifai2/api/request/model/SelectConceptsRequest$1$3;


# direct methods
.method constructor <init>(Lclarifai2/api/request/model/SelectConceptsRequest$1$3;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lclarifai2/api/request/model/SelectConceptsRequest$1$3$1;->this$2:Lclarifai2/api/request/model/SelectConceptsRequest$1$3;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
