.class Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder$1;
.super Ljava/lang/Object;
.source "ClarifaiPaginatedRequest.java"

# interfaces
.implements Lclarifai2/api/request/PaginatedRequestVendor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;->build()Lclarifai2/api/request/ClarifaiPaginatedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;


# direct methods
.method constructor <init>(Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder$1;->this$0:Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public vendRequest(I)Lokhttp3/Request;
    .locals 0

    .line 67
    iget-object p0, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder$1;->this$0:Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;

    invoke-virtual {p0, p1}, Lclarifai2/api/request/ClarifaiPaginatedRequest$Builder;->buildRequest(I)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method
