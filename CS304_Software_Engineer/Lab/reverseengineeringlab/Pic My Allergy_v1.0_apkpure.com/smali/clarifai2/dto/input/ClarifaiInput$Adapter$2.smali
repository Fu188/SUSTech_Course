.class Lclarifai2/dto/input/ClarifaiInput$Adapter$2;
.super Ljava/lang/Object;
.source "ClarifaiInput.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Deserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/input/ClarifaiInput$Adapter;->deserializer()Lclarifai2/internal/JSONAdapterFactory$Deserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Deserializer<",
        "Lclarifai2/dto/input/ClarifaiInput;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/input/ClarifaiInput$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/input/ClarifaiInput$Adapter;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lclarifai2/dto/input/ClarifaiInput$Adapter$2;->this$0:Lclarifai2/dto/input/ClarifaiInput$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/input/ClarifaiInput;
    .locals 7
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
            "Lclarifai2/dto/input/ClarifaiInput;",
            ">;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lclarifai2/dto/input/ClarifaiInput;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 238
    const-class p2, Lcom/google/gson/JsonObject;

    invoke-static {p1, p2}, Lclarifai2/internal/InternalUtil;->assertJsonIs(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;

    const-string p2, "data"

    .line 239
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p2

    const-string v0, "concepts"

    .line 243
    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    new-instance v1, Lclarifai2/dto/input/ClarifaiInput$Adapter$2$1;

    invoke-direct {v1, p0}, Lclarifai2/dto/input/ClarifaiInput$Adapter$2$1;-><init>(Lclarifai2/dto/input/ClarifaiInput$Adapter$2;)V

    invoke-static {p3, v0, v1}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    :goto_0
    move-object v5, p0

    goto :goto_1

    .line 247
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :goto_1
    const-string p0, "metadata"

    .line 251
    invoke-virtual {p2, p0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "metadata"

    invoke-virtual {p2, p0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    :goto_2
    move-object v4, p0

    goto :goto_3

    :cond_1
    new-instance p0, Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/google/gson/JsonObject;-><init>()V

    goto :goto_2

    :goto_3
    const-string p0, "geo"

    .line 253
    invoke-virtual {p2, p0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "geo"

    invoke-virtual {p2, p0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v0, "geo_point"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    goto :goto_4

    :cond_2
    new-instance p0, Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/google/gson/JsonObject;-><init>()V

    :goto_4
    const-string v0, "latitude"

    .line 254
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v0, "latitude"

    .line 255
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    const-string v2, "longitude"

    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p0

    invoke-static {v0, p0}, Lclarifai2/dto/PointF;->at(FF)Lclarifai2/dto/PointF;

    move-result-object p0

    move-object v6, p0

    goto :goto_5

    :cond_3
    move-object v6, v1

    .line 258
    :goto_5
    new-instance p0, Lclarifai2/dto/input/AutoValue_ClarifaiInput;

    const-string v0, "id"

    .line 259
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-static {v0}, Lclarifai2/internal/InternalUtil;->isJsonNull(Lcom/google/gson/JsonElement;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_6

    :cond_4
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_6
    const-string v0, "created_at"

    .line 260
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Ljava/util/Date;

    invoke-static {p3, p1, v0}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/Date;

    const-string p1, "video"

    .line 261
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "video"

    .line 262
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class p2, Lclarifai2/dto/input/ClarifaiImage;

    invoke-static {p3, p1, p2}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lclarifai2/dto/input/ClarifaiImage;

    :goto_7
    move-object v3, p1

    goto :goto_8

    :cond_5
    const-string p1, "image"

    .line 263
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class p2, Lclarifai2/dto/input/ClarifaiImage;

    invoke-static {p3, p1, p2}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lclarifai2/dto/input/ClarifaiImage;

    goto :goto_7

    :goto_8
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;-><init>(Ljava/lang/String;Ljava/util/Date;Lclarifai2/dto/input/ClarifaiImage;Lcom/google/gson/JsonObject;Ljava/util/List;Lclarifai2/dto/PointF;)V

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

    .line 232
    invoke-virtual {p0, p1, p2, p3}, Lclarifai2/dto/input/ClarifaiInput$Adapter$2;->deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/input/ClarifaiInput;

    move-result-object p0

    return-object p0
.end method
