.class Lclarifai2/dto/feedback/FaceFeedback$Adapter$1;
.super Ljava/lang/Object;
.source "FaceFeedback.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/feedback/FaceFeedback$Adapter;->serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
        "Lclarifai2/dto/feedback/FaceFeedback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/feedback/FaceFeedback$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/feedback/FaceFeedback$Adapter;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lclarifai2/dto/feedback/FaceFeedback$Adapter$1;->this$0:Lclarifai2/dto/feedback/FaceFeedback$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lclarifai2/dto/feedback/FaceFeedback;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 7
    .param p1    # Lclarifai2/dto/feedback/FaceFeedback;
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

    .line 45
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0

    .line 47
    :cond_0
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "identity"

    .line 48
    new-instance v2, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v2}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v3, "concepts"

    new-instance v4, Lclarifai2/internal/JSONArrayBuilder;

    invoke-direct {v4}, Lclarifai2/internal/JSONArrayBuilder;-><init>()V

    .line 51
    invoke-virtual {p1}, Lclarifai2/dto/feedback/FaceFeedback;->identityConceptFeedback()Ljava/util/Collection;

    move-result-object v5

    new-instance v6, Lclarifai2/dto/feedback/FaceFeedback$Adapter$1$2;

    invoke-direct {v6, p0, p2}, Lclarifai2/dto/feedback/FaceFeedback$Adapter$1$2;-><init>(Lclarifai2/dto/feedback/FaceFeedback$Adapter$1;Lcom/google/gson/Gson;)V

    invoke-virtual {v4, v5, v6}, Lclarifai2/internal/JSONArrayBuilder;->addAll(Ljava/lang/Iterable;Lclarifai2/Func1;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object v4

    .line 50
    invoke-virtual {v2, v3, v4}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    const-string v1, "age_appearance"

    new-instance v2, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v2}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v3, "concepts"

    new-instance v4, Lclarifai2/internal/JSONArrayBuilder;

    invoke-direct {v4}, Lclarifai2/internal/JSONArrayBuilder;-><init>()V

    .line 59
    invoke-virtual {p1}, Lclarifai2/dto/feedback/FaceFeedback;->ageConceptFeedback()Ljava/util/Collection;

    move-result-object p1

    new-instance v5, Lclarifai2/dto/feedback/FaceFeedback$Adapter$1$1;

    invoke-direct {v5, p0, p2}, Lclarifai2/dto/feedback/FaceFeedback$Adapter$1$1;-><init>(Lclarifai2/dto/feedback/FaceFeedback$Adapter$1;Lcom/google/gson/Gson;)V

    invoke-virtual {v4, p1, v5}, Lclarifai2/internal/JSONArrayBuilder;->addAll(Ljava/lang/Iterable;Lclarifai2/Func1;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object p0

    .line 58
    invoke-virtual {v2, v3, p0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    .line 57
    invoke-virtual {v0, v1, p0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    .line 65
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

    .line 42
    check-cast p1, Lclarifai2/dto/feedback/FaceFeedback;

    invoke-virtual {p0, p1, p2}, Lclarifai2/dto/feedback/FaceFeedback$Adapter$1;->serialize(Lclarifai2/dto/feedback/FaceFeedback;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
