.class Lclarifai2/dto/feedback/ConceptFeedback$Adapter$1;
.super Ljava/lang/Object;
.source "ConceptFeedback.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/feedback/ConceptFeedback$Adapter;->serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
        "Lclarifai2/dto/feedback/ConceptFeedback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/feedback/ConceptFeedback$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/feedback/ConceptFeedback$Adapter;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lclarifai2/dto/feedback/ConceptFeedback$Adapter$1;->this$0:Lclarifai2/dto/feedback/ConceptFeedback$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lclarifai2/dto/feedback/ConceptFeedback;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 1
    .param p1    # Lclarifai2/dto/feedback/ConceptFeedback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    .line 38
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0

    .line 40
    :cond_0
    new-instance p0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {p0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string p2, "id"

    .line 42
    invoke-virtual {p1}, Lclarifai2/dto/feedback/ConceptFeedback;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    const-string p2, "value"

    .line 43
    invoke-virtual {p1}, Lclarifai2/dto/feedback/ConceptFeedback;->value()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Boolean;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    check-cast p1, Lclarifai2/dto/feedback/ConceptFeedback;

    invoke-virtual {p0, p1, p2}, Lclarifai2/dto/feedback/ConceptFeedback$Adapter$1;->serialize(Lclarifai2/dto/feedback/ConceptFeedback;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
