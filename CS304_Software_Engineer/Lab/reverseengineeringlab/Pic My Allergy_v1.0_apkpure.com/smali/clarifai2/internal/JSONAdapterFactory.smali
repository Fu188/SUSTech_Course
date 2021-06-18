.class public abstract Lclarifai2/internal/JSONAdapterFactory;
.super Ljava/lang/Object;
.source "JSONAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/internal/JSONAdapterFactory$Adapter;,
        Lclarifai2/internal/JSONAdapterFactory$Deserializer;,
        Lclarifai2/internal/JSONAdapterFactory$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/gson/TypeAdapterFactory;"
    }
.end annotation


# instance fields
.field private final deserializer:Lclarifai2/internal/JSONAdapterFactory$Deserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lclarifai2/internal/JSONAdapterFactory$Deserializer<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final serializer:Lclarifai2/internal/JSONAdapterFactory$Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final typeToken:Lcom/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0}, Lclarifai2/internal/JSONAdapterFactory;->typeToken()Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    iput-object v0, p0, Lclarifai2/internal/JSONAdapterFactory;->typeToken:Lcom/google/gson/reflect/TypeToken;

    .line 34
    invoke-virtual {p0}, Lclarifai2/internal/JSONAdapterFactory;->serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;

    move-result-object v0

    iput-object v0, p0, Lclarifai2/internal/JSONAdapterFactory;->serializer:Lclarifai2/internal/JSONAdapterFactory$Serializer;

    .line 35
    invoke-virtual {p0}, Lclarifai2/internal/JSONAdapterFactory;->deserializer()Lclarifai2/internal/JSONAdapterFactory$Deserializer;

    move-result-object v0

    iput-object v0, p0, Lclarifai2/internal/JSONAdapterFactory;->deserializer:Lclarifai2/internal/JSONAdapterFactory$Deserializer;

    return-void
.end method

.method private buildAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 8
    .param p1    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 73
    new-instance v7, Lclarifai2/internal/JSONAdapterFactory$Adapter;

    iget-object v2, p0, Lclarifai2/internal/JSONAdapterFactory;->typeToken:Lcom/google/gson/reflect/TypeToken;

    iget-object v3, p0, Lclarifai2/internal/JSONAdapterFactory;->serializer:Lclarifai2/internal/JSONAdapterFactory$Serializer;

    iget-object v4, p0, Lclarifai2/internal/JSONAdapterFactory;->deserializer:Lclarifai2/internal/JSONAdapterFactory$Deserializer;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lclarifai2/internal/JSONAdapterFactory$Adapter;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lclarifai2/internal/JSONAdapterFactory$Serializer;Lclarifai2/internal/JSONAdapterFactory$Deserializer;Lcom/google/gson/TypeAdapterFactory;Lclarifai2/internal/JSONAdapterFactory$1;)V

    return-object v7
.end method

.method private passthroughAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .param p1    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 77
    iget-object v0, p0, Lclarifai2/internal/JSONAdapterFactory;->typeToken:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->getDelegateAdapter(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT1;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT1;>;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lclarifai2/internal/JSONAdapterFactory;->typeToken:Lcom/google/gson/reflect/TypeToken;

    invoke-static {v0}, Lclarifai2/internal/InternalUtil;->isRawType(Lcom/google/gson/reflect/TypeToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lclarifai2/internal/JSONAdapterFactory;->typeToken:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lclarifai2/internal/JSONAdapterFactory;->typeToken:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v0, p2}, Lcom/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result p2

    :goto_0
    if-nez p2, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_1
    invoke-direct {p0, p1}, Lclarifai2/internal/JSONAdapterFactory;->buildAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;

    move-result-object p0

    return-object p0
.end method

.method protected deserializer()Lclarifai2/internal/JSONAdapterFactory$Deserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONAdapterFactory$Deserializer<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract typeToken()Lcom/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
