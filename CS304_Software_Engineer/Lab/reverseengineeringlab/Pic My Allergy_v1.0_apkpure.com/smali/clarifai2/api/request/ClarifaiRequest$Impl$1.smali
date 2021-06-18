.class Lclarifai2/api/request/ClarifaiRequest$Impl$1;
.super Ljava/lang/Object;
.source "ClarifaiRequest.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/ClarifaiRequest$Impl;->executeAsync(Lclarifai2/api/request/ClarifaiRequest$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/ClarifaiRequest$Impl;

.field final synthetic val$callback:Lclarifai2/api/request/ClarifaiRequest$Callback;


# direct methods
.method constructor <init>(Lclarifai2/api/request/ClarifaiRequest$Impl;Lclarifai2/api/request/ClarifaiRequest$Callback;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lclarifai2/api/request/ClarifaiRequest$Impl$1;->this$0:Lclarifai2/api/request/ClarifaiRequest$Impl;

    iput-object p2, p0, Lclarifai2/api/request/ClarifaiRequest$Impl$1;->val$callback:Lclarifai2/api/request/ClarifaiRequest$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lclarifai2/api/request/ClarifaiRequest$Impl$1;->call()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lclarifai2/api/request/ClarifaiRequest$Impl$1;->this$0:Lclarifai2/api/request/ClarifaiRequest$Impl;

    invoke-virtual {v0}, Lclarifai2/api/request/ClarifaiRequest$Impl;->executeSync()Lclarifai2/api/ClarifaiResponse;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lclarifai2/api/request/ClarifaiRequest$Impl$1;->val$callback:Lclarifai2/api/request/ClarifaiRequest$Callback;

    if-eqz v1, :cond_2

    .line 307
    invoke-virtual {v0}, Lclarifai2/api/ClarifaiResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    iget-object p0, p0, Lclarifai2/api/request/ClarifaiRequest$Impl$1;->val$callback:Lclarifai2/api/request/ClarifaiRequest$Callback;

    invoke-virtual {v0}, Lclarifai2/api/ClarifaiResponse;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lclarifai2/api/request/ClarifaiRequest$Callback;->onClarifaiResponseSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {v0}, Lclarifai2/api/ClarifaiResponse;->getStatus()Lclarifai2/dto/ClarifaiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lclarifai2/dto/ClarifaiStatus;->networkErrorOccurred()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    iget-object p0, p0, Lclarifai2/api/request/ClarifaiRequest$Impl$1;->val$callback:Lclarifai2/api/request/ClarifaiRequest$Callback;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lclarifai2/api/ClarifaiResponse;->getStatus()Lclarifai2/dto/ClarifaiStatus;

    move-result-object v0

    invoke-virtual {v0}, Lclarifai2/dto/ClarifaiStatus;->errorDetails()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lclarifai2/api/request/ClarifaiRequest$Callback;->onClarifaiResponseNetworkError(Ljava/io/IOException;)V

    goto :goto_0

    .line 313
    :cond_1
    iget-object p0, p0, Lclarifai2/api/request/ClarifaiRequest$Impl$1;->val$callback:Lclarifai2/api/request/ClarifaiRequest$Callback;

    invoke-virtual {v0}, Lclarifai2/api/ClarifaiResponse;->responseCode()I

    move-result v0

    invoke-interface {p0, v0}, Lclarifai2/api/request/ClarifaiRequest$Callback;->onClarifaiResponseUnsuccessful(I)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
