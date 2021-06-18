.class Lclarifai2/internal/JSONAdapterFactory$Adapter;
.super Lcom/google/gson/TypeAdapter;
.source "JSONAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/internal/JSONAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/TypeAdapter<",
        "TT;>;"
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

.field private final gson:Lcom/google/gson/Gson;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private passthroughAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
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

.field private final toBePassedThrough:Lcom/google/gson/TypeAdapterFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final token:Lcom/google/gson/reflect/TypeToken;
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
.method private constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lclarifai2/internal/JSONAdapterFactory$Serializer;Lclarifai2/internal/JSONAdapterFactory$Deserializer;Lcom/google/gson/TypeAdapterFactory;)V
    .locals 0
    .param p1    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/reflect/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lclarifai2/internal/JSONAdapterFactory$Serializer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lclarifai2/internal/JSONAdapterFactory$Deserializer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/gson/TypeAdapterFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;",
            "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
            "TT;>;",
            "Lclarifai2/internal/JSONAdapterFactory$Deserializer<",
            "TT;>;",
            "Lcom/google/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 145
    iput-object p1, p0, Lclarifai2/internal/JSONAdapterFactory$Adapter;->gson:Lcom/google/gson/Gson;

    .line 146
    iput-object p2, p0, Lclarifai2/internal/JSONAdapterFactory$Adapter;->token:Lcom/google/gson/reflect/TypeToken;

    .line 147
    iput-object p3, p0, Lclarifai2/internal/JSONAdapterFactory$Adapter;->serializer:Lclarifai2/internal/JSONAdapterFactory$Serializer;

    .line 148
    iput-object p4, p0, Lclarifai2/internal/JSONAdapterFactory$Adapter;->deserializer:Lclarifai2/internal/JSONAdapterFactory$Deserializer;

    .line 149
    iput-object p5, p0, Lclarifai2/internal/JSONAdapterFactory$Adapter;->toBePassedThrough:Lcom/google/gson/TypeAdapterFactory;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lclarifai2/internal/JSONAdapterFactory$Serializer;Lclarifai2/internal/JSONAdapterFactory$Deserializer;Lcom/google/gson/TypeAdapterFactory;Lclarifai2/internal/JSONAdapterFactory$1;)V
    .locals 0

    .line 108
    invoke-direct/range {p0 .. p5}, Lclarifai2/internal/JSONAdapterFactory$Adapter;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lclarifai2/internal/JSONAdapterFactory$Serializer;Lclarifai2/internal/JSONAdapterFactory$Deserializer;Lcom/google/gson/TypeAdapterFactory;)V

    return-void
.end method

.method private getPassthroughAdapter()Lcom/google/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 153
    iget-object v0, p0, Lclarifai2/internal/JSONAdapterFactory$Adapter;->passthroughAdapter:Lcom/google/gson/TypeAdapter;

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lclarifai2/internal/JSONAdapterFactory$Adapter;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lclarifai2/internal/JSONAdapterFactory$Adapter;->toBePassedThrough:Lcom/google/gson/TypeAdapterFactory;

    iget-object v2, p0, Lclarifai2/internal/JSONAdapterFactory$Adapter;->token:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->getDelegateAdapter(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lclarifai2/internal/JSONAdapterFactory$Adapter;->passthroughAdapter:Lcom/google/gson/TypeAdapter;

    .line 156
    :cond_0
    iget-object p0, p0, Lclarifai2/internal/JSONAdapterFactory$Adapter;->passthroughAdapter:Lcom/google/gson/TypeAdapter;

    return-object p0
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lclarifai2/internal/JSONAdapterFactory$Adapter;->deserializer:Lclarifai2/internal/JSONAdapterFactory$Deserializer;

    if-nez v0, :cond_0

    .line 170
    invoke-direct {p0}, Lclarifai2/internal/JSONAdapterFactory$Adapter;->getPassthroughAdapter()Lcom/google/gson/TypeAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 172
    :cond_0
    invoke-static {p1}, Lcom/google/gson/internal/Streams;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 173
    iget-object v0, p0, Lclarifai2/internal/JSONAdapterFactory$Adapter;->deserializer:Lclarifai2/internal/JSONAdapterFactory$Deserializer;

    iget-object v1, p0, Lclarifai2/internal/JSONAdapterFactory$Adapter;->token:Lcom/google/gson/reflect/TypeToken;

    iget-object p0, p0, Lclarifai2/internal/JSONAdapterFactory$Adapter;->gson:Lcom/google/gson/Gson;

    invoke-interface {v0, p1, v1, p0}, Lclarifai2/internal/JSONAdapterFactory$Deserializer;->deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lclarifai2/internal/JSONAdapterFactory$Adapter;->serializer:Lclarifai2/internal/JSONAdapterFactory$Serializer;

    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0}, Lclarifai2/internal/JSONAdapterFactory$Adapter;->getPassthroughAdapter()Lcom/google/gson/TypeAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lclarifai2/internal/JSONAdapterFactory$Adapter;->serializer:Lclarifai2/internal/JSONAdapterFactory$Serializer;

    iget-object p0, p0, Lclarifai2/internal/JSONAdapterFactory$Adapter;->gson:Lcom/google/gson/Gson;

    invoke-interface {v0, p2, p0}, Lclarifai2/internal/JSONAdapterFactory$Serializer;->serialize(Ljava/lang/Object;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 164
    invoke-static {p0, p1}, Lcom/google/gson/internal/Streams;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    :goto_0
    return-void
.end method
