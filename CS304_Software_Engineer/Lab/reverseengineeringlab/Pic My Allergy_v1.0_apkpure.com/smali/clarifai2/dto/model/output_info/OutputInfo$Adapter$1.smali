.class Lclarifai2/dto/model/output_info/OutputInfo$Adapter$1;
.super Ljava/lang/Object;
.source "OutputInfo.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Deserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/model/output_info/OutputInfo$Adapter;->deserializer()Lclarifai2/internal/JSONAdapterFactory$Deserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Deserializer<",
        "Lclarifai2/dto/model/output_info/OutputInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/model/output_info/OutputInfo$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/model/output_info/OutputInfo$Adapter;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lclarifai2/dto/model/output_info/OutputInfo$Adapter$1;->this$0:Lclarifai2/dto/model/output_info/OutputInfo$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/model/output_info/OutputInfo;
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
            "Lclarifai2/dto/model/output_info/OutputInfo;",
            ">;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lclarifai2/dto/model/output_info/OutputInfo;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 30
    const-class p0, Lcom/google/gson/JsonObject;

    invoke-static {p1, p0}, Lclarifai2/internal/InternalUtil;->assertJsonIs(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonObject;

    const-string p2, "message"

    .line 31
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    const-string p2, "type"

    .line 34
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    return-object v0

    .line 37
    :cond_1
    invoke-static {p0}, Lclarifai2/dto/model/ModelType;->determineModelType(Lcom/google/gson/JsonElement;)Lclarifai2/dto/model/ModelType;

    move-result-object p0

    invoke-virtual {p0}, Lclarifai2/dto/model/ModelType;->infoType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p3, p1, p0}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lclarifai2/dto/model/output_info/OutputInfo;

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

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lclarifai2/dto/model/output_info/OutputInfo$Adapter$1;->deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/model/output_info/OutputInfo;

    move-result-object p0

    return-object p0
.end method
