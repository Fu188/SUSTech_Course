.class Lclarifai2/dto/prediction/Concept$Adapter$1;
.super Ljava/lang/Object;
.source "Concept.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/prediction/Concept$Adapter;->serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
        "Lclarifai2/dto/prediction/Concept;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/prediction/Concept$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/prediction/Concept$Adapter;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lclarifai2/dto/prediction/Concept$Adapter$1;->this$0:Lclarifai2/dto/prediction/Concept$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lclarifai2/dto/prediction/Concept;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 3
    .param p1    # Lclarifai2/dto/prediction/Concept;
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

    .line 86
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0

    .line 88
    :cond_0
    new-instance p0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {p0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v0, "id"

    .line 90
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    const-string v0, "name"

    .line 91
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    const-string v0, "created_at"

    .line 92
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->createdAt()Ljava/util/Date;

    move-result-object v1

    const-class v2, Ljava/util/Date;

    invoke-static {p2, v1, v2}, Lclarifai2/internal/InternalUtil;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    const-string p2, "app_id"

    .line 93
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->appID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    const-string p2, "value"

    .line 94
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->value()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Number;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    const-string p2, "language"

    .line 95
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Concept;->language()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    .line 96
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

    .line 83
    check-cast p1, Lclarifai2/dto/prediction/Concept;

    invoke-virtual {p0, p1, p2}, Lclarifai2/dto/prediction/Concept$Adapter$1;->serialize(Lclarifai2/dto/prediction/Concept;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
