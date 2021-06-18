.class Lclarifai2/api/request/input/DeleteInputsBatchRequest$1$2;
.super Ljava/lang/Object;
.source "DeleteInputsBatchRequest.java"

# interfaces
.implements Lclarifai2/internal/JSONUnmarshaler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/input/DeleteInputsBatchRequest$1;->unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONUnmarshaler<",
        "Lcom/google/gson/JsonNull;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lclarifai2/api/request/input/DeleteInputsBatchRequest$1;


# direct methods
.method constructor <init>(Lclarifai2/api/request/input/DeleteInputsBatchRequest$1;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lclarifai2/api/request/input/DeleteInputsBatchRequest$1$2;->this$1:Lclarifai2/api/request/input/DeleteInputsBatchRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJSON(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonNull;
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

    .line 55
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

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

    .line 53
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/input/DeleteInputsBatchRequest$1$2;->fromJSON(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonNull;

    move-result-object p0

    return-object p0
.end method
