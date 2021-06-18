.class Lclarifai2/dto/input/Crop$Adapter$1;
.super Ljava/lang/Object;
.source "Crop.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/input/Crop$Adapter;->serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
        "Lclarifai2/dto/input/Crop;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/input/Crop$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/input/Crop$Adapter;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lclarifai2/dto/input/Crop$Adapter$1;->this$0:Lclarifai2/dto/input/Crop$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lclarifai2/dto/input/Crop;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 0
    .param p1    # Lclarifai2/dto/input/Crop;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_1

    .line 69
    invoke-static {}, Lclarifai2/dto/input/Crop;->create()Lclarifai2/dto/input/Crop;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance p0, Lclarifai2/internal/JSONArrayBuilder;

    invoke-direct {p0}, Lclarifai2/internal/JSONArrayBuilder;-><init>()V

    .line 73
    invoke-virtual {p1}, Lclarifai2/dto/input/Crop;->top()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p2}, Lclarifai2/internal/JSONArrayBuilder;->add(Ljava/lang/Number;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object p0

    .line 74
    invoke-virtual {p1}, Lclarifai2/dto/input/Crop;->left()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p2}, Lclarifai2/internal/JSONArrayBuilder;->add(Ljava/lang/Number;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object p0

    .line 75
    invoke-virtual {p1}, Lclarifai2/dto/input/Crop;->bottom()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p2}, Lclarifai2/internal/JSONArrayBuilder;->add(Ljava/lang/Number;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object p0

    .line 76
    invoke-virtual {p1}, Lclarifai2/dto/input/Crop;->right()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/internal/JSONArrayBuilder;->add(Ljava/lang/Number;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lclarifai2/internal/JSONArrayBuilder;->build()Lcom/google/gson/JsonArray;

    move-result-object p0

    return-object p0

    .line 70
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

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

    .line 66
    check-cast p1, Lclarifai2/dto/input/Crop;

    invoke-virtual {p0, p1, p2}, Lclarifai2/dto/input/Crop$Adapter$1;->serialize(Lclarifai2/dto/input/Crop;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
