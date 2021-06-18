.class Lclarifai2/dto/input/ClarifaiInput$Adapter$1$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "ClarifaiInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/input/ClarifaiInput$Adapter$1;->serialize(Lclarifai2/dto/input/ClarifaiInput;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lclarifai2/dto/prediction/Concept;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lclarifai2/dto/input/ClarifaiInput$Adapter$1;


# direct methods
.method constructor <init>(Lclarifai2/dto/input/ClarifaiInput$Adapter$1;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lclarifai2/dto/input/ClarifaiInput$Adapter$1$1;->this$1:Lclarifai2/dto/input/ClarifaiInput$Adapter$1;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
