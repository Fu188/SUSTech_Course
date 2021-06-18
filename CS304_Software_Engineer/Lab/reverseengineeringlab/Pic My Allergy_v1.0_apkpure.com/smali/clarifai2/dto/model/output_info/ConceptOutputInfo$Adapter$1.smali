.class Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$1;
.super Ljava/lang/Object;
.source "ConceptOutputInfo.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter;->serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
        "Lclarifai2/dto/model/output_info/ConceptOutputInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$1;->this$0:Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lclarifai2/dto/model/output_info/ConceptOutputInfo;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 7
    .param p1    # Lclarifai2/dto/model/output_info/ConceptOutputInfo;
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

    .line 72
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0

    .line 74
    :cond_0
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "data"

    .line 75
    new-instance v2, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v2}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v3, "concepts"

    new-instance v4, Lclarifai2/internal/JSONArrayBuilder;

    invoke-direct {v4}, Lclarifai2/internal/JSONArrayBuilder;-><init>()V

    .line 77
    invoke-virtual {p1}, Lclarifai2/dto/model/output_info/ConceptOutputInfo;->concepts()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$1$1;

    invoke-direct {v6, p0, p2}, Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$1$1;-><init>(Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$1;Lcom/google/gson/Gson;)V

    invoke-virtual {v4, v5, v6}, Lclarifai2/internal/JSONArrayBuilder;->addAll(Ljava/lang/Iterable;Lclarifai2/Func1;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object p0

    .line 76
    invoke-virtual {v2, v3, p0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    .line 75
    invoke-virtual {v0, v1, p0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    .line 84
    new-instance p0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {p0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string p2, "concepts_mutually_exclusive"

    .line 85
    invoke-virtual {p1}, Lclarifai2/dto/model/output_info/ConceptOutputInfo;->areConceptsMutuallyExclusive()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Boolean;)Lclarifai2/internal/JSONObjectBuilder;

    const-string p2, "closed_environment"

    .line 86
    invoke-virtual {p1}, Lclarifai2/dto/model/output_info/ConceptOutputInfo;->isEnvironmentClosed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Boolean;)Lclarifai2/internal/JSONObjectBuilder;

    .line 87
    invoke-virtual {p1}, Lclarifai2/dto/model/output_info/ConceptOutputInfo;->language()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p2, "language"

    .line 88
    invoke-virtual {p1}, Lclarifai2/dto/model/output_info/ConceptOutputInfo;->language()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    :cond_1
    const-string p1, "output_config"

    .line 90
    invoke-virtual {p0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    .line 91
    invoke-virtual {v0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

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

    .line 69
    check-cast p1, Lclarifai2/dto/model/output_info/ConceptOutputInfo;

    invoke-virtual {p0, p1, p2}, Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$1;->serialize(Lclarifai2/dto/model/output_info/ConceptOutputInfo;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
