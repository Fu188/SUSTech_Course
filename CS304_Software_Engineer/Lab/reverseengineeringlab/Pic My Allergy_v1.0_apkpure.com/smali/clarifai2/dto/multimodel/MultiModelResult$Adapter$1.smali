.class Lclarifai2/dto/multimodel/MultiModelResult$Adapter$1;
.super Ljava/lang/Object;
.source "MultiModelResult.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Deserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/multimodel/MultiModelResult$Adapter;->deserializer()Lclarifai2/internal/JSONAdapterFactory$Deserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Deserializer<",
        "Lclarifai2/dto/multimodel/MultiModelResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/multimodel/MultiModelResult$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/multimodel/MultiModelResult$Adapter;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lclarifai2/dto/multimodel/MultiModelResult$Adapter$1;->this$0:Lclarifai2/dto/multimodel/MultiModelResult$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/multimodel/MultiModelResult;
    .locals 3
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
            "Lclarifai2/dto/multimodel/MultiModelResult;",
            ">;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lclarifai2/dto/multimodel/MultiModelResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 47
    const-class p2, Lcom/google/gson/JsonObject;

    invoke-static {p1, p2}, Lclarifai2/internal/InternalUtil;->assertJsonIs(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;

    const-string p2, "status"

    .line 48
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    const-class v0, Lclarifai2/dto/ClarifaiStatus;

    invoke-static {p3, p2, v0}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lclarifai2/dto/ClarifaiStatus;

    const-string v0, "input"

    .line 49
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const-class v1, Lclarifai2/dto/input/ClarifaiInput;

    invoke-static {p3, v0, v1}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclarifai2/dto/input/ClarifaiInput;

    const-string v1, "outputs"

    .line 51
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    new-instance v2, Lclarifai2/dto/multimodel/MultiModelResult$Adapter$1$1;

    invoke-direct {v2, p0}, Lclarifai2/dto/multimodel/MultiModelResult$Adapter$1$1;-><init>(Lclarifai2/dto/multimodel/MultiModelResult$Adapter$1;)V

    .line 50
    invoke-static {p3, v1, v2}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lclarifai2/dto/model/output/ClarifaiOutput;

    const-string v1, "outputs"

    .line 55
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    new-instance v1, Lclarifai2/dto/multimodel/MultiModelResult$Adapter$1$2;

    invoke-direct {v1, p0}, Lclarifai2/dto/multimodel/MultiModelResult$Adapter$1$2;-><init>(Lclarifai2/dto/multimodel/MultiModelResult$Adapter$1;)V

    invoke-static {p3, p1, v1}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 56
    new-instance p1, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;

    invoke-direct {p1, p2, v0, p0}, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;-><init>(Lclarifai2/dto/ClarifaiStatus;Lclarifai2/dto/input/ClarifaiInput;Ljava/util/List;)V

    return-object p1
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

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lclarifai2/dto/multimodel/MultiModelResult$Adapter$1;->deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/multimodel/MultiModelResult;

    move-result-object p0

    return-object p0
.end method
