.class Lclarifai2/api/request/model/GetModelVersionRequest$1;
.super Ljava/lang/Object;
.source "GetModelVersionRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/model/GetModelVersionRequest;->request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
        "Lclarifai2/dto/model/ModelVersion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/model/GetModelVersionRequest;


# direct methods
.method constructor <init>(Lclarifai2/api/request/model/GetModelVersionRequest;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lclarifai2/api/request/model/GetModelVersionRequest$1;->this$0:Lclarifai2/api/request/model/GetModelVersionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public httpRequest()Lokhttp3/Request;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iget-object v0, p0, Lclarifai2/api/request/model/GetModelVersionRequest$1;->this$0:Lclarifai2/api/request/model/GetModelVersionRequest;

    const-string v1, "/v2/models/%s/versions/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lclarifai2/api/request/model/GetModelVersionRequest$1;->this$0:Lclarifai2/api/request/model/GetModelVersionRequest;

    invoke-static {v3}, Lclarifai2/api/request/model/GetModelVersionRequest;->access$000(Lclarifai2/api/request/model/GetModelVersionRequest;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object p0, p0, Lclarifai2/api/request/model/GetModelVersionRequest$1;->this$0:Lclarifai2/api/request/model/GetModelVersionRequest;

    invoke-static {p0}, Lclarifai2/api/request/model/GetModelVersionRequest;->access$100(Lclarifai2/api/request/model/GetModelVersionRequest;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lclarifai2/api/request/model/GetModelVersionRequest;->access$200(Lclarifai2/api/request/model/GetModelVersionRequest;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONUnmarshaler<",
            "Lclarifai2/dto/model/ModelVersion;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    new-instance v0, Lclarifai2/api/request/model/GetModelVersionRequest$1$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/GetModelVersionRequest$1$1;-><init>(Lclarifai2/api/request/model/GetModelVersionRequest$1;)V

    return-object v0
.end method
