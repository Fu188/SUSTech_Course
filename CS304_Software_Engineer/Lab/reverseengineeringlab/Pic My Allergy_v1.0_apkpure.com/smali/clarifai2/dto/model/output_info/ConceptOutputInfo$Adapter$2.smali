.class Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$2;
.super Ljava/lang/Object;
.source "ConceptOutputInfo.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Deserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter;->deserializer()Lclarifai2/internal/JSONAdapterFactory$Deserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Deserializer<",
        "Lclarifai2/dto/model/output_info/ConceptOutputInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$2;->this$0:Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/model/output_info/ConceptOutputInfo;
    .locals 2
    .param p1    # Lcom/google/gson/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/reflect/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Lcom/google/gson/reflect/TypeToken<",
            "Lclarifai2/dto/model/output_info/ConceptOutputInfo;",
            ">;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lclarifai2/dto/model/output_info/ConceptOutputInfo;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 104
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string p2, "data"

    .line 106
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p2

    .line 108
    invoke-static {p2}, Lclarifai2/internal/InternalUtil;->isJsonNull(Lcom/google/gson/JsonElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "concepts"

    .line 112
    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p2

    new-instance v0, Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$2$1;

    invoke-direct {v0, p0}, Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$2$1;-><init>(Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$2;)V

    .line 110
    invoke-static {p3, p2, v0}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    :goto_0
    if-nez p0, :cond_1

    .line 116
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_1
    const/4 p2, 0x0

    const-string p3, "output_config"

    .line 123
    invoke-virtual {p1, p3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    const-string p3, "concepts_mutually_exclusive"

    .line 125
    invoke-virtual {p1, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p3

    const-string v0, "closed_environment"

    .line 126
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    const-string v1, "language"

    .line 127
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string p2, "language"

    .line 128
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    move v0, p3

    .line 132
    :cond_3
    :goto_1
    new-instance p1, Lclarifai2/dto/model/output_info/AutoValue_ConceptOutputInfo;

    invoke-direct {p1, p0, p3, v0, p2}, Lclarifai2/dto/model/output_info/AutoValue_ConceptOutputInfo;-><init>(Ljava/util/List;ZZLjava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/google/gson/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/reflect/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$2;->deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/model/output_info/ConceptOutputInfo;

    move-result-object p0

    return-object p0
.end method
