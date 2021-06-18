.class Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$2$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "ConceptOutputInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$2;->deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/model/output_info/ConceptOutputInfo;
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
.field final synthetic this$1:Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$2;


# direct methods
.method constructor <init>(Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$2;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$2$1;->this$1:Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$2;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
