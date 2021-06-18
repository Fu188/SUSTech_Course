.class Lclarifai2/dto/prediction/Embedding$Adapter$1;
.super Ljava/lang/Object;
.source "Embedding.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Deserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/prediction/Embedding$Adapter;->deserializer()Lclarifai2/internal/JSONAdapterFactory$Deserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Deserializer<",
        "Lclarifai2/dto/prediction/Embedding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/prediction/Embedding$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/prediction/Embedding$Adapter;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lclarifai2/dto/prediction/Embedding$Adapter$1;->this$0:Lclarifai2/dto/prediction/Embedding$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/prediction/Embedding;
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
            "Lclarifai2/dto/prediction/Embedding;",
            ">;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lclarifai2/dto/prediction/Embedding;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 45
    const-class p0, Lcom/google/gson/JsonObject;

    invoke-static {p1, p0}, Lclarifai2/internal/InternalUtil;->assertJsonIs(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonObject;

    const-string p1, "num_dimensions"

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    new-array p1, p1, [F

    const-string p2, "vector"

    .line 49
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 50
    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 51
    invoke-virtual {p2, p3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    aput v0, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 54
    :cond_0
    new-instance p2, Lclarifai2/dto/prediction/AutoValue_Embedding;

    const-string p3, "num_dimensions"

    .line 56
    invoke-virtual {p0, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    invoke-direct {p2, p1, p0}, Lclarifai2/dto/prediction/AutoValue_Embedding;-><init>([FI)V

    return-object p2
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

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lclarifai2/dto/prediction/Embedding$Adapter$1;->deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/prediction/Embedding;

    move-result-object p0

    return-object p0
.end method
