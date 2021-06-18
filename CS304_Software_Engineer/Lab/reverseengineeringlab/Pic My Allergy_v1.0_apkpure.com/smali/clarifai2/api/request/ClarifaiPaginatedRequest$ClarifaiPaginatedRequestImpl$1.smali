.class Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$1;
.super Ljava/lang/Object;
.source "ClarifaiPaginatedRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;->getPage(I)Lclarifai2/api/request/ClarifaiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
        "TRESU",
        "LT;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;I)V
    .locals 0

    .line 128
    iput-object p1, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$1;->this$0:Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;

    iput p2, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$1;->val$page:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public httpRequest()Lokhttp3/Request;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 130
    iget-object v0, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$1;->this$0:Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;

    invoke-static {v0}, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;->access$000(Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;)Lclarifai2/api/request/PaginatedRequestVendor;

    move-result-object v0

    iget p0, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$1;->val$page:I

    invoke-interface {v0, p0}, Lclarifai2/api/request/PaginatedRequestVendor;->vendRequest(I)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONUnmarshaler<",
            "TRESU",
            "LT;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 134
    iget-object p0, p0, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl$1;->this$0:Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;

    invoke-static {p0}, Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;->access$100(Lclarifai2/api/request/ClarifaiPaginatedRequest$ClarifaiPaginatedRequestImpl;)Lclarifai2/internal/JSONUnmarshaler;

    move-result-object p0

    return-object p0
.end method
