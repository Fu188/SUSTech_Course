.class Lclarifai2/dto/input/ClarifaiInput$Adapter$1;
.super Ljava/lang/Object;
.source "ClarifaiInput.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/input/ClarifaiInput$Adapter;->serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
        "Lclarifai2/dto/input/ClarifaiInput;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/input/ClarifaiInput$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/input/ClarifaiInput$Adapter;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lclarifai2/dto/input/ClarifaiInput$Adapter$1;->this$0:Lclarifai2/dto/input/ClarifaiInput$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lclarifai2/dto/input/ClarifaiInput;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 7
    .param p1    # Lclarifai2/dto/input/ClarifaiInput;
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

    .line 204
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0

    .line 206
    :cond_0
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "id"

    .line 207
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    .line 208
    new-instance v1, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v1}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v2, "concepts"

    .line 209
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->concepts()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lclarifai2/dto/input/ClarifaiInput$Adapter$1$1;

    invoke-direct {v4, p0}, Lclarifai2/dto/input/ClarifaiInput$Adapter$1$1;-><init>(Lclarifai2/dto/input/ClarifaiInput$Adapter$1;)V

    invoke-static {p2, v3, v4}, Lclarifai2/internal/InternalUtil;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    const-string v1, "metadata"

    .line 210
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->metadata()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    .line 211
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->image()Lclarifai2/dto/input/ClarifaiImage;

    move-result-object v1

    instance-of v1, v1, Lclarifai2/dto/input/ClarifaiVideo;

    if-eqz v1, :cond_1

    const-string v1, "video"

    .line 212
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->image()Lclarifai2/dto/input/ClarifaiImage;

    move-result-object v2

    const-class v3, Lclarifai2/dto/input/ClarifaiImage;

    invoke-static {p2, v2, v3}, Lclarifai2/internal/InternalUtil;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "image"

    .line 214
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->image()Lclarifai2/dto/input/ClarifaiImage;

    move-result-object v2

    const-class v3, Lclarifai2/dto/input/ClarifaiImage;

    invoke-static {p2, v2, v3}, Lclarifai2/internal/InternalUtil;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    .line 216
    :goto_0
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->geo()Lclarifai2/dto/PointF;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "geo"

    .line 217
    new-instance v2, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v2}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v3, "geo_point"

    new-instance v4, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v4}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v5, "latitude"

    .line 219
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->geo()Lclarifai2/dto/PointF;

    move-result-object v6

    invoke-virtual {v6}, Lclarifai2/dto/PointF;->x()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Number;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v4

    const-string v5, "longitude"

    .line 220
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->geo()Lclarifai2/dto/PointF;

    move-result-object v6

    invoke-virtual {v6}, Lclarifai2/dto/PointF;->y()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Number;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v4

    .line 218
    invoke-virtual {v2, v3, v4}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v2

    .line 217
    invoke-virtual {p0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    .line 222
    :cond_2
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->createdAt()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "created_at"

    .line 223
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->createdAt()Ljava/util/Date;

    move-result-object p1

    const-class v2, Ljava/util/Date;

    invoke-static {p2, p1, v2}, Lclarifai2/internal/InternalUtil;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lclarifai2/internal/JSONObjectBuilder;->addIfNotNull(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    :cond_3
    const-string p1, "data"

    .line 225
    invoke-virtual {v0, p1, p0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    .line 226
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

    .line 201
    check-cast p1, Lclarifai2/dto/input/ClarifaiInput;

    invoke-virtual {p0, p1, p2}, Lclarifai2/dto/input/ClarifaiInput$Adapter$1;->serialize(Lclarifai2/dto/input/ClarifaiInput;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
