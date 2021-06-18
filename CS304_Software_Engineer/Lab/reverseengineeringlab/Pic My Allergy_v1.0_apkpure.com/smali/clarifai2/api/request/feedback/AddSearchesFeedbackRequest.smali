.class public final Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;
.super Lclarifai2/api/request/ClarifaiRequest$Builder;
.source "AddSearchesFeedbackRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiRequest$Builder<",
        "Lcom/google/gson/JsonNull;",
        ">;"
    }
.end annotation


# instance fields
.field private endUserId:Ljava/lang/String;

.field private eventType:Ljava/lang/String;

.field private id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private searchId:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lclarifai2/api/BaseClarifaiClient;)V
    .locals 0
    .param p1    # Lclarifai2/api/BaseClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;->id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;->postRequest(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;->searchId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;->eventType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;->endUserId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
            "Lcom/google/gson/JsonNull;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    new-instance v0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest$1;

    invoke-direct {v0, p0}, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest$1;-><init>(Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;)V

    return-object v0
.end method

.method public withEndUserId(Ljava/lang/String;)Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 33
    iput-object p1, p0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;->endUserId:Ljava/lang/String;

    return-object p0
.end method

.method public withEventType(Ljava/lang/String;)Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 43
    iput-object p1, p0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;->eventType:Ljava/lang/String;

    return-object p0
.end method

.method public withId(Ljava/lang/String;)Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    iput-object p1, p0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;->id:Ljava/lang/String;

    return-object p0
.end method

.method public withSearchId(Ljava/lang/String;)Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 48
    iput-object p1, p0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;->searchId:Ljava/lang/String;

    return-object p0
.end method

.method public withSessionId(Ljava/lang/String;)Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    iput-object p1, p0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;->sessionId:Ljava/lang/String;

    return-object p0
.end method
