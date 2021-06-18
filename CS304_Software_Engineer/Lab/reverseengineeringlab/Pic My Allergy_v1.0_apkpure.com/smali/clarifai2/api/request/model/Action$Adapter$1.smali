.class Lclarifai2/api/request/model/Action$Adapter$1;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/model/Action$Adapter;->serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
        "Lclarifai2/api/request/model/Action;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/model/Action$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/api/request/model/Action$Adapter;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lclarifai2/api/request/model/Action$Adapter$1;->this$0:Lclarifai2/api/request/model/Action$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lclarifai2/api/request/model/Action;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 0
    .param p1    # Lclarifai2/api/request/model/Action;
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

    .line 42
    sget-object p1, Lclarifai2/api/request/model/Action;->MERGE:Lclarifai2/api/request/model/Action;

    .line 44
    :cond_0
    new-instance p0, Lcom/google/gson/JsonPrimitive;

    invoke-static {p1}, Lclarifai2/api/request/model/Action;->access$000(Lclarifai2/api/request/model/Action;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

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

    .line 39
    check-cast p1, Lclarifai2/api/request/model/Action;

    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/model/Action$Adapter$1;->serialize(Lclarifai2/api/request/model/Action;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
