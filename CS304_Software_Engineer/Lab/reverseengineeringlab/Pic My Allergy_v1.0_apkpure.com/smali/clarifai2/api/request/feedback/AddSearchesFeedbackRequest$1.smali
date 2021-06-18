.class Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest$1;
.super Ljava/lang/Object;
.source "AddSearchesFeedbackRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;->request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
        "Lcom/google/gson/JsonNull;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;


# direct methods
.method constructor <init>(Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private makeFeedbackInfoJsonObject()Lclarifai2/internal/JSONObjectBuilder;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 67
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "end_user_id"

    iget-object v2, p0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;

    .line 68
    invoke-static {v2}, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;->access$500(Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    const-string v1, "session_id"

    iget-object v2, p0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;

    .line 69
    invoke-static {v2}, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;->access$400(Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    const-string v1, "event_type"

    iget-object v2, p0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;

    .line 70
    invoke-static {v2}, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;->access$300(Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    const-string v1, "search_id"

    iget-object p0, p0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;

    .line 71
    invoke-static {p0}, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;->access$200(Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public httpRequest()Lokhttp3/Request;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 55
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "input"

    new-instance v2, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v2}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v3, "id"

    iget-object v4, p0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;

    .line 57
    invoke-static {v4}, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;->access$000(Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v2

    const-string v3, "feedback_info"

    .line 58
    invoke-direct {p0}, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest$1;->makeFeedbackInfoJsonObject()Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 62
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 63
    iget-object p0, p0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest$1;->this$0:Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;

    const-string v1, "/v2/searches/feedback/"

    invoke-static {p0, v1, v0}, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;->access$100(Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONUnmarshaler<",
            "Lcom/google/gson/JsonNull;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 75
    new-instance v0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest$1$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest$1$1;-><init>(Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest$1;)V

    return-object v0
.end method
