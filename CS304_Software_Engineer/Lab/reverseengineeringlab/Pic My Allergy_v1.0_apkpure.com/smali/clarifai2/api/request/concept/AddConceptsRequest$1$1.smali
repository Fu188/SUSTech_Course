.class Lclarifai2/api/request/concept/AddConceptsRequest$1$1;
.super Ljava/lang/Object;
.source "AddConceptsRequest.java"

# interfaces
.implements Lclarifai2/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/concept/AddConceptsRequest$1;->httpRequest()Lokhttp3/Request;
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
.field final synthetic this$1:Lclarifai2/api/request/concept/AddConceptsRequest$1;


# direct methods
.method constructor <init>(Lclarifai2/api/request/concept/AddConceptsRequest$1;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lclarifai2/api/request/concept/AddConceptsRequest$1$1;->this$1:Lclarifai2/api/request/concept/AddConceptsRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lclarifai2/dto/prediction/Concept;)Lcom/google/gson/JsonElement;
    .locals 2
    .param p1    # Lclarifai2/dto/prediction/Concept;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    new-instance p0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {p0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v0, "id"

    .line 47
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    const-string v0, "name"

    .line 48
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

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

    .line 44
    check-cast p1, Lclarifai2/dto/prediction/Concept;

    invoke-virtual {p0, p1}, Lclarifai2/api/request/concept/AddConceptsRequest$1$1;->call(Lclarifai2/dto/prediction/Concept;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
