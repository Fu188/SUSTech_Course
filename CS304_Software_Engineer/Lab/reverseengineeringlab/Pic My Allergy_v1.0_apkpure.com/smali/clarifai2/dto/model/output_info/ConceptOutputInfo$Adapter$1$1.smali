.class Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$1$1;
.super Ljava/lang/Object;
.source "ConceptOutputInfo.java"

# interfaces
.implements Lclarifai2/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$1;->serialize(Lclarifai2/dto/model/output_info/ConceptOutputInfo;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/Func1<",
        "Lclarifai2/dto/prediction/Concept;",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$1;

.field final synthetic val$gson:Lcom/google/gson/Gson;


# direct methods
.method constructor <init>(Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$1;Lcom/google/gson/Gson;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$1$1;->this$1:Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$1;

    iput-object p2, p0, Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$1$1;->val$gson:Lcom/google/gson/Gson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lclarifai2/dto/prediction/Concept;)Lcom/google/gson/JsonElement;
    .locals 1
    .param p1    # Lclarifai2/dto/prediction/Concept;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 79
    iget-object p0, p0, Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$1$1;->val$gson:Lcom/google/gson/Gson;

    const-class v0, Lclarifai2/dto/prediction/Concept;

    invoke-static {p0, p1, v0}, Lclarifai2/internal/InternalUtil;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 77
    check-cast p1, Lclarifai2/dto/prediction/Concept;

    invoke-virtual {p0, p1}, Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter$1$1;->call(Lclarifai2/dto/prediction/Concept;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
