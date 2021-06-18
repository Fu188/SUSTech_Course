.class Lclarifai2/dto/prediction/Logo$Adapter$1;
.super Ljava/lang/Object;
.source "Logo.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Deserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/prediction/Logo$Adapter;->deserializer()Lclarifai2/internal/JSONAdapterFactory$Deserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Deserializer<",
        "Lclarifai2/dto/prediction/Logo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/prediction/Logo$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/prediction/Logo$Adapter;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lclarifai2/dto/prediction/Logo$Adapter$1;->this$0:Lclarifai2/dto/prediction/Logo$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/prediction/Logo;
    .locals 2
    .param p1    # Lcom/google/gson/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/reflect/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Lcom/google/gson/reflect/TypeToken<",
            "Lclarifai2/dto/prediction/Logo;",
            ">;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lclarifai2/dto/prediction/Logo;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 41
    const-class p0, Lcom/google/gson/JsonObject;

    invoke-static {p1, p0}, Lclarifai2/internal/InternalUtil;->assertJsonIs(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonObject;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p2

    const-string v0, "region_info"

    .line 44
    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p2

    const-string v0, "bounding_box"

    .line 45
    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p2

    const-class v0, Lclarifai2/dto/input/Crop;

    .line 43
    invoke-static {p3, p2, v0}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lclarifai2/dto/input/Crop;

    const-string v0, "data"

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v0, "concepts"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 47
    const-class v1, Lclarifai2/dto/prediction/Concept;

    invoke-static {p3, v0, v1}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_0
    new-instance p0, Lclarifai2/dto/prediction/AutoValue_Logo;

    invoke-direct {p0, p2, p1}, Lclarifai2/dto/prediction/AutoValue_Logo;-><init>(Lclarifai2/dto/input/Crop;Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/google/gson/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/reflect/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lclarifai2/dto/prediction/Logo$Adapter$1;->deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/prediction/Logo;

    move-result-object p0

    return-object p0
.end method
