.class Lclarifai2/dto/model/Model$Adapter$2;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Deserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/model/Model$Adapter;->deserializer()Lclarifai2/internal/JSONAdapterFactory$Deserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Deserializer<",
        "Lclarifai2/dto/model/Model;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/model/Model$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/model/Model$Adapter;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lclarifai2/dto/model/Model$Adapter$2;->this$0:Lclarifai2/dto/model/Model$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/model/Model;
    .locals 1
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
            "Lclarifai2/dto/model/Model;",
            ">;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lclarifai2/dto/model/Model;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 213
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string p1, "output_info"

    .line 214
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-static {p1}, Lclarifai2/dto/model/ModelType;->determineModelType(Lcom/google/gson/JsonElement;)Lclarifai2/dto/model/ModelType;

    move-result-object p1

    .line 216
    sget-object p2, Lclarifai2/dto/model/ModelType;->DEMOGRAPHICS:Lclarifai2/dto/model/ModelType;

    if-eq p1, p2, :cond_0

    sget-object p2, Lclarifai2/dto/model/ModelType;->FACE_DETECTION:Lclarifai2/dto/model/ModelType;

    if-ne p1, p2, :cond_2

    :cond_0
    const-string p1, "name"

    .line 217
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "demographics"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 218
    sget-object p1, Lclarifai2/dto/model/ModelType;->DEMOGRAPHICS:Lclarifai2/dto/model/ModelType;

    goto :goto_0

    .line 220
    :cond_1
    sget-object p1, Lclarifai2/dto/model/ModelType;->FACE_DETECTION:Lclarifai2/dto/model/ModelType;

    .line 223
    :cond_2
    :goto_0
    invoke-static {p1}, Lclarifai2/dto/model/Model;->access$000(Lclarifai2/dto/model/ModelType;)Lclarifai2/dto/model/Model$Builder;

    move-result-object p1

    const-string p2, "id"

    .line 224
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lclarifai2/dto/model/Model$Builder;->id(Ljava/lang/String;)Lclarifai2/dto/model/Model$Builder;

    move-result-object p1

    const-string p2, "name"

    .line 225
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lclarifai2/dto/model/Model$Builder;->name(Ljava/lang/String;)Lclarifai2/dto/model/Model$Builder;

    move-result-object p1

    const-string p2, "created_at"

    .line 226
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    const-class v0, Ljava/util/Date;

    invoke-static {p3, p2, v0}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Date;

    invoke-interface {p1, p2}, Lclarifai2/dto/model/Model$Builder;->createdAt(Ljava/util/Date;)Lclarifai2/dto/model/Model$Builder;

    move-result-object p1

    const-string p2, "app_id"

    .line 227
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-static {p2}, Lclarifai2/internal/InternalUtil;->isJsonNull(Lcom/google/gson/JsonElement;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    const-string p2, "app_id"

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-interface {p1, p2}, Lclarifai2/dto/model/Model$Builder;->appID(Ljava/lang/String;)Lclarifai2/dto/model/Model$Builder;

    move-result-object p1

    const-string p2, "model_version"

    .line 228
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    const-class v0, Lclarifai2/dto/model/ModelVersion;

    invoke-static {p3, p2, v0}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lclarifai2/dto/model/ModelVersion;

    invoke-interface {p1, p2}, Lclarifai2/dto/model/Model$Builder;->modelVersion(Lclarifai2/dto/model/ModelVersion;)Lclarifai2/dto/model/Model$Builder;

    move-result-object p1

    const-string p2, "output_info"

    .line 229
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    const-class p2, Lclarifai2/dto/model/output_info/OutputInfo;

    invoke-static {p3, p0, p2}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lclarifai2/dto/model/output_info/OutputInfo;

    invoke-interface {p1, p0}, Lclarifai2/dto/model/Model$Builder;->_outputInfo(Lclarifai2/dto/model/output_info/OutputInfo;)Lclarifai2/dto/model/Model$Builder;

    move-result-object p0

    .line 230
    invoke-static {p3}, Lclarifai2/internal/InternalUtil;->clientInstance(Lcom/google/gson/Gson;)Lclarifai2/api/ClarifaiClient;

    move-result-object p1

    invoke-interface {p0, p1}, Lclarifai2/dto/model/Model$Builder;->client(Lclarifai2/api/ClarifaiClient;)Lclarifai2/dto/model/Model$Builder;

    move-result-object p0

    .line 231
    invoke-interface {p0}, Lclarifai2/dto/model/Model$Builder;->build()Lclarifai2/dto/model/Model;

    move-result-object p0

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

    .line 206
    invoke-virtual {p0, p1, p2, p3}, Lclarifai2/dto/model/Model$Adapter$2;->deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/model/Model;

    move-result-object p0

    return-object p0
.end method
