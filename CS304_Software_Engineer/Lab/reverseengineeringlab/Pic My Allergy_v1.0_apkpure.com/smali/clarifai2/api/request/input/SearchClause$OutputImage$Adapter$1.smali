.class Lclarifai2/api/request/input/SearchClause$OutputImage$Adapter$1;
.super Ljava/lang/Object;
.source "SearchClause.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/input/SearchClause$OutputImage$Adapter;->serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
        "Lclarifai2/api/request/input/SearchClause$OutputImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/input/SearchClause$OutputImage$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/api/request/input/SearchClause$OutputImage$Adapter;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lclarifai2/api/request/input/SearchClause$OutputImage$Adapter$1;->this$0:Lclarifai2/api/request/input/SearchClause$OutputImage$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lclarifai2/api/request/input/SearchClause$OutputImage;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 8
    .param p2    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 195
    new-instance p0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {p0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v0, "output"

    new-instance v1, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v1}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v2, "input"

    new-instance v3, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v3}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v4, "data"

    new-instance v5, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v5}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v6, "image"

    .line 199
    invoke-static {p1}, Lclarifai2/api/request/input/SearchClause$OutputImage;->access$900(Lclarifai2/api/request/input/SearchClause$OutputImage;)Lclarifai2/dto/input/ClarifaiImage;

    move-result-object p1

    const-class v7, Lclarifai2/dto/input/ClarifaiImage;

    invoke-static {p2, p1, v7}, Lclarifai2/internal/InternalUtil;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {v5, v6, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p1

    .line 198
    invoke-virtual {v3, v4, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p1

    .line 197
    invoke-virtual {v1, v2, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p1

    .line 196
    invoke-virtual {p0, v0, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    .line 203
    invoke-virtual {p0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 0
    .param p2    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 193
    check-cast p1, Lclarifai2/api/request/input/SearchClause$OutputImage;

    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/input/SearchClause$OutputImage$Adapter$1;->serialize(Lclarifai2/api/request/input/SearchClause$OutputImage;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
