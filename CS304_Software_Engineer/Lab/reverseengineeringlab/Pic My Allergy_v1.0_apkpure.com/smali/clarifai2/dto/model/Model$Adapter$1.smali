.class Lclarifai2/dto/model/Model$Adapter$1;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/model/Model$Adapter;->serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
        "Lclarifai2/dto/model/Model;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/model/Model$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/model/Model$Adapter;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lclarifai2/dto/model/Model$Adapter$1;->this$0:Lclarifai2/dto/model/Model$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lclarifai2/dto/model/Model;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 3
    .param p1    # Lclarifai2/dto/model/Model;
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

    .line 191
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0

    .line 193
    :cond_0
    new-instance p0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {p0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v0, "id"

    .line 194
    invoke-virtual {p1}, Lclarifai2/dto/model/Model;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    const-string v0, "name"

    .line 195
    invoke-virtual {p1}, Lclarifai2/dto/model/Model;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    const-string v0, "app_id"

    .line 196
    invoke-virtual {p1}, Lclarifai2/dto/model/Model;->appID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    const-string v0, "created_at"

    .line 197
    invoke-virtual {p1}, Lclarifai2/dto/model/Model;->createdAt()Ljava/util/Date;

    move-result-object v1

    const-class v2, Ljava/util/Date;

    invoke-static {p2, v1, v2}, Lclarifai2/internal/InternalUtil;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    const-string v0, "model_version"

    .line 198
    invoke-virtual {p1}, Lclarifai2/dto/model/Model;->modelVersion()Lclarifai2/dto/model/ModelVersion;

    move-result-object v1

    const-class v2, Lclarifai2/dto/model/ModelVersion;

    invoke-static {p2, v1, v2}, Lclarifai2/internal/InternalUtil;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    const-string v0, "output_info"

    .line 199
    invoke-virtual {p1}, Lclarifai2/dto/model/Model;->_outputInfo()Lclarifai2/dto/model/output_info/OutputInfo;

    move-result-object p1

    const-class v1, Lclarifai2/dto/model/output_info/OutputInfo;

    invoke-static {p2, p1, v1}, Lclarifai2/internal/InternalUtil;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    .line 200
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

    .line 188
    check-cast p1, Lclarifai2/dto/model/Model;

    invoke-virtual {p0, p1, p2}, Lclarifai2/dto/model/Model$Adapter$1;->serialize(Lclarifai2/dto/model/Model;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
