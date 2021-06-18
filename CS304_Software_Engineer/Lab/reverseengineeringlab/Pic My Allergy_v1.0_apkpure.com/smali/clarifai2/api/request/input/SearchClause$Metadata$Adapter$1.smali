.class Lclarifai2/api/request/input/SearchClause$Metadata$Adapter$1;
.super Ljava/lang/Object;
.source "SearchClause.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/input/SearchClause$Metadata$Adapter;->serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
        "Lclarifai2/api/request/input/SearchClause$Metadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/input/SearchClause$Metadata$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/api/request/input/SearchClause$Metadata$Adapter;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lclarifai2/api/request/input/SearchClause$Metadata$Adapter$1;->this$0:Lclarifai2/api/request/input/SearchClause$Metadata$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lclarifai2/api/request/input/SearchClause$Metadata;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 4
    .param p1    # Lclarifai2/api/request/input/SearchClause$Metadata;
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

    .line 129
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0

    .line 131
    :cond_0
    new-instance p0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {p0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string p2, "input"

    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "data"

    new-instance v2, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v2}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v3, "metadata"

    .line 134
    invoke-static {p1}, Lclarifai2/api/request/input/SearchClause$Metadata;->access$700(Lclarifai2/api/request/input/SearchClause$Metadata;)Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p1

    .line 133
    invoke-virtual {v0, v1, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p1

    .line 132
    invoke-virtual {p0, p2, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    .line 137
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

    .line 126
    check-cast p1, Lclarifai2/api/request/input/SearchClause$Metadata;

    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/input/SearchClause$Metadata$Adapter$1;->serialize(Lclarifai2/api/request/input/SearchClause$Metadata;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
