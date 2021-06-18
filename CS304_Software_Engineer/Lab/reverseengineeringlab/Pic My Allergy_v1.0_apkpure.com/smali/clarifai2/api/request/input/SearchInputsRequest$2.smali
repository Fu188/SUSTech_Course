.class Lclarifai2/api/request/input/SearchInputsRequest$2;
.super Ljava/lang/Object;
.source "SearchInputsRequest.java"

# interfaces
.implements Lclarifai2/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/input/SearchInputsRequest;->buildRequest(I)Lokhttp3/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/Func1<",
        "Lclarifai2/api/request/input/SearchClause;",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/input/SearchInputsRequest;


# direct methods
.method constructor <init>(Lclarifai2/api/request/input/SearchInputsRequest;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lclarifai2/api/request/input/SearchInputsRequest$2;->this$0:Lclarifai2/api/request/input/SearchInputsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lclarifai2/api/request/input/SearchClause;)Lcom/google/gson/JsonElement;
    .locals 0
    .param p1    # Lclarifai2/api/request/input/SearchClause;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 92
    iget-object p0, p0, Lclarifai2/api/request/input/SearchInputsRequest$2;->this$0:Lclarifai2/api/request/input/SearchInputsRequest;

    invoke-static {p0}, Lclarifai2/api/request/input/SearchInputsRequest;->access$000(Lclarifai2/api/request/input/SearchInputsRequest;)Lcom/google/gson/Gson;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

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

    .line 90
    check-cast p1, Lclarifai2/api/request/input/SearchClause;

    invoke-virtual {p0, p1}, Lclarifai2/api/request/input/SearchInputsRequest$2;->call(Lclarifai2/api/request/input/SearchClause;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
