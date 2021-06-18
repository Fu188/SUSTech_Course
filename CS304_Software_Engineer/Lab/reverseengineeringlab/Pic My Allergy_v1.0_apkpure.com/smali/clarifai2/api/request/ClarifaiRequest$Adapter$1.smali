.class Lclarifai2/api/request/ClarifaiRequest$Adapter$1;
.super Ljava/lang/Object;
.source "ClarifaiRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/ClarifaiRequest$Adapter;->executeAsync(Lclarifai2/api/request/ClarifaiRequest$OnSuccess;Lclarifai2/api/request/ClarifaiRequest$OnFailure;Lclarifai2/api/request/ClarifaiRequest$OnNetworkError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/api/request/ClarifaiRequest$Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/ClarifaiRequest$Adapter;

.field final synthetic val$onFailure:Lclarifai2/api/request/ClarifaiRequest$OnFailure;

.field final synthetic val$onNetworkError:Lclarifai2/api/request/ClarifaiRequest$OnNetworkError;

.field final synthetic val$onSuccess:Lclarifai2/api/request/ClarifaiRequest$OnSuccess;


# direct methods
.method constructor <init>(Lclarifai2/api/request/ClarifaiRequest$Adapter;Lclarifai2/api/request/ClarifaiRequest$OnSuccess;Lclarifai2/api/request/ClarifaiRequest$OnFailure;Lclarifai2/api/request/ClarifaiRequest$OnNetworkError;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lclarifai2/api/request/ClarifaiRequest$Adapter$1;->this$0:Lclarifai2/api/request/ClarifaiRequest$Adapter;

    iput-object p2, p0, Lclarifai2/api/request/ClarifaiRequest$Adapter$1;->val$onSuccess:Lclarifai2/api/request/ClarifaiRequest$OnSuccess;

    iput-object p3, p0, Lclarifai2/api/request/ClarifaiRequest$Adapter$1;->val$onFailure:Lclarifai2/api/request/ClarifaiRequest$OnFailure;

    iput-object p4, p0, Lclarifai2/api/request/ClarifaiRequest$Adapter$1;->val$onNetworkError:Lclarifai2/api/request/ClarifaiRequest$OnNetworkError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClarifaiResponseNetworkError(Ljava/io/IOException;)V
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 175
    iget-object v0, p0, Lclarifai2/api/request/ClarifaiRequest$Adapter$1;->val$onNetworkError:Lclarifai2/api/request/ClarifaiRequest$OnNetworkError;

    if-nez v0, :cond_0

    .line 176
    new-instance p0, Lclarifai2/exception/ClarifaiException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network error occurred while making an API call. Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lclarifai2/exception/ClarifaiException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 178
    :cond_0
    iget-object p0, p0, Lclarifai2/api/request/ClarifaiRequest$Adapter$1;->val$onNetworkError:Lclarifai2/api/request/ClarifaiRequest$OnNetworkError;

    invoke-interface {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$OnNetworkError;->onClarifaiResponseNetworkError(Ljava/io/IOException;)V

    return-void
.end method

.method public onClarifaiResponseSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lclarifai2/api/request/ClarifaiRequest$Adapter$1;->val$onSuccess:Lclarifai2/api/request/ClarifaiRequest$OnSuccess;

    if-eqz v0, :cond_0

    .line 163
    iget-object p0, p0, Lclarifai2/api/request/ClarifaiRequest$Adapter$1;->val$onSuccess:Lclarifai2/api/request/ClarifaiRequest$OnSuccess;

    invoke-interface {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$OnSuccess;->onClarifaiResponseSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onClarifaiResponseUnsuccessful(I)V
    .locals 2

    .line 168
    iget-object v0, p0, Lclarifai2/api/request/ClarifaiRequest$Adapter$1;->val$onFailure:Lclarifai2/api/request/ClarifaiRequest$OnFailure;

    if-nez v0, :cond_0

    .line 169
    new-instance p0, Lclarifai2/exception/ClarifaiException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "API failure occurred and was not handled. HTTP code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lclarifai2/exception/ClarifaiException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 171
    :cond_0
    iget-object p0, p0, Lclarifai2/api/request/ClarifaiRequest$Adapter$1;->val$onFailure:Lclarifai2/api/request/ClarifaiRequest$OnFailure;

    invoke-interface {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$OnFailure;->onClarifaiResponseUnsuccessful(I)V

    return-void
.end method
