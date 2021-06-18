.class public final Lclarifai2/api/ClarifaiResponse$Successful;
.super Lclarifai2/api/ClarifaiResponse;
.source "ClarifaiResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/api/ClarifaiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Successful"
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
.field private final deserialized:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rawBody:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lclarifai2/dto/ClarifaiStatus;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lclarifai2/dto/ClarifaiStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/dto/ClarifaiStatus;",
            "I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Lclarifai2/api/ClarifaiResponse;-><init>(Lclarifai2/dto/ClarifaiStatus;I)V

    .line 125
    iput-object p4, p0, Lclarifai2/api/ClarifaiResponse$Successful;->deserialized:Ljava/lang/Object;

    .line 126
    iput-object p3, p0, Lclarifai2/api/ClarifaiResponse$Successful;->rawBody:Ljava/lang/String;

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

    .line 138
    iget-object p0, p0, Lclarifai2/api/ClarifaiResponse$Successful;->deserialized:Ljava/lang/Object;

    return-object p0
.end method

.method public isMixedSuccess()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSuccessful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public map(Lclarifai2/Func1;)Lclarifai2/api/ClarifaiResponse;
    .locals 4
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

    .line 134
    new-instance v0, Lclarifai2/api/ClarifaiResponse$Successful;

    iget-object v1, p0, Lclarifai2/api/ClarifaiResponse$Successful;->status:Lclarifai2/dto/ClarifaiStatus;

    iget v2, p0, Lclarifai2/api/ClarifaiResponse$Successful;->httpCode:I

    iget-object v3, p0, Lclarifai2/api/ClarifaiResponse$Successful;->rawBody:Ljava/lang/String;

    iget-object p0, p0, Lclarifai2/api/ClarifaiResponse$Successful;->deserialized:Ljava/lang/Object;

    invoke-interface {p1, p0}, Lclarifai2/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lclarifai2/api/ClarifaiResponse$Successful;-><init>(Lclarifai2/dto/ClarifaiStatus;ILjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public rawBody()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 130
    iget-object p0, p0, Lclarifai2/api/ClarifaiResponse$Successful;->rawBody:Ljava/lang/String;

    return-object p0
.end method
