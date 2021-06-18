.class Lclarifai2/api/request/concept/GetConceptByIDRequest$1;
.super Ljava/lang/Object;
.source "GetConceptByIDRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/concept/GetConceptByIDRequest;->request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
        "Lclarifai2/dto/prediction/Concept;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/concept/GetConceptByIDRequest;


# direct methods
.method constructor <init>(Lclarifai2/api/request/concept/GetConceptByIDRequest;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lclarifai2/api/request/concept/GetConceptByIDRequest$1;->this$0:Lclarifai2/api/request/concept/GetConceptByIDRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public httpRequest()Lokhttp3/Request;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object v0, p0, Lclarifai2/api/request/concept/GetConceptByIDRequest$1;->this$0:Lclarifai2/api/request/concept/GetConceptByIDRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/v2/concepts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/api/request/concept/GetConceptByIDRequest$1;->this$0:Lclarifai2/api/request/concept/GetConceptByIDRequest;

    invoke-static {p0}, Lclarifai2/api/request/concept/GetConceptByIDRequest;->access$000(Lclarifai2/api/request/concept/GetConceptByIDRequest;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lclarifai2/api/request/concept/GetConceptByIDRequest;->access$100(Lclarifai2/api/request/concept/GetConceptByIDRequest;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONUnmarshaler<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    new-instance v0, Lclarifai2/api/request/concept/GetConceptByIDRequest$1$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/concept/GetConceptByIDRequest$1$1;-><init>(Lclarifai2/api/request/concept/GetConceptByIDRequest$1;)V

    return-object v0
.end method
