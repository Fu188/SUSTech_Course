.class public abstract Lclarifai2/api/request/ClarifaiRequest$Adapter;
.super Ljava/lang/Object;
.source "ClarifaiRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/api/request/ClarifaiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lclarifai2/api/request/ClarifaiRequest<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final client:Lclarifai2/api/BaseClarifaiClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lclarifai2/api/BaseClarifaiClient;)V
    .locals 0
    .param p1    # Lclarifai2/api/BaseClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lclarifai2/api/request/ClarifaiRequest$Adapter;->client:Lclarifai2/api/BaseClarifaiClient;

    return-void
.end method


# virtual methods
.method public final executeAsync(Lclarifai2/api/request/ClarifaiRequest$OnSuccess;)V
    .locals 1
    .param p1    # Lclarifai2/api/request/ClarifaiRequest$OnSuccess;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/api/request/ClarifaiRequest$OnSuccess<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lclarifai2/exception/ClarifaiException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, p1, v0}, Lclarifai2/api/request/ClarifaiRequest$Adapter;->executeAsync(Lclarifai2/api/request/ClarifaiRequest$OnSuccess;Lclarifai2/api/request/ClarifaiRequest$OnFailure;)V

    return-void
.end method

.method public final executeAsync(Lclarifai2/api/request/ClarifaiRequest$OnSuccess;Lclarifai2/api/request/ClarifaiRequest$OnFailure;)V
    .locals 1
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
            "TT;>;",
            "Lclarifai2/api/request/ClarifaiRequest$OnFailure;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, p1, p2, v0}, Lclarifai2/api/request/ClarifaiRequest$Adapter;->executeAsync(Lclarifai2/api/request/ClarifaiRequest$OnSuccess;Lclarifai2/api/request/ClarifaiRequest$OnFailure;Lclarifai2/api/request/ClarifaiRequest$OnNetworkError;)V

    return-void
.end method

.method public final executeAsync(Lclarifai2/api/request/ClarifaiRequest$OnSuccess;Lclarifai2/api/request/ClarifaiRequest$OnFailure;Lclarifai2/api/request/ClarifaiRequest$OnNetworkError;)V
    .locals 1
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
            "TT;>;",
            "Lclarifai2/api/request/ClarifaiRequest$OnFailure;",
            "Lclarifai2/api/request/ClarifaiRequest$OnNetworkError;",
            ")V"
        }
    .end annotation

    .line 160
    new-instance v0, Lclarifai2/api/request/ClarifaiRequest$Adapter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lclarifai2/api/request/ClarifaiRequest$Adapter$1;-><init>(Lclarifai2/api/request/ClarifaiRequest$Adapter;Lclarifai2/api/request/ClarifaiRequest$OnSuccess;Lclarifai2/api/request/ClarifaiRequest$OnFailure;Lclarifai2/api/request/ClarifaiRequest$OnNetworkError;)V

    invoke-virtual {p0, v0}, Lclarifai2/api/request/ClarifaiRequest$Adapter;->executeAsync(Lclarifai2/api/request/ClarifaiRequest$Callback;)V

    return-void
.end method
