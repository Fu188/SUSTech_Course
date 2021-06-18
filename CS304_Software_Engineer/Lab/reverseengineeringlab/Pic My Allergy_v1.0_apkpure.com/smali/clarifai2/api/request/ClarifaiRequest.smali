.class public interface abstract Lclarifai2/api/request/ClarifaiRequest;
.super Ljava/lang/Object;
.source "ClarifaiRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/api/request/ClarifaiRequest$Impl;,
        Lclarifai2/api/request/ClarifaiRequest$Builder;,
        Lclarifai2/api/request/ClarifaiRequest$Adapter;,
        Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;,
        Lclarifai2/api/request/ClarifaiRequest$Callback;,
        Lclarifai2/api/request/ClarifaiRequest$OnNetworkError;,
        Lclarifai2/api/request/ClarifaiRequest$OnFailure;,
        Lclarifai2/api/request/ClarifaiRequest$OnSuccess;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract executeAsync(Lclarifai2/api/request/ClarifaiRequest$Callback;)V
    .param p1    # Lclarifai2/api/request/ClarifaiRequest$Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/api/request/ClarifaiRequest$Callback<",
            "TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract executeAsync(Lclarifai2/api/request/ClarifaiRequest$OnSuccess;)V
    .param p1    # Lclarifai2/api/request/ClarifaiRequest$OnSuccess;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/api/request/ClarifaiRequest$OnSuccess<",
            "TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lclarifai2/exception/ClarifaiException;
        }
    .end annotation
.end method

.method public abstract executeAsync(Lclarifai2/api/request/ClarifaiRequest$OnSuccess;Lclarifai2/api/request/ClarifaiRequest$OnFailure;)V
    .param p1    # Lclarifai2/api/request/ClarifaiRequest$OnSuccess;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lclarifai2/api/request/ClarifaiRequest$OnFailure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/api/request/ClarifaiRequest$OnSuccess<",
            "TRESU",
            "LT;",
            ">;",
            "Lclarifai2/api/request/ClarifaiRequest$OnFailure;",
            ")V"
        }
    .end annotation
.end method

.method public abstract executeAsync(Lclarifai2/api/request/ClarifaiRequest$OnSuccess;Lclarifai2/api/request/ClarifaiRequest$OnFailure;Lclarifai2/api/request/ClarifaiRequest$OnNetworkError;)V
    .param p1    # Lclarifai2/api/request/ClarifaiRequest$OnSuccess;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lclarifai2/api/request/ClarifaiRequest$OnFailure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lclarifai2/api/request/ClarifaiRequest$OnNetworkError;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/api/request/ClarifaiRequest$OnSuccess<",
            "TRESU",
            "LT;",
            ">;",
            "Lclarifai2/api/request/ClarifaiRequest$OnFailure;",
            "Lclarifai2/api/request/ClarifaiRequest$OnNetworkError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract executeSync()Lclarifai2/api/ClarifaiResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/api/ClarifaiResponse<",
            "TRESU",
            "LT;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
