.class public final Lclarifai2/api/ClarifaiResponse$Failure;
.super Lclarifai2/api/ClarifaiResponse;
.source "ClarifaiResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/api/ClarifaiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failure"
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


# instance fields
.field private final rawBody:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lclarifai2/dto/ClarifaiStatus;ILjava/lang/String;)V
    .locals 0
    .param p1    # Lclarifai2/dto/ClarifaiStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 194
    invoke-direct {p0, p1, p2}, Lclarifai2/api/ClarifaiResponse;-><init>(Lclarifai2/dto/ClarifaiStatus;I)V

    .line 195
    iput-object p3, p0, Lclarifai2/api/ClarifaiResponse$Failure;->rawBody:Ljava/lang/String;

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
    .locals 2
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

    .line 203
    new-instance p1, Lclarifai2/api/ClarifaiResponse$Failure;

    iget-object v0, p0, Lclarifai2/api/ClarifaiResponse$Failure;->status:Lclarifai2/dto/ClarifaiStatus;

    iget v1, p0, Lclarifai2/api/ClarifaiResponse$Failure;->httpCode:I

    iget-object p0, p0, Lclarifai2/api/ClarifaiResponse$Failure;->rawBody:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0}, Lclarifai2/api/ClarifaiResponse$Failure;-><init>(Lclarifai2/dto/ClarifaiStatus;ILjava/lang/String;)V

    return-object p1
.end method

.method public rawBody()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 199
    iget-object p0, p0, Lclarifai2/api/ClarifaiResponse$Failure;->rawBody:Ljava/lang/String;

    return-object p0
.end method
