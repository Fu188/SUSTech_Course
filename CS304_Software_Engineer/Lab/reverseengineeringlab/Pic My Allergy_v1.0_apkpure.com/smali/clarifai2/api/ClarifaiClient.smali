.class public interface abstract Lclarifai2/api/ClarifaiClient;
.super Ljava/lang/Object;
.source "ClarifaiClient.java"


# virtual methods
.method public abstract addConcepts()Lclarifai2/api/request/concept/AddConceptsRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract addInputs()Lclarifai2/api/request/input/AddInputsRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract addMetadataForInput(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lclarifai2/api/request/input/PatchInputMetadataRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/JsonObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract addModelFeedback()Lclarifai2/api/request/feedback/AddModelFeedbackRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract addSearchesFeedback()Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract createModel(Ljava/lang/String;)Lclarifai2/api/request/model/CreateModelRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract deleteAllInputs()Lclarifai2/api/request/input/DeleteAllInputsRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract deleteAllModels()Lclarifai2/api/request/model/DeleteAllModelsRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract deleteInput(Ljava/lang/String;)Lclarifai2/api/request/input/DeleteInputRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract deleteInputsBatch()Lclarifai2/api/request/input/DeleteInputsBatchRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract deleteModel(Ljava/lang/String;)Lclarifai2/api/request/model/DeleteModelRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract deleteModelVersion(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/api/request/model/DeleteModelVersionRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract deleteModelsBatch()Lclarifai2/api/request/model/DeleteModelsBatchRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract findModel()Lclarifai2/api/request/model/FindModelRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getConceptByID(Ljava/lang/String;)Lclarifai2/api/request/concept/GetConceptByIDRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getConcepts()Lclarifai2/api/request/concept/GetConceptsRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getDefaultModels()Lclarifai2/dto/model/DefaultModels;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getInputByID(Ljava/lang/String;)Lclarifai2/api/request/input/GetInputRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getInputs()Lclarifai2/api/request/input/GetInputsRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getInputsStatus()Lclarifai2/api/request/input/GetInputsStatusRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getModelByID(Ljava/lang/String;)Lclarifai2/api/request/model/GetModelRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getModelInputs(Ljava/lang/String;)Lclarifai2/api/request/model/GetModelInputsRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getModelVersionByID(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/api/request/model/GetModelVersionRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getModelVersions(Ljava/lang/String;)Lclarifai2/api/request/model/GetModelVersionsRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getModels()Lclarifai2/api/request/model/GetModelsRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getToken()Lclarifai2/api/ClarifaiToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract hasValidToken()Z
.end method

.method public abstract mergeConceptsForInput(Ljava/lang/String;)Lclarifai2/api/request/input/PatchInputRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract mergeConceptsForModel(Ljava/lang/String;)Lclarifai2/api/request/model/PatchModelRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract modifyModel(Ljava/lang/String;)Lclarifai2/api/request/model/ModifyModelRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract predict(Ljava/lang/String;)Lclarifai2/api/request/model/PredictRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lclarifai2/api/request/model/PredictRequest<",
            "Lclarifai2/dto/prediction/Prediction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract removeConceptsForInput(Ljava/lang/String;)Lclarifai2/api/request/input/PatchInputRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract removeConceptsForModel(Ljava/lang/String;)Lclarifai2/api/request/model/PatchModelRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract searchConcepts(Ljava/lang/String;)Lclarifai2/api/request/concept/SearchConceptsRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract searchInputs(Lclarifai2/api/request/input/SearchClause;)Lclarifai2/api/request/input/SearchInputsRequest;
    .param p1    # Lclarifai2/api/request/input/SearchClause;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract searchInputs(Ljava/util/List;)Lclarifai2/api/request/input/SearchInputsRequest;
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lclarifai2/api/request/input/SearchClause;",
            ">;)",
            "Lclarifai2/api/request/input/SearchInputsRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public varargs abstract searchInputs([Lclarifai2/api/request/input/SearchClause;)Lclarifai2/api/request/input/SearchInputsRequest;
    .param p1    # [Lclarifai2/api/request/input/SearchClause;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract setConceptsForInput(Ljava/lang/String;)Lclarifai2/api/request/input/PatchInputRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract setConceptsForModel(Ljava/lang/String;)Lclarifai2/api/request/model/PatchModelRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract trainModel(Ljava/lang/String;)Lclarifai2/api/request/model/TrainModelRequest;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
