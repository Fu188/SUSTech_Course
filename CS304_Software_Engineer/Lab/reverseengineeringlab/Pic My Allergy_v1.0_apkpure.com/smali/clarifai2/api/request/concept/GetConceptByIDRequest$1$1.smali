.class Lclarifai2/api/request/concept/GetConceptByIDRequest$1$1;
.super Ljava/lang/Object;
.source "GetConceptByIDRequest.java"

# interfaces
.implements Lclarifai2/internal/JSONUnmarshaler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/concept/GetConceptByIDRequest$1;->unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONUnmarshaler<",
        "Lclarifai2/dto/prediction/Concept;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lclarifai2/api/request/concept/GetConceptByIDRequest$1;


# direct methods
.method constructor <init>(Lclarifai2/api/request/concept/GetConceptByIDRequest$1;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lclarifai2/api/request/concept/GetConceptByIDRequest$1$1;->this$1:Lclarifai2/api/request/concept/GetConceptByIDRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJSON(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)Lclarifai2/dto/prediction/Concept;
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
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string p2, "concept"

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    const-class p2, Lclarifai2/dto/prediction/Concept;

    invoke-virtual {p1, p0, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lclarifai2/dto/prediction/Concept;

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

    .line 28
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/concept/GetConceptByIDRequest$1$1;->fromJSON(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;)Lclarifai2/dto/prediction/Concept;

    move-result-object p0

    return-object p0
.end method
