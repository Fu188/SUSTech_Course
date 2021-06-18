.class Lclarifai2/api/request/input/SearchClause$GeoCircle$Adapter$1;
.super Ljava/lang/Object;
.source "SearchClause.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/input/SearchClause$GeoCircle$Adapter;->serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
        "Lclarifai2/api/request/input/SearchClause$GeoCircle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/input/SearchClause$GeoCircle$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/api/request/input/SearchClause$GeoCircle$Adapter;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lclarifai2/api/request/input/SearchClause$GeoCircle$Adapter$1;->this$0:Lclarifai2/api/request/input/SearchClause$GeoCircle$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lclarifai2/api/request/input/SearchClause$GeoCircle;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 9
    .param p1    # Lclarifai2/api/request/input/SearchClause$GeoCircle;
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

    .line 265
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0

    .line 267
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

    const-string v5, "geo_point"

    .line 271
    invoke-static {p1}, Lclarifai2/api/request/input/SearchClause$GeoCircle;->access$1300(Lclarifai2/api/request/input/SearchClause$GeoCircle;)Lclarifai2/dto/PointF;

    move-result-object v6

    invoke-static {v6}, Lclarifai2/internal/InternalUtil;->asGeoPointJson(Lclarifai2/dto/PointF;)Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v4

    const-string v5, "geo_limit"

    new-instance v6, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v6}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v7, "type"

    .line 273
    invoke-static {p1}, Lclarifai2/api/request/input/SearchClause$GeoCircle;->access$1200(Lclarifai2/api/request/input/SearchClause$GeoCircle;)Lclarifai2/dto/Radius;

    move-result-object v8

    invoke-virtual {v8}, Lclarifai2/dto/Radius;->unit()Lclarifai2/dto/Radius$Unit;

    move-result-object v8

    invoke-virtual {v8}, Lclarifai2/dto/Radius$Unit;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v6

    const-string v7, "value"

    .line 274
    invoke-static {p1}, Lclarifai2/api/request/input/SearchClause$GeoCircle;->access$1200(Lclarifai2/api/request/input/SearchClause$GeoCircle;)Lclarifai2/dto/Radius;

    move-result-object p1

    invoke-virtual {p1}, Lclarifai2/dto/Radius;->value()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v6, v7, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Number;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p1

    .line 272
    invoke-virtual {v4, v5, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p1

    .line 270
    invoke-virtual {v2, v3, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p1

    .line 269
    invoke-virtual {v0, v1, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p1

    .line 268
    invoke-virtual {p0, p2, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    .line 275
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

    .line 262
    check-cast p1, Lclarifai2/api/request/input/SearchClause$GeoCircle;

    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/input/SearchClause$GeoCircle$Adapter$1;->serialize(Lclarifai2/api/request/input/SearchClause$GeoCircle;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
