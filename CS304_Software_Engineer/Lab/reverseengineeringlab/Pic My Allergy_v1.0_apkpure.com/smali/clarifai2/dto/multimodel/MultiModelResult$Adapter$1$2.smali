.class Lclarifai2/dto/multimodel/MultiModelResult$Adapter$1$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "MultiModelResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/multimodel/MultiModelResult$Adapter$1;->deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/multimodel/MultiModelResult;
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
        "Lclarifai2/dto/prediction/Prediction;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lclarifai2/dto/multimodel/MultiModelResult$Adapter$1;


# direct methods
.method constructor <init>(Lclarifai2/dto/multimodel/MultiModelResult$Adapter$1;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lclarifai2/dto/multimodel/MultiModelResult$Adapter$1$2;->this$1:Lclarifai2/dto/multimodel/MultiModelResult$Adapter$1;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
