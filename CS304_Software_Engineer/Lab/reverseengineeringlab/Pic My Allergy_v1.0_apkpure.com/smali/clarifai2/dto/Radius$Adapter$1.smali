.class Lclarifai2/dto/Radius$Adapter$1;
.super Ljava/lang/Object;
.source "Radius.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/Radius$Adapter;->serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
        "Lclarifai2/dto/Radius;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/Radius$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/Radius$Adapter;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lclarifai2/dto/Radius$Adapter$1;->this$0:Lclarifai2/dto/Radius$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lclarifai2/dto/Radius;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 1
    .param p1    # Lclarifai2/dto/Radius;
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

    .line 51
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0

    .line 53
    :cond_0
    new-instance p0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {p0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string p2, "type"

    .line 54
    invoke-virtual {p1}, Lclarifai2/dto/Radius;->unit()Lclarifai2/dto/Radius$Unit;

    move-result-object v0

    invoke-virtual {v0}, Lclarifai2/dto/Radius$Unit;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    const-string p2, "value"

    .line 55
    invoke-virtual {p1}, Lclarifai2/dto/Radius;->value()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Number;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    .line 56
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

    .line 48
    check-cast p1, Lclarifai2/dto/Radius;

    invoke-virtual {p0, p1, p2}, Lclarifai2/dto/Radius$Adapter$1;->serialize(Lclarifai2/dto/Radius;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
