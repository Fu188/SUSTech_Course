.class public final Lclarifai2/api/ClarifaiResponse$NetworkError;
.super Lclarifai2/api/ClarifaiResponse;
.source "ClarifaiResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/api/ClarifaiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lclarifai2/api/ClarifaiResponse<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lclarifai2/dto/ClarifaiStatus;)V
    .locals 1
    .param p1    # Lclarifai2/dto/ClarifaiStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, p1, v0}, Lclarifai2/api/ClarifaiResponse;-><init>(Lclarifai2/dto/ClarifaiStatus;I)V

    return-void
.end method


# virtual methods
.method public getOrNull()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public isMixedSuccess()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSuccessful()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public map(Lclarifai2/Func1;)Lclarifai2/api/ClarifaiResponse;
    .locals 0
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

    .line 227
    new-instance p1, Lclarifai2/api/ClarifaiResponse$NetworkError;

    iget-object p0, p0, Lclarifai2/api/ClarifaiResponse$NetworkError;->status:Lclarifai2/dto/ClarifaiStatus;

    invoke-direct {p1, p0}, Lclarifai2/api/ClarifaiResponse$NetworkError;-><init>(Lclarifai2/dto/ClarifaiStatus;)V

    return-object p1
.end method

.method public rawBody()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 231
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot get rawBody() on a ClarifaiResponse that ended in network error"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
