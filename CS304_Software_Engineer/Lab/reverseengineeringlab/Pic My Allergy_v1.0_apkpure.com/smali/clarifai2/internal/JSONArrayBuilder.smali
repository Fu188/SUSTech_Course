.class public final Lclarifai2/internal/JSONArrayBuilder;
.super Ljava/lang/Object;
.source "JSONArrayBuilder.java"


# instance fields
.field private final inner:Lcom/google/gson/JsonArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lclarifai2/internal/JSONArrayBuilder;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/gson/JsonElement;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    iput-object v0, p0, Lclarifai2/internal/JSONArrayBuilder;->inner:Lcom/google/gson/JsonArray;

    .line 19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 20
    invoke-virtual {p0, v0}, Lclarifai2/internal/JSONArrayBuilder;->add(Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONArrayBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONArrayBuilder;
    .locals 0
    .param p1    # Lclarifai2/internal/JSONArrayBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    invoke-virtual {p1}, Lclarifai2/internal/JSONArrayBuilder;->build()Lcom/google/gson/JsonArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/internal/JSONArrayBuilder;->add(Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object p0

    return-object p0
.end method

.method public add(Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONArrayBuilder;
    .locals 0
    .param p1    # Lclarifai2/internal/JSONObjectBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    invoke-virtual {p1}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/internal/JSONArrayBuilder;->add(Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object p0

    return-object p0
.end method

.method public add(Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONArrayBuilder;
    .locals 1
    .param p1    # Lcom/google/gson/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lclarifai2/internal/JSONArrayBuilder;->inner:Lcom/google/gson/JsonArray;

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    return-object p0
.end method

.method public add(Ljava/lang/Boolean;)Lclarifai2/internal/JSONArrayBuilder;
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 43
    iget-object v0, p0, Lclarifai2/internal/JSONArrayBuilder;->inner:Lcom/google/gson/JsonArray;

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public add(Ljava/lang/Character;)Lclarifai2/internal/JSONArrayBuilder;
    .locals 1
    .param p1    # Ljava/lang/Character;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 48
    iget-object v0, p0, Lclarifai2/internal/JSONArrayBuilder;->inner:Lcom/google/gson/JsonArray;

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Character;)V

    return-object p0
.end method

.method public add(Ljava/lang/Number;)Lclarifai2/internal/JSONArrayBuilder;
    .locals 1
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    iget-object v0, p0, Lclarifai2/internal/JSONArrayBuilder;->inner:Lcom/google/gson/JsonArray;

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    return-object p0
.end method

.method public add(Ljava/lang/String;)Lclarifai2/internal/JSONArrayBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    iget-object v0, p0, Lclarifai2/internal/JSONArrayBuilder;->inner:Lcom/google/gson/JsonArray;

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;Lclarifai2/Func1;)Lclarifai2/internal/JSONArrayBuilder;
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lclarifai2/Func1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lclarifai2/Func1<",
            "TT;",
            "Lcom/google/gson/JsonElement;",
            ">;)",
            "Lclarifai2/internal/JSONArrayBuilder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 59
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 60
    invoke-interface {p2, v0}, Lclarifai2/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {p0, v0}, Lclarifai2/internal/JSONArrayBuilder;->add(Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONArrayBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addBooleans(Ljava/lang/Iterable;)Lclarifai2/internal/JSONArrayBuilder;
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lclarifai2/internal/JSONArrayBuilder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 73
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 74
    invoke-virtual {p0, v0}, Lclarifai2/internal/JSONArrayBuilder;->add(Ljava/lang/Boolean;)Lclarifai2/internal/JSONArrayBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addCharacters(Ljava/lang/Iterable;)Lclarifai2/internal/JSONArrayBuilder;
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Character;",
            ">;)",
            "Lclarifai2/internal/JSONArrayBuilder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 81
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 82
    invoke-virtual {p0, v0}, Lclarifai2/internal/JSONArrayBuilder;->add(Ljava/lang/Character;)Lclarifai2/internal/JSONArrayBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addNumbers(Ljava/lang/Iterable;)Lclarifai2/internal/JSONArrayBuilder;
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Number;",
            ">;)",
            "Lclarifai2/internal/JSONArrayBuilder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 88
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 89
    invoke-virtual {p0, v0}, Lclarifai2/internal/JSONArrayBuilder;->add(Ljava/lang/Number;)Lclarifai2/internal/JSONArrayBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addStrings(Ljava/lang/Iterable;)Lclarifai2/internal/JSONArrayBuilder;
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lclarifai2/internal/JSONArrayBuilder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 66
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    invoke-virtual {p0, v0}, Lclarifai2/internal/JSONArrayBuilder;->add(Ljava/lang/String;)Lclarifai2/internal/JSONArrayBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public build()Lcom/google/gson/JsonArray;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 95
    iget-object p0, p0, Lclarifai2/internal/JSONArrayBuilder;->inner:Lcom/google/gson/JsonArray;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 106
    :cond_0
    instance-of v1, p1, Lclarifai2/internal/JSONArrayBuilder;

    if-eqz v1, :cond_3

    .line 107
    check-cast p1, Lclarifai2/internal/JSONArrayBuilder;

    if-eq p0, p1, :cond_1

    .line 108
    iget-object p0, p0, Lclarifai2/internal/JSONArrayBuilder;->inner:Lcom/google/gson/JsonArray;

    iget-object p1, p1, Lclarifai2/internal/JSONArrayBuilder;->inner:Lcom/google/gson/JsonArray;

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonArray;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 110
    :cond_3
    instance-of v1, p1, Lcom/google/gson/JsonArray;

    if-eqz v1, :cond_4

    .line 111
    check-cast p1, Lcom/google/gson/JsonArray;

    .line 112
    iget-object p0, p0, Lclarifai2/internal/JSONArrayBuilder;->inner:Lcom/google/gson/JsonArray;

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonArray;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 0

    .line 99
    iget-object p0, p0, Lclarifai2/internal/JSONArrayBuilder;->inner:Lcom/google/gson/JsonArray;

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lclarifai2/internal/JSONArrayBuilder;->inner:Lcom/google/gson/JsonArray;

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
