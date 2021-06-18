.class public final Lclarifai2/api/request/model/PatchModelRequest;
.super Lclarifai2/api/request/ClarifaiRequest$Builder;
.source "PatchModelRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/api/request/ClarifaiRequest$Builder<",
        "Lclarifai2/dto/model/ConceptModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final action:Lclarifai2/api/request/model/Action;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final concepts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final modelID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;Lclarifai2/api/request/model/Action;)V
    .locals 0
    .param p1    # Lclarifai2/api/BaseClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lclarifai2/api/request/model/Action;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1}, Lclarifai2/api/request/ClarifaiRequest$Builder;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lclarifai2/api/request/model/PatchModelRequest;->concepts:Ljava/util/List;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lclarifai2/api/request/model/PatchModelRequest;->language:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lclarifai2/api/request/model/PatchModelRequest;->modelID:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lclarifai2/api/request/model/PatchModelRequest;->action:Lclarifai2/api/request/model/Action;

    return-void
.end method


# virtual methods
.method protected build()Lclarifai2/api/request/ClarifaiRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/api/request/ClarifaiRequest<",
            "Lclarifai2/dto/model/ConceptModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 48
    iget-object v0, p0, Lclarifai2/api/request/model/PatchModelRequest;->language:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lclarifai2/api/request/model/ModifyModelRequest;

    iget-object v1, p0, Lclarifai2/api/request/model/PatchModelRequest;->client:Lclarifai2/api/BaseClarifaiClient;

    iget-object v2, p0, Lclarifai2/api/request/model/PatchModelRequest;->modelID:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lclarifai2/api/request/model/ModifyModelRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;)V

    iget-object v1, p0, Lclarifai2/api/request/model/PatchModelRequest;->action:Lclarifai2/api/request/model/Action;

    iget-object v2, p0, Lclarifai2/api/request/model/PatchModelRequest;->concepts:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lclarifai2/api/request/model/ModifyModelRequest;->withConcepts(Lclarifai2/api/request/model/Action;Ljava/util/List;)Lclarifai2/api/request/model/ModifyModelRequest;

    move-result-object v0

    iget-object p0, p0, Lclarifai2/api/request/model/PatchModelRequest;->language:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lclarifai2/api/request/model/ModifyModelRequest;->withLanguage(Ljava/lang/String;)Lclarifai2/api/request/model/ModifyModelRequest;

    move-result-object p0

    return-object p0

    .line 51
    :cond_0
    new-instance v0, Lclarifai2/api/request/model/ModifyModelRequest;

    iget-object v1, p0, Lclarifai2/api/request/model/PatchModelRequest;->client:Lclarifai2/api/BaseClarifaiClient;

    iget-object v2, p0, Lclarifai2/api/request/model/PatchModelRequest;->modelID:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lclarifai2/api/request/model/ModifyModelRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;)V

    iget-object v1, p0, Lclarifai2/api/request/model/PatchModelRequest;->action:Lclarifai2/api/request/model/Action;

    iget-object p0, p0, Lclarifai2/api/request/model/PatchModelRequest;->concepts:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lclarifai2/api/request/model/ModifyModelRequest;->withConcepts(Lclarifai2/api/request/model/Action;Ljava/util/List;)Lclarifai2/api/request/model/ModifyModelRequest;

    move-result-object p0

    return-object p0
.end method

.method public plus(Ljava/util/Collection;)Lclarifai2/api/request/model/PatchModelRequest;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;)",
            "Lclarifai2/api/request/model/PatchModelRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    iget-object v0, p0, Lclarifai2/api/request/model/PatchModelRequest;->concepts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs plus([Lclarifai2/dto/prediction/Concept;)Lclarifai2/api/request/model/PatchModelRequest;
    .locals 0
    .param p1    # [Lclarifai2/dto/prediction/Concept;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/api/request/model/PatchModelRequest;->plus(Ljava/util/Collection;)Lclarifai2/api/request/model/PatchModelRequest;

    move-result-object p0

    return-object p0
.end method

.method protected request()Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/api/request/ClarifaiRequest$DeserializedRequest<",
            "Lclarifai2/dto/model/ConceptModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 56
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public withLanguage(Ljava/lang/String;)Lclarifai2/api/request/model/PatchModelRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 43
    iput-object p1, p0, Lclarifai2/api/request/model/PatchModelRequest;->language:Ljava/lang/String;

    return-object p0
.end method
