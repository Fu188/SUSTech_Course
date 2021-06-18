.class Lclarifai2/api/request/concept/GetConceptsRequest$1$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "GetConceptsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/concept/GetConceptsRequest$1;->fromJSON(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)Ljava/util/List;
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
.field final synthetic this$1:Lclarifai2/api/request/concept/GetConceptsRequest$1;


# direct methods
.method constructor <init>(Lclarifai2/api/request/concept/GetConceptsRequest$1;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lclarifai2/api/request/concept/GetConceptsRequest$1$1;->this$1:Lclarifai2/api/request/concept/GetConceptsRequest$1;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
