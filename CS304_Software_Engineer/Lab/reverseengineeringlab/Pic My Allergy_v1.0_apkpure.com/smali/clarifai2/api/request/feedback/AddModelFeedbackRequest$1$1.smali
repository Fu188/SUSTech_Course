.class Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1$1;
.super Ljava/lang/Object;
.source "AddModelFeedbackRequest.java"

# interfaces
.implements Lclarifai2/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;->makeConceptsJsonArray()Lclarifai2/internal/JSONArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/Func1<",
        "Lclarifai2/dto/feedback/ConceptFeedback;",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;


# direct methods
.method constructor <init>(Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1$1;->this$1:Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lclarifai2/dto/feedback/ConceptFeedback;)Lcom/google/gson/JsonElement;
    .locals 2
    .param p1    # Lclarifai2/dto/feedback/ConceptFeedback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 124
    new-instance p0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {p0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v0, "id"

    .line 125
    invoke-virtual {p1}, Lclarifai2/dto/feedback/ConceptFeedback;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    const-string v0, "value"

    .line 126
    invoke-virtual {p1}, Lclarifai2/dto/feedback/ConceptFeedback;->value()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Boolean;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    .line 127
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

    .line 122
    check-cast p1, Lclarifai2/dto/feedback/ConceptFeedback;

    invoke-virtual {p0, p1}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest$1$1;->call(Lclarifai2/dto/feedback/ConceptFeedback;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
