.class public abstract Lclarifai2/dto/model/ConceptModel;
.super Lclarifai2/dto/model/Model;
.source "ConceptModel.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/model/Model$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/model/ConceptModel$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/dto/model/Model<",
        "Lclarifai2/dto/prediction/Concept;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lclarifai2/dto/model/Model;-><init>()V

    return-void
.end method


# virtual methods
.method public final mergeConcepts()Lclarifai2/api/request/model/PatchModelRequest;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    invoke-virtual {p0}, Lclarifai2/dto/model/ConceptModel;->client()Lclarifai2/api/ClarifaiClient;

    move-result-object v0

    invoke-virtual {p0}, Lclarifai2/dto/model/ConceptModel;->id()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lclarifai2/api/ClarifaiClient;->mergeConceptsForModel(Ljava/lang/String;)Lclarifai2/api/request/model/PatchModelRequest;

    move-result-object p0

    return-object p0
.end method

.method public final modelType()Lclarifai2/dto/model/ModelType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    sget-object p0, Lclarifai2/dto/model/ModelType;->CONCEPT:Lclarifai2/dto/model/ModelType;

    return-object p0
.end method

.method public final modify()Lclarifai2/api/request/model/ModifyModelRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    invoke-virtual {p0}, Lclarifai2/dto/model/ConceptModel;->client()Lclarifai2/api/ClarifaiClient;

    move-result-object v0

    invoke-virtual {p0}, Lclarifai2/dto/model/ConceptModel;->id()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lclarifai2/api/ClarifaiClient;->modifyModel(Ljava/lang/String;)Lclarifai2/api/request/model/ModifyModelRequest;

    move-result-object p0

    return-object p0
.end method

.method public final outputInfo()Lclarifai2/dto/model/output_info/ConceptOutputInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 59
    invoke-virtual {p0}, Lclarifai2/dto/model/ConceptModel;->_outputInfo()Lclarifai2/dto/model/output_info/OutputInfo;

    move-result-object p0

    check-cast p0, Lclarifai2/dto/model/output_info/ConceptOutputInfo;

    return-object p0
.end method

.method public bridge synthetic outputInfo()Lclarifai2/dto/model/output_info/OutputInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 12
    invoke-virtual {p0}, Lclarifai2/dto/model/ConceptModel;->outputInfo()Lclarifai2/dto/model/output_info/ConceptOutputInfo;

    move-result-object p0

    return-object p0
.end method

.method public final removeConcepts()Lclarifai2/api/request/model/PatchModelRequest;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    invoke-virtual {p0}, Lclarifai2/dto/model/ConceptModel;->client()Lclarifai2/api/ClarifaiClient;

    move-result-object v0

    invoke-virtual {p0}, Lclarifai2/dto/model/ConceptModel;->id()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lclarifai2/api/ClarifaiClient;->removeConceptsForModel(Ljava/lang/String;)Lclarifai2/api/request/model/PatchModelRequest;

    move-result-object p0

    return-object p0
.end method

.method public final setConcepts()Lclarifai2/api/request/model/PatchModelRequest;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    invoke-virtual {p0}, Lclarifai2/dto/model/ConceptModel;->client()Lclarifai2/api/ClarifaiClient;

    move-result-object v0

    invoke-virtual {p0}, Lclarifai2/dto/model/ConceptModel;->id()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lclarifai2/api/ClarifaiClient;->setConceptsForModel(Ljava/lang/String;)Lclarifai2/api/request/model/PatchModelRequest;

    move-result-object p0

    return-object p0
.end method
