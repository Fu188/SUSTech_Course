.class public final Lclarifai2/internal/JSONObjectBuilder;
.super Ljava/lang/Object;
.source "JSONObjectBuilder.java"


# instance fields
.field private final inner:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-direct {p0, v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lclarifai2/internal/JSONObjectBuilder;->inner:Lcom/google/gson/JsonObject;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONObjectBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lclarifai2/internal/JSONArrayBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    invoke-virtual {p2}, Lclarifai2/internal/JSONArrayBuilder;->build()Lcom/google/gson/JsonArray;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    return-object p0
.end method

.method public add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lclarifai2/internal/JSONObjectBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    invoke-virtual {p2}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    return-object p0
.end method

.method public add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/JsonElement;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    iget-object v0, p0, Lclarifai2/internal/JSONObjectBuilder;->inner:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Boolean;)Lclarifai2/internal/JSONObjectBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 44
    iget-object v0, p0, Lclarifai2/internal/JSONObjectBuilder;->inner:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Character;)Lclarifai2/internal/JSONObjectBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Character;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 49
    iget-object v0, p0, Lclarifai2/internal/JSONObjectBuilder;->inner:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Character;)V

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Number;)Lclarifai2/internal/JSONObjectBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 39
    iget-object v0, p0, Lclarifai2/internal/JSONObjectBuilder;->inner:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    iget-object v0, p0, Lclarifai2/internal/JSONObjectBuilder;->inner:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public addIfNotNull(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/JsonElement;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p0, p1, p2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public addIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)Lclarifai2/internal/JSONObjectBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p0, p1, p2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Boolean;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public addIfNotNull(Ljava/lang/String;Ljava/lang/Character;)Lclarifai2/internal/JSONObjectBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Character;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p0, p1, p2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Character;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public addIfNotNull(Ljava/lang/String;Ljava/lang/Number;)Lclarifai2/internal/JSONObjectBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p0, p1, p2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Number;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public addIfNotNull(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p0, p1, p2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public build()Lcom/google/gson/JsonObject;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 89
    iget-object p0, p0, Lclarifai2/internal/JSONObjectBuilder;->inner:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 100
    :cond_0
    instance-of v1, p1, Lclarifai2/internal/JSONObjectBuilder;

    if-eqz v1, :cond_3

    .line 101
    check-cast p1, Lclarifai2/internal/JSONObjectBuilder;

    if-eq p0, p1, :cond_1

    .line 102
    iget-object p0, p0, Lclarifai2/internal/JSONObjectBuilder;->inner:Lcom/google/gson/JsonObject;

    iget-object p1, p1, Lclarifai2/internal/JSONObjectBuilder;->inner:Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 104
    :cond_3
    instance-of v1, p1, Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_4

    .line 105
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 106
    iget-object p0, p0, Lclarifai2/internal/JSONObjectBuilder;->inner:Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 0

    .line 93
    iget-object p0, p0, Lclarifai2/internal/JSONObjectBuilder;->inner:Lcom/google/gson/JsonObject;

    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lclarifai2/internal/JSONObjectBuilder;->inner:Lcom/google/gson/JsonObject;

    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
