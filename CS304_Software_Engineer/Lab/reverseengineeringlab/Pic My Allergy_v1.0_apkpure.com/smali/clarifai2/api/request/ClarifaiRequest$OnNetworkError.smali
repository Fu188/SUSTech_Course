.class public interface abstract Lclarifai2/api/request/ClarifaiRequest$OnNetworkError;
.super Ljava/lang/Object;
.source "ClarifaiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/api/request/ClarifaiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnNetworkError"
.end annotation


# virtual methods
.method public abstract onClarifaiResponseNetworkError(Ljava/io/IOException;)V
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
