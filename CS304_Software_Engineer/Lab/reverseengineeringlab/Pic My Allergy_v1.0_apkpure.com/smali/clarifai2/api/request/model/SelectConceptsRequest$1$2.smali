.class Lclarifai2/api/request/model/SelectConceptsRequest$1$2;
.super Ljava/lang/Object;
.source "SelectConceptsRequest.java"

# interfaces
.implements Lclarifai2/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/model/SelectConceptsRequest$1;->httpRequest()Lokhttp3/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/Func1<",
        "Lclarifai2/dto/prediction/Concept;",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lclarifai2/api/request/model/SelectConceptsRequest$1;


# direct methods
.method constructor <init>(Lclarifai2/api/request/model/SelectConceptsRequest$1;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lclarifai2/api/request/model/SelectConceptsRequest$1$2;->this$1:Lclarifai2/api/request/model/SelectConceptsRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lclarifai2/dto/prediction/Concept;)Lcom/google/gson/JsonElement;
    .locals 0
    .param p1    # Lclarifai2/dto/prediction/Concept;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 88
    iget-object p0, p0, Lclarifai2/api/request/model/SelectConceptsRequest$1$2;->this$1:Lclarifai2/api/request/model/SelectConceptsRequest$1;

    iget-object p0, p0, Lclarifai2/api/request/model/SelectConceptsRequest$1;->this$0:Lclarifai2/api/request/model/SelectConceptsRequest;

    invoke-static {p0}, Lclarifai2/api/request/model/SelectConceptsRequest;->access$300(Lclarifai2/api/request/model/SelectConceptsRequest;)Lclarifai2/api/BaseClarifaiClient;

    move-result-object p0

    iget-object p0, p0, Lclarifai2/api/BaseClarifaiClient;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 86
    check-cast p1, Lclarifai2/dto/prediction/Concept;

    invoke-virtual {p0, p1}, Lclarifai2/api/request/model/SelectConceptsRequest$1$2;->call(Lclarifai2/dto/prediction/Concept;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
