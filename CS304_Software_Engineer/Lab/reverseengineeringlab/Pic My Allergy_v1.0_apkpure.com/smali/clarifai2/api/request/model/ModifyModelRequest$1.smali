.class Lclarifai2/api/request/model/ModifyModelRequest$1;
.super Ljava/lang/Object;
.source "ModifyModelRequest.java"

# interfaces
.implements Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/request/model/ModifyModelRequest;->request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
        "Lclarifai2/dto/model/ConceptModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/request/model/ModifyModelRequest;


# direct methods
.method constructor <init>(Lclarifai2/api/request/model/ModifyModelRequest;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lclarifai2/api/request/model/ModifyModelRequest$1;->this$0:Lclarifai2/api/request/model/ModifyModelRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public httpRequest()Lokhttp3/Request;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 107
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "id"

    iget-object v2, p0, Lclarifai2/api/request/model/ModifyModelRequest$1;->this$0:Lclarifai2/api/request/model/ModifyModelRequest;

    invoke-static {v2}, Lclarifai2/api/request/model/ModifyModelRequest;->access$000(Lclarifai2/api/request/model/ModifyModelRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lclarifai2/api/request/model/ModifyModelRequest$1;->this$0:Lclarifai2/api/request/model/ModifyModelRequest;

    invoke-static {v1}, Lclarifai2/api/request/model/ModifyModelRequest;->access$100(Lclarifai2/api/request/model/ModifyModelRequest;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "name"

    .line 109
    iget-object v2, p0, Lclarifai2/api/request/model/ModifyModelRequest$1;->this$0:Lclarifai2/api/request/model/ModifyModelRequest;

    invoke-static {v2}, Lclarifai2/api/request/model/ModifyModelRequest;->access$100(Lclarifai2/api/request/model/ModifyModelRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    .line 112
    :cond_0
    new-instance v1, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v1}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    .line 113
    iget-object v2, p0, Lclarifai2/api/request/model/ModifyModelRequest$1;->this$0:Lclarifai2/api/request/model/ModifyModelRequest;

    invoke-static {v2}, Lclarifai2/api/request/model/ModifyModelRequest;->access$200(Lclarifai2/api/request/model/ModifyModelRequest;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "data"

    .line 114
    new-instance v3, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v3}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v4, "concepts"

    new-instance v5, Lclarifai2/internal/JSONArrayBuilder;

    invoke-direct {v5}, Lclarifai2/internal/JSONArrayBuilder;-><init>()V

    iget-object v6, p0, Lclarifai2/api/request/model/ModifyModelRequest$1;->this$0:Lclarifai2/api/request/model/ModifyModelRequest;

    .line 117
    invoke-static {v6}, Lclarifai2/api/request/model/ModifyModelRequest;->access$200(Lclarifai2/api/request/model/ModifyModelRequest;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lclarifai2/api/request/model/ModifyModelRequest$1$1;

    invoke-direct {v7, p0}, Lclarifai2/api/request/model/ModifyModelRequest$1$1;-><init>(Lclarifai2/api/request/model/ModifyModelRequest$1;)V

    invoke-virtual {v5, v6, v7}, Lclarifai2/internal/JSONArrayBuilder;->addAll(Ljava/lang/Iterable;Lclarifai2/Func1;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object v5

    .line 116
    invoke-virtual {v3, v4, v5}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v3

    .line 115
    invoke-virtual {v1, v2, v3}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    .line 125
    :cond_1
    new-instance v2, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v2}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    .line 126
    iget-object v3, p0, Lclarifai2/api/request/model/ModifyModelRequest$1;->this$0:Lclarifai2/api/request/model/ModifyModelRequest;

    invoke-static {v3}, Lclarifai2/api/request/model/ModifyModelRequest;->access$400(Lclarifai2/api/request/model/ModifyModelRequest;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "language"

    .line 127
    iget-object v4, p0, Lclarifai2/api/request/model/ModifyModelRequest$1;->this$0:Lclarifai2/api/request/model/ModifyModelRequest;

    invoke-static {v4}, Lclarifai2/api/request/model/ModifyModelRequest;->access$400(Lclarifai2/api/request/model/ModifyModelRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    .line 129
    :cond_2
    iget-object v3, p0, Lclarifai2/api/request/model/ModifyModelRequest$1;->this$0:Lclarifai2/api/request/model/ModifyModelRequest;

    invoke-static {v3}, Lclarifai2/api/request/model/ModifyModelRequest;->access$500(Lclarifai2/api/request/model/ModifyModelRequest;)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lclarifai2/api/request/model/ModifyModelRequest$1;->this$0:Lclarifai2/api/request/model/ModifyModelRequest;

    invoke-static {v3}, Lclarifai2/api/request/model/ModifyModelRequest;->access$600(Lclarifai2/api/request/model/ModifyModelRequest;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v3, "concepts_mutually_exclusive"

    .line 130
    iget-object v4, p0, Lclarifai2/api/request/model/ModifyModelRequest$1;->this$0:Lclarifai2/api/request/model/ModifyModelRequest;

    .line 131
    invoke-static {v4}, Lclarifai2/api/request/model/ModifyModelRequest;->access$500(Lclarifai2/api/request/model/ModifyModelRequest;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Boolean;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v3

    const-string v4, "closed_environment"

    iget-object v5, p0, Lclarifai2/api/request/model/ModifyModelRequest$1;->this$0:Lclarifai2/api/request/model/ModifyModelRequest;

    .line 132
    invoke-static {v5}, Lclarifai2/api/request/model/ModifyModelRequest;->access$600(Lclarifai2/api/request/model/ModifyModelRequest;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Boolean;)Lclarifai2/internal/JSONObjectBuilder;

    :cond_4
    const-string v3, "output_config"

    .line 134
    invoke-virtual {v2}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    const-string v2, "output_info"

    .line 135
    invoke-virtual {v0, v2, v1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    .line 137
    new-instance v1, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v1}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v2, "models"

    new-instance v3, Lclarifai2/internal/JSONArrayBuilder;

    invoke-direct {v3}, Lclarifai2/internal/JSONArrayBuilder;-><init>()V

    .line 138
    invoke-virtual {v3, v0}, Lclarifai2/internal/JSONArrayBuilder;->add(Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    const-string v1, "action"

    iget-object v2, p0, Lclarifai2/api/request/model/ModifyModelRequest$1;->this$0:Lclarifai2/api/request/model/ModifyModelRequest;

    .line 139
    invoke-static {v2}, Lclarifai2/api/request/model/ModifyModelRequest;->access$800(Lclarifai2/api/request/model/ModifyModelRequest;)Lclarifai2/api/BaseClarifaiClient;

    move-result-object v2

    iget-object v2, v2, Lclarifai2/api/BaseClarifaiClient;->gson:Lcom/google/gson/Gson;

    iget-object v3, p0, Lclarifai2/api/request/model/ModifyModelRequest$1;->this$0:Lclarifai2/api/request/model/ModifyModelRequest;

    invoke-static {v3}, Lclarifai2/api/request/model/ModifyModelRequest;->access$700(Lclarifai2/api/request/model/ModifyModelRequest;)Lclarifai2/api/request/model/Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 141
    iget-object p0, p0, Lclarifai2/api/request/model/ModifyModelRequest$1;->this$0:Lclarifai2/api/request/model/ModifyModelRequest;

    const-string v1, "/v2/models"

    invoke-static {p0, v1, v0}, Lclarifai2/api/request/model/ModifyModelRequest;->access$900(Lclarifai2/api/request/model/ModifyModelRequest;Ljava/lang/String;Lcom/google/gson/JsonElement;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public unmarshaler()Lclarifai2/internal/JSONUnmarshaler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONUnmarshaler<",
            "Lclarifai2/dto/model/ConceptModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 145
    new-instance v0, Lclarifai2/api/request/model/ModifyModelRequest$1$2;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/ModifyModelRequest$1$2;-><init>(Lclarifai2/api/request/model/ModifyModelRequest$1;)V

    return-object v0
.end method
