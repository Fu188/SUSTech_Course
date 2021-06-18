.class Lclarifai2/dto/input/Crop$Adapter$2;
.super Ljava/lang/Object;
.source "Crop.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Deserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/input/Crop$Adapter;->deserializer()Lclarifai2/internal/JSONAdapterFactory$Deserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Deserializer<",
        "Lclarifai2/dto/input/Crop;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/input/Crop$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/input/Crop$Adapter;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lclarifai2/dto/input/Crop$Adapter$2;->this$0:Lclarifai2/dto/input/Crop$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/input/Crop;
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
            "Lclarifai2/dto/input/Crop;",
            ">;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lclarifai2/dto/input/Crop;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 90
    invoke-static {p1}, Lclarifai2/internal/InternalUtil;->isJsonNull(Lcom/google/gson/JsonElement;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 91
    invoke-static {}, Lclarifai2/dto/input/Crop;->create()Lclarifai2/dto/input/Crop;

    move-result-object p0

    return-object p0

    .line 93
    :cond_0
    instance-of p0, p1, Lcom/google/gson/JsonArray;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p0, :cond_1

    .line 94
    check-cast p1, Lcom/google/gson/JsonArray;

    .line 95
    new-instance p0, Lclarifai2/dto/input/AutoValue_Crop;

    .line 96
    invoke-virtual {p1, p3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p3

    .line 97
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p2

    const/4 v0, 0x2

    .line 98
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    const/4 v1, 0x3

    .line 99
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p1

    invoke-direct {p0, p3, p2, v0, p1}, Lclarifai2/dto/input/AutoValue_Crop;-><init>(FFFF)V

    return-object p0

    .line 102
    :cond_1
    instance-of p0, p1, Lcom/google/gson/JsonObject;

    if-eqz p0, :cond_2

    .line 103
    move-object p0, p1

    check-cast p0, Lcom/google/gson/JsonObject;

    const-string v0, "top_row"

    .line 104
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-static {}, Lclarifai2/dto/input/Crop;->create()Lclarifai2/dto/input/Crop;

    move-result-object p1

    const-string p2, "top_row"

    .line 106
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p2

    invoke-virtual {p1, p2}, Lclarifai2/dto/input/Crop;->top(F)Lclarifai2/dto/input/Crop;

    move-result-object p1

    const-string p2, "left_col"

    .line 107
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p2

    invoke-virtual {p1, p2}, Lclarifai2/dto/input/Crop;->left(F)Lclarifai2/dto/input/Crop;

    move-result-object p1

    const-string p2, "bottom_row"

    .line 108
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p2

    invoke-virtual {p1, p2}, Lclarifai2/dto/input/Crop;->bottom(F)Lclarifai2/dto/input/Crop;

    move-result-object p1

    const-string p2, "right_col"

    .line 109
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p0

    invoke-virtual {p1, p0}, Lclarifai2/dto/input/Crop;->right(F)Lclarifai2/dto/input/Crop;

    move-result-object p0

    return-object p0

    .line 112
    :cond_2
    new-instance p0, Lclarifai2/exception/ClarifaiException;

    const-string v0, "Can\'t parse JSON %s as a Crop object"

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, p3

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lclarifai2/exception/ClarifaiException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lclarifai2/dto/input/Crop$Adapter$2;->deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/input/Crop;

    move-result-object p0

    return-object p0
.end method
