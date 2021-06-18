.class Lclarifai2/api/request/input/DeleteInputsBatchRequest$1$1;
.super Ljava/lang/Object;
.source "DeleteInputsBatchRequest.java"

# interfaces
.implements Lclarifai2/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/input/DeleteInputsBatchRequest$1;->httpRequest()Lokhttp3/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/Func1<",
        "Ljava/lang/String;",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lclarifai2/api/request/input/DeleteInputsBatchRequest$1;


# direct methods
.method constructor <init>(Lclarifai2/api/request/input/DeleteInputsBatchRequest$1;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lclarifai2/api/request/input/DeleteInputsBatchRequest$1$1;->this$1:Lclarifai2/api/request/input/DeleteInputsBatchRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 45
    new-instance p0, Lcom/google/gson/JsonPrimitive;

    invoke-direct {p0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

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

    .line 43
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lclarifai2/api/request/input/DeleteInputsBatchRequest$1$1;->call(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
