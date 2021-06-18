.class Lclarifai2/api/request/model/MultiModelPredictRequest$1$1;
.super Ljava/lang/Object;
.source "MultiModelPredictRequest.java"

# interfaces
.implements Lclarifai2/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/model/MultiModelPredictRequest$1;->httpRequest()Lokhttp3/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/Func1<",
        "Lclarifai2/dto/input/ClarifaiURLImage;",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lclarifai2/api/request/model/MultiModelPredictRequest$1;


# direct methods
.method constructor <init>(Lclarifai2/api/request/model/MultiModelPredictRequest$1;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lclarifai2/api/request/model/MultiModelPredictRequest$1$1;->this$1:Lclarifai2/api/request/model/MultiModelPredictRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lclarifai2/dto/input/ClarifaiURLImage;)Lcom/google/gson/JsonElement;
    .locals 3
    .param p1    # Lclarifai2/dto/input/ClarifaiURLImage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 57
    new-instance p0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {p0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v0, "url"

    .line 58
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiURLImage;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    .line 59
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiURLImage;->allowDuplicateUrl()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "allow_duplicate_url"

    .line 60
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiURLImage;->allowDuplicateUrl()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Boolean;)Lclarifai2/internal/JSONObjectBuilder;

    .line 62
    :cond_0
    new-instance p1, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {p1}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v0, "data"

    new-instance v1, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v1}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v2, "image"

    .line 64
    invoke-virtual {v1, v2, p0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    .line 63
    invoke-virtual {p1, v0, p0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 55
    check-cast p1, Lclarifai2/dto/input/ClarifaiURLImage;

    invoke-virtual {p0, p1}, Lclarifai2/api/request/model/MultiModelPredictRequest$1$1;->call(Lclarifai2/dto/input/ClarifaiURLImage;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
