.class public final Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;
.super Ljava/lang/Object;
.source "ClarifaiPaginatedRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiPaginatedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/api/request/ClarifaiPaginatedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClarifaiPaginatedRequestImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lclarifai2/api/request/ClarifaiPaginatedRequest<",
        "TRESU",
        "LT;",
        ">;"
    }
.end annotation


# instance fields
.field private final client:Lclarifai2/api/BaseClarifaiClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final requestVendor:Lclarifai2/api/request/PaginatedRequestVendor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final unmarshaler:Lclarifai2/internal/JSONUnmarshaler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lclarifai2/internal/JSONUnmarshaler<",
            "TRESU",
            "LT;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lclarifai2/api/BaseClarifaiClient;Lclarifai2/api/request/PaginatedRequestVendor;Lclarifai2/internal/JSONUnmarshaler;)V
    .locals 0
    .param p1    # Lclarifai2/api/BaseClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lclarifai2/api/request/PaginatedRequestVendor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lclarifai2/internal/JSONUnmarshaler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/api/BaseClarifaiClient;",
            "Lclarifai2/api/request/PaginatedRequestVendor;",
            "Lclarifai2/internal/JSONUnmarshaler<",
            "TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;->client:Lclarifai2/api/BaseClarifaiClient;

    .line 116
    iput-object p2, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;->requestVendor:Lclarifai2/api/request/PaginatedRequestVendor;

    .line 117
    iput-object p3, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;->unmarshaler:Lclarifai2/internal/JSONUnmarshaler;

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;)Lclarifai2/api/request/PaginatedRequestVendor;
    .locals 0

    .line 104
    iget-object p0, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;->requestVendor:Lclarifai2/api/request/PaginatedRequestVendor;

    return-object p0
.end method

.method static synthetic access$100(Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;)Lclarifai2/internal/JSONUnmarshaler;
    .locals 0

    .line 104
    iget-object p0, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;->unmarshaler:Lclarifai2/internal/JSONUnmarshaler;

    return-object p0
.end method


# virtual methods
.method public getPage(I)Lclarifai2/api/request/ClarifaiRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lclarifai2/api/request/ClarifaiRequest<",
            "TRESU",
            "LT;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 124
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPage(int) called with invalid page. Pages must be 1 or greater. getPage(int) called with pg#: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_0
    new-instance v0, Lclarifai2/api/request/ClarifaiRequest$Impl;

    iget-object v1, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;->client:Lclarifai2/api/BaseClarifaiClient;

    new-instance v2, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$1;

    invoke-direct {v2, p0, p1}, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$1;-><init>(Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;I)V

    invoke-direct {v0, v1, v2}, Lclarifai2/api/request/ClarifaiRequest$Impl;-><init>(Lclarifai2/api/BaseClarifaiClient;Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;)V

    return-object v0
.end method
