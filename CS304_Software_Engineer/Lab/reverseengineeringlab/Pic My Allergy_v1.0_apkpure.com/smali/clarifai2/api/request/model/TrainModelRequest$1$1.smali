.class Lclarifai2/api/request/model/TrainModelRequest$1$1;
.super Ljava/lang/Object;
.source "TrainModelRequest.java"

# interfaces
.implements Lclarifai2/internal/JSONUnmarshaler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/model/TrainModelRequest$1;->unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONUnmarshaler<",
        "Lclarifai2/dto/model/Model<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lclarifai2/api/request/model/TrainModelRequest$1;


# direct methods
.method constructor <init>(Lclarifai2/api/request/model/TrainModelRequest$1;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lclarifai2/api/request/model/TrainModelRequest$1$1;->this$1:Lclarifai2/api/request/model/TrainModelRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJSON(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)Lclarifai2/dto/model/Model;
    .locals 1
    .param p1    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Lclarifai2/dto/model/Model<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p2

    const-string v0, "model"

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    new-instance v0, Lclarifai2/api/request/model/TrainModelRequest$1$1$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/TrainModelRequest$1$1$1;-><init>(Lclarifai2/api/request/model/TrainModelRequest$1$1;)V

    invoke-virtual {v0}, Lclarifai2/api/request/model/TrainModelRequest$1$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lclarifai2/dto/model/Model;

    return-object p0
.end method

.method public bridge synthetic fromJSON(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/model/TrainModelRequest$1$1;->fromJSON(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)Lclarifai2/dto/model/Model;

    move-result-object p0

    return-object p0
.end method
