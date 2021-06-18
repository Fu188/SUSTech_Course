.class Lclarifai2/api/request/input/SearchClause$GeoRect$Adapter$1;
.super Ljava/lang/Object;
.source "SearchClause.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/input/SearchClause$GeoRect$Adapter;->serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
        "Lclarifai2/api/request/input/SearchClause$GeoRect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/input/SearchClause$GeoRect$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/api/request/input/SearchClause$GeoRect$Adapter;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lclarifai2/api/request/input/SearchClause$GeoRect$Adapter$1;->this$0:Lclarifai2/api/request/input/SearchClause$GeoRect$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lclarifai2/api/request/input/SearchClause$GeoRect;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 10
    .param p1    # Lclarifai2/api/request/input/SearchClause$GeoRect;
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

    .line 300
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0

    .line 302
    :cond_0
    new-instance p0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {p0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string p2, "input"

    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "data"

    new-instance v2, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v2}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v3, "geo"

    new-instance v4, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v4}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v5, "geo_box"

    new-instance v6, Lclarifai2/internal/JSONArrayBuilder;

    invoke-direct {v6}, Lclarifai2/internal/JSONArrayBuilder;-><init>()V

    new-instance v7, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v7}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v8, "geo_point"

    .line 307
    invoke-static {p1}, Lclarifai2/api/request/input/SearchClause$GeoRect;->access$1400(Lclarifai2/api/request/input/SearchClause$GeoRect;)Lclarifai2/dto/Rectangle;

    move-result-object v9

    invoke-virtual {v9}, Lclarifai2/dto/Rectangle;->topLeft()Lclarifai2/dto/PointF;

    move-result-object v9

    invoke-static {v9}, Lclarifai2/internal/InternalUtil;->asGeoPointJson(Lclarifai2/dto/PointF;)Lcom/google/gson/JsonObject;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Lclarifai2/internal/JSONArrayBuilder;->add(Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object v6

    new-instance v7, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v7}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v8, "geo_point"

    .line 309
    invoke-static {p1}, Lclarifai2/api/request/input/SearchClause$GeoRect;->access$1400(Lclarifai2/api/request/input/SearchClause$GeoRect;)Lclarifai2/dto/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lclarifai2/dto/Rectangle;->bottomRight()Lclarifai2/dto/PointF;

    move-result-object p1

    invoke-static {p1}, Lclarifai2/internal/InternalUtil;->asGeoPointJson(Lclarifai2/dto/PointF;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 308
    invoke-virtual {v7, v8, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p1

    invoke-virtual {v6, p1}, Lclarifai2/internal/JSONArrayBuilder;->add(Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object p1

    .line 306
    invoke-virtual {v4, v5, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p1

    .line 305
    invoke-virtual {v2, v3, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p1

    .line 304
    invoke-virtual {v0, v1, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p1

    .line 303
    invoke-virtual {p0, p2, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    .line 311
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

    .line 297
    check-cast p1, Lclarifai2/api/request/input/SearchClause$GeoRect;

    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/input/SearchClause$GeoRect$Adapter$1;->serialize(Lclarifai2/api/request/input/SearchClause$GeoRect;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
