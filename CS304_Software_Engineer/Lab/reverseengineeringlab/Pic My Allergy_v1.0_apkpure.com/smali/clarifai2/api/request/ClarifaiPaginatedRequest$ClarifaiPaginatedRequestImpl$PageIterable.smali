.class Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable;
.super Ljava/lang/Object;
.source "ClarifaiPaginatedRequest.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lclarifai2/api/request/ClarifaiRequest<",
        "TRESU",
        "LT;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;


# direct methods
.method private constructor <init>(Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable;->this$0:Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lclarifai2/api/request/ClarifaiRequest<",
            "TRESU",
            "LT;",
            ">;>;"
        }
    .end annotation

    .line 141
    new-instance v0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable$1;-><init>(Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$PageIterable;)V

    return-object v0
.end method
