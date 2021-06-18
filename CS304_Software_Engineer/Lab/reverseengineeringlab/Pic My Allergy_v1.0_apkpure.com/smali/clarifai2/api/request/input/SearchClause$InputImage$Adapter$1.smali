.class Lclarifai2/api/request/input/SearchClause$InputImage$Adapter$1;
.super Ljava/lang/Object;
.source "SearchClause.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/input/SearchClause$InputImage$Adapter;->serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
        "Lclarifai2/api/request/input/SearchClause$InputImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/input/SearchClause$InputImage$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/api/request/input/SearchClause$InputImage$Adapter;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lclarifai2/api/request/input/SearchClause$InputImage$Adapter$1;->this$0:Lclarifai2/api/request/input/SearchClause$InputImage$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lclarifai2/api/request/input/SearchClause$InputImage;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 6
    .param p1    # Lclarifai2/api/request/input/SearchClause$InputImage;
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

    .line 162
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0

    .line 164
    :cond_0
    new-instance p0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {p0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v0, "input"

    new-instance v1, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v1}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v2, "data"

    new-instance v3, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v3}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v4, "image"

    .line 167
    invoke-static {p1}, Lclarifai2/api/request/input/SearchClause$InputImage;->access$800(Lclarifai2/api/request/input/SearchClause$InputImage;)Lclarifai2/dto/input/ClarifaiImage;

    move-result-object p1

    const-class v5, Lclarifai2/dto/input/ClarifaiImage;

    invoke-static {p2, p1, v5}, Lclarifai2/internal/InternalUtil;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p1

    .line 166
    invoke-virtual {v1, v2, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p1

    .line 165
    invoke-virtual {p0, v0, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    .line 170
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

    .line 159
    check-cast p1, Lclarifai2/api/request/input/SearchClause$InputImage;

    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/input/SearchClause$InputImage$Adapter$1;->serialize(Lclarifai2/api/request/input/SearchClause$InputImage;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
