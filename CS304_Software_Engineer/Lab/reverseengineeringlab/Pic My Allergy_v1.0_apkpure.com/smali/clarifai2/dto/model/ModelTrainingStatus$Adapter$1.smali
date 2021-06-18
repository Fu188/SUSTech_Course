.class Lclarifai2/dto/model/ModelTrainingStatus$Adapter$1;
.super Ljava/lang/Object;
.source "ModelTrainingStatus.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Deserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/model/ModelTrainingStatus$Adapter;->deserializer()Lclarifai2/internal/JSONAdapterFactory$Deserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Deserializer<",
        "Lclarifai2/dto/model/ModelTrainingStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/model/ModelTrainingStatus$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/model/ModelTrainingStatus$Adapter;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lclarifai2/dto/model/ModelTrainingStatus$Adapter$1;->this$0:Lclarifai2/dto/model/ModelTrainingStatus$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/model/ModelTrainingStatus;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Lcom/google/gson/reflect/TypeToken<",
            "Lclarifai2/dto/model/ModelTrainingStatus;",
            ">;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lclarifai2/dto/model/ModelTrainingStatus;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 103
    const-class p0, Lcom/google/gson/JsonObject;

    invoke-static {p1, p0}, Lclarifai2/internal/InternalUtil;->assertJsonIs(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonObject;

    const-string p2, "code"

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    .line 104
    sget-object p2, Lclarifai2/dto/model/ModelTrainingStatus$Adapter;->codeToStatus:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lclarifai2/dto/model/ModelTrainingStatus;

    if-nez p0, :cond_0

    .line 106
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "This version of the API client does not recognize the model training status: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
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

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lclarifai2/dto/model/ModelTrainingStatus$Adapter$1;->deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/model/ModelTrainingStatus;

    move-result-object p0

    return-object p0
.end method
