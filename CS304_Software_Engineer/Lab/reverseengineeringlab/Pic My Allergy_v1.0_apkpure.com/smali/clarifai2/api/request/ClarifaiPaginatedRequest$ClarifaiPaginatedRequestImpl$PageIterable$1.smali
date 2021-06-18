.class Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable$1;
.super Ljava/lang/Object;
.source "ClarifaiPaginatedRequest.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lclarifai2/api/request/ClarifaiRequest<",
        "TRESU",
        "LT;",
        ">;>;"
    }
.end annotation


# instance fields
.field private currentIndex:I

.field final synthetic this$1:Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable;


# direct methods
.method constructor <init>(Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable$1;->this$1:Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 142
    iput p1, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable$1;->currentIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public next()Lclarifai2/api/request/ClarifaiRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/api/request/ClarifaiRequest<",
            "TRESU",
            "LT;",
            ">;"
        }
    .end annotation

    .line 150
    iget v0, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable$1;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable$1;->currentIndex:I

    .line 151
    iget-object v0, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable$1;->this$1:Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable;

    iget-object v0, v0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable;->this$0:Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;

    iget p0, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable$1;->currentIndex:I

    invoke-virtual {v0, p0}, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;->getPage(I)Lclarifai2/api/request/ClarifaiRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-virtual {p0}, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable$1;->next()Lclarifai2/api/request/ClarifaiRequest;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    .line 155
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
