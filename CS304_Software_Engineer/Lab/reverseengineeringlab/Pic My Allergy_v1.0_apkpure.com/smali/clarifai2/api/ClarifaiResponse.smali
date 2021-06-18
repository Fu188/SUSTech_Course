.class public abstract Lclarifai2/api/ClarifaiResponse;
.super Ljava/lang/Object;
.source "ClarifaiResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/api/ClarifaiResponse$NetworkError;,
        Lclarifai2/api/ClarifaiResponse$Failure;,
        Lclarifai2/api/ClarifaiResponse$MixedSuccess;,
        Lclarifai2/api/ClarifaiResponse$Successful;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final httpCode:I

.field final status:Lclarifai2/dto/ClarifaiStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lclarifai2/dto/ClarifaiStatus;I)V
    .locals 0
    .param p1    # Lclarifai2/dto/ClarifaiStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lclarifai2/api/ClarifaiResponse;->status:Lclarifai2/dto/ClarifaiStatus;

    .line 20
    iput p2, p0, Lclarifai2/api/ClarifaiResponse;->httpCode:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lclarifai2/api/ClarifaiResponse;->getOrNull()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This API call was not successful. Details about this error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lclarifai2/api/ClarifaiResponse;->getStatus()Lclarifai2/dto/ClarifaiStatus;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final getOr(Lclarifai2/Func0;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lclarifai2/Func0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/Func0<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lclarifai2/api/ClarifaiResponse;->getOrNull()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 54
    invoke-interface {p1}, Lclarifai2/Func0;->call()Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final getOr(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 44
    invoke-virtual {p0}, Lclarifai2/api/ClarifaiResponse;->getOrNull()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method public abstract getOrNull()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public getOrThrow(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lclarifai2/exception/ClarifaiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 78
    invoke-virtual {p0}, Lclarifai2/api/ClarifaiResponse;->getOrNull()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 80
    new-instance p0, Lclarifai2/exception/ClarifaiException;

    const-string v0, "No value present"

    invoke-direct {p0, v0, p1}, Lclarifai2/exception/ClarifaiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_0
    return-object p0
.end method

.method public final getStatus()Lclarifai2/dto/ClarifaiStatus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 90
    iget-object p0, p0, Lclarifai2/api/ClarifaiResponse;->status:Lclarifai2/dto/ClarifaiStatus;

    return-object p0
.end method

.method public abstract isMixedSuccess()Z
.end method

.method public abstract isSuccessful()Z
.end method

.method public abstract map(Lclarifai2/Func1;)Lclarifai2/api/ClarifaiResponse;
    .param p1    # Lclarifai2/Func1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lclarifai2/Func1<",
            "TT;TR;>;)",
            "Lclarifai2/api/ClarifaiResponse<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract rawBody()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final responseCode()I
    .locals 0

    .line 107
    iget p0, p0, Lclarifai2/api/ClarifaiResponse;->httpCode:I

    return p0
.end method
