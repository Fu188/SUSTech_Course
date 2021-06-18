.class Lclarifai2/dto/input/ClarifaiURLImage$Adapter$1;
.super Ljava/lang/Object;
.source "ClarifaiURLImage.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/input/ClarifaiURLImage$Adapter;->serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
        "Lclarifai2/dto/input/ClarifaiURLImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/input/ClarifaiURLImage$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/input/ClarifaiURLImage$Adapter;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lclarifai2/dto/input/ClarifaiURLImage$Adapter$1;->this$0:Lclarifai2/dto/input/ClarifaiURLImage$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lclarifai2/dto/input/ClarifaiURLImage;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 3
    .param p1    # Lclarifai2/dto/input/ClarifaiURLImage;
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

    .line 55
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0

    .line 57
    :cond_0
    new-instance p0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {p0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v0, "url"

    .line 58
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiURLImage;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    const-string v0, "crop"

    .line 59
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiURLImage;->crop()Lclarifai2/dto/input/Crop;

    move-result-object v1

    const-class v2, Lclarifai2/dto/input/Crop;

    invoke-static {p2, v1, v2}, Lclarifai2/internal/InternalUtil;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lclarifai2/internal/JSONObjectBuilder;->addIfNotNull(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    const-string p2, "allow_duplicate_url"

    .line 60
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiURLImage;->allowDuplicateUrl()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lclarifai2/internal/JSONObjectBuilder;->addIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

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

    .line 52
    check-cast p1, Lclarifai2/dto/input/ClarifaiURLImage;

    invoke-virtual {p0, p1, p2}, Lclarifai2/dto/input/ClarifaiURLImage$Adapter$1;->serialize(Lclarifai2/dto/input/ClarifaiURLImage;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
