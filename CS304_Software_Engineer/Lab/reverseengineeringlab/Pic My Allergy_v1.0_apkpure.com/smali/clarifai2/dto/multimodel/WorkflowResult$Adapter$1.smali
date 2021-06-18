.class Lclarifai2/dto/multimodel/WorkflowResult$Adapter$1;
.super Ljava/lang/Object;
.source "WorkflowResult.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Deserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/multimodel/WorkflowResult$Adapter;->deserializer()Lclarifai2/internal/JSONAdapterFactory$Deserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Deserializer<",
        "Lclarifai2/dto/multimodel/WorkflowResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/multimodel/WorkflowResult$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/multimodel/WorkflowResult$Adapter;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lclarifai2/dto/multimodel/WorkflowResult$Adapter$1;->this$0:Lclarifai2/dto/multimodel/WorkflowResult$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/multimodel/WorkflowResult;
    .locals 1
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
            "Lclarifai2/dto/multimodel/WorkflowResult;",
            ">;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lclarifai2/dto/multimodel/WorkflowResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 38
    const-class p2, Lcom/google/gson/JsonObject;

    invoke-static {p1, p2}, Lclarifai2/internal/InternalUtil;->assertJsonIs(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;

    const-string p2, "workflow"

    .line 39
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    const-class v0, Lclarifai2/dto/multimodel/Workflow;

    invoke-static {p3, p2, v0}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lclarifai2/dto/multimodel/Workflow;

    const-string v0, "results"

    .line 41
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    new-instance v0, Lclarifai2/dto/multimodel/WorkflowResult$Adapter$1$1;

    invoke-direct {v0, p0}, Lclarifai2/dto/multimodel/WorkflowResult$Adapter$1$1;-><init>(Lclarifai2/dto/multimodel/WorkflowResult$Adapter$1;)V

    .line 40
    invoke-static {p3, p1, v0}, Lclarifai2/internal/InternalUtil;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 42
    new-instance p1, Lclarifai2/dto/multimodel/AutoValue_WorkflowResult;

    invoke-direct {p1, p2, p0}, Lclarifai2/dto/multimodel/AutoValue_WorkflowResult;-><init>(Lclarifai2/dto/multimodel/Workflow;Ljava/util/List;)V

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

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lclarifai2/dto/multimodel/WorkflowResult$Adapter$1;->deserialize(Lcom/google/gson/JsonElement;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)Lclarifai2/dto/multimodel/WorkflowResult;

    move-result-object p0

    return-object p0
.end method
