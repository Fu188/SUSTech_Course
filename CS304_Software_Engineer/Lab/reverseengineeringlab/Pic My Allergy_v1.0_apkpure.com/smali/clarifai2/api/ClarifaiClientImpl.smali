.class final Lclarifai2/api/ClarifaiClientImpl;
.super Lclarifai2/api/BaseClarifaiClient;
.source "ClarifaiClientImpl.java"

# interfaces
.implements Lclarifai2/api/ClarifaiClient;


# instance fields
.field private final builtInModels:Lclarifai2/dto/model/DefaultModels;


# direct methods
.method constructor <init>(Lclarifai2/api/ClarifaiBuilder;)V
    .locals 0
    .param p1    # Lclarifai2/api/ClarifaiBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1}, Lclarifai2/api/BaseClarifaiClient;-><init>(Lclarifai2/api/ClarifaiBuilder;)V

    .line 49
    new-instance p1, Lclarifai2/dto/model/DefaultModels;

    invoke-direct {p1, p0}, Lclarifai2/dto/model/DefaultModels;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    iput-object p1, p0, Lclarifai2/api/ClarifaiClientImpl;->builtInModels:Lclarifai2/dto/model/DefaultModels;

    return-void
.end method


# virtual methods
.method public addConcepts()Lclarifai2/api/request/concept/AddConceptsRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 114
    new-instance v0, Lclarifai2/api/request/concept/AddConceptsRequest;

    invoke-direct {v0, p0}, Lclarifai2/api/request/concept/AddConceptsRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-object v0
.end method

.method public addInputs()Lclarifai2/api/request/input/AddInputsRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 56
    new-instance v0, Lclarifai2/api/request/input/AddInputsRequest;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/AddInputsRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-object v0
.end method

.method public addMetadataForInput(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lclarifai2/api/request/input/PatchInputMetadataRequest;
    .locals 1
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

    .line 73
    new-instance v0, Lclarifai2/api/request/input/PatchInputMetadataRequest;

    invoke-direct {v0, p0, p1, p2}, Lclarifai2/api/request/input/PatchInputMetadataRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-object v0
.end method

.method public addModelFeedback()Lclarifai2/api/request/feedback/AddModelFeedbackRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 211
    new-instance v0, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;

    invoke-direct {v0, p0}, Lclarifai2/api/request/feedback/AddModelFeedbackRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-object v0
.end method

.method public addSearchesFeedback()Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 207
    new-instance v0, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;

    invoke-direct {v0, p0}, Lclarifai2/api/request/feedback/AddSearchesFeedbackRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-object v0
.end method

.method public createModel(Ljava/lang/String;)Lclarifai2/api/request/model/CreateModelRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 131
    new-instance v0, Lclarifai2/api/request/model/CreateModelRequest;

    invoke-direct {v0, p0, p1}, Lclarifai2/api/request/model/CreateModelRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;)V

    return-object v0
.end method

.method public deleteAllInputs()Lclarifai2/api/request/input/DeleteAllInputsRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 94
    new-instance v0, Lclarifai2/api/request/input/DeleteAllInputsRequest;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/DeleteAllInputsRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-object v0
.end method

.method public deleteAllModels()Lclarifai2/api/request/model/DeleteAllModelsRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 161
    new-instance v0, Lclarifai2/api/request/model/DeleteAllModelsRequest;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/DeleteAllModelsRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-object v0
.end method

.method public deleteInput(Ljava/lang/String;)Lclarifai2/api/request/input/DeleteInputRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 85
    new-instance v0, Lclarifai2/api/request/input/DeleteInputRequest;

    invoke-direct {v0, p0, p1}, Lclarifai2/api/request/input/DeleteInputRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;)V

    return-object v0
.end method

.method public deleteInputsBatch()Lclarifai2/api/request/input/DeleteInputsBatchRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 89
    new-instance v0, Lclarifai2/api/request/input/DeleteInputsBatchRequest;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/DeleteInputsBatchRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-object v0
.end method

.method public deleteModel(Ljava/lang/String;)Lclarifai2/api/request/model/DeleteModelRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 148
    new-instance v0, Lclarifai2/api/request/model/DeleteModelRequest;

    invoke-direct {v0, p0, p1}, Lclarifai2/api/request/model/DeleteModelRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;)V

    return-object v0
.end method

.method public deleteModelVersion(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/api/request/model/DeleteModelVersionRequest;
    .locals 1
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

    .line 157
    new-instance v0, Lclarifai2/api/request/model/DeleteModelVersionRequest;

    invoke-direct {v0, p0, p1, p2}, Lclarifai2/api/request/model/DeleteModelVersionRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public deleteModelsBatch()Lclarifai2/api/request/model/DeleteModelsBatchRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 152
    new-instance v0, Lclarifai2/api/request/model/DeleteModelsBatchRequest;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/DeleteModelsBatchRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-object v0
.end method

.method public findModel()Lclarifai2/api/request/model/FindModelRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 179
    new-instance v0, Lclarifai2/api/request/model/FindModelRequest;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/FindModelRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-object v0
.end method

.method public getConceptByID(Ljava/lang/String;)Lclarifai2/api/request/concept/GetConceptByIDRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 122
    new-instance v0, Lclarifai2/api/request/concept/GetConceptByIDRequest;

    invoke-direct {v0, p0, p1}, Lclarifai2/api/request/concept/GetConceptByIDRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;)V

    return-object v0
.end method

.method public getConcepts()Lclarifai2/api/request/concept/GetConceptsRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 118
    new-instance v0, Lclarifai2/api/request/concept/GetConceptsRequest;

    invoke-direct {v0, p0}, Lclarifai2/api/request/concept/GetConceptsRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-object v0
.end method

.method public getDefaultModels()Lclarifai2/dto/model/DefaultModels;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 135
    iget-object p0, p0, Lclarifai2/api/ClarifaiClientImpl;->builtInModels:Lclarifai2/dto/model/DefaultModels;

    return-object p0
.end method

.method public getInputByID(Ljava/lang/String;)Lclarifai2/api/request/input/GetInputRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 81
    new-instance v0, Lclarifai2/api/request/input/GetInputRequest;

    invoke-direct {v0, p0, p1}, Lclarifai2/api/request/input/GetInputRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;)V

    return-object v0
.end method

.method public getInputs()Lclarifai2/api/request/input/GetInputsRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 77
    new-instance v0, Lclarifai2/api/request/input/GetInputsRequest;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/GetInputsRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-object v0
.end method

.method public getInputsStatus()Lclarifai2/api/request/input/GetInputsStatusRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 98
    new-instance v0, Lclarifai2/api/request/input/GetInputsStatusRequest;

    invoke-direct {v0, p0}, Lclarifai2/api/request/input/GetInputsStatusRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-object v0
.end method

.method public getModelByID(Ljava/lang/String;)Lclarifai2/api/request/model/GetModelRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 144
    new-instance v0, Lclarifai2/api/request/model/GetModelRequest;

    invoke-direct {v0, p0, p1}, Lclarifai2/api/request/model/GetModelRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;)V

    return-object v0
.end method

.method public getModelInputs(Ljava/lang/String;)Lclarifai2/api/request/model/GetModelInputsRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 175
    new-instance v0, Lclarifai2/api/request/model/GetModelInputsRequest;

    invoke-direct {v0, p0, p1}, Lclarifai2/api/request/model/GetModelInputsRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;)V

    return-object v0
.end method

.method public getModelVersionByID(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/api/request/model/GetModelVersionRequest;
    .locals 1
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

    .line 166
    new-instance v0, Lclarifai2/api/request/model/GetModelVersionRequest;

    invoke-direct {v0, p0, p1, p2}, Lclarifai2/api/request/model/GetModelVersionRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getModelVersions(Ljava/lang/String;)Lclarifai2/api/request/model/GetModelVersionsRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 171
    new-instance v0, Lclarifai2/api/request/model/GetModelVersionsRequest;

    invoke-direct {v0, p0, p1}, Lclarifai2/api/request/model/GetModelVersionsRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;)V

    return-object v0
.end method

.method public getModels()Lclarifai2/api/request/model/GetModelsRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 139
    new-instance v0, Lclarifai2/api/request/model/GetModelsRequest;

    invoke-direct {v0, p0}, Lclarifai2/api/request/model/GetModelsRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;)V

    return-object v0
.end method

.method public mergeConceptsForInput(Ljava/lang/String;)Lclarifai2/api/request/input/PatchInputRequest;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 60
    new-instance v0, Lclarifai2/api/request/input/PatchInputRequest;

    const-string v1, "merge"

    invoke-direct {v0, p0, p1, v1}, Lclarifai2/api/request/input/PatchInputRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public mergeConceptsForModel(Ljava/lang/String;)Lclarifai2/api/request/model/PatchModelRequest;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 183
    new-instance v0, Lclarifai2/api/request/model/PatchModelRequest;

    sget-object v1, Lclarifai2/api/request/model/Action;->MERGE:Lclarifai2/api/request/model/Action;

    invoke-direct {v0, p0, p1, v1}, Lclarifai2/api/request/model/PatchModelRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;Lclarifai2/api/request/model/Action;)V

    return-object v0
.end method

.method public modifyModel(Ljava/lang/String;)Lclarifai2/api/request/model/ModifyModelRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 195
    new-instance v0, Lclarifai2/api/request/model/ModifyModelRequest;

    invoke-direct {v0, p0, p1}, Lclarifai2/api/request/model/ModifyModelRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;)V

    return-object v0
.end method

.method public predict(Ljava/lang/String;)Lclarifai2/api/request/model/PredictRequest;
    .locals 1
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

    .line 203
    new-instance v0, Lclarifai2/api/request/model/PredictRequest;

    invoke-direct {v0, p0, p1}, Lclarifai2/api/request/model/PredictRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;)V

    return-object v0
.end method

.method public removeConceptsForInput(Ljava/lang/String;)Lclarifai2/api/request/input/PatchInputRequest;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 68
    new-instance v0, Lclarifai2/api/request/input/PatchInputRequest;

    const-string v1, "remove"

    invoke-direct {v0, p0, p1, v1}, Lclarifai2/api/request/input/PatchInputRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public removeConceptsForModel(Ljava/lang/String;)Lclarifai2/api/request/model/PatchModelRequest;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 191
    new-instance v0, Lclarifai2/api/request/model/PatchModelRequest;

    sget-object v1, Lclarifai2/api/request/model/Action;->REMOVE:Lclarifai2/api/request/model/Action;

    invoke-direct {v0, p0, p1, v1}, Lclarifai2/api/request/model/PatchModelRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;Lclarifai2/api/request/model/Action;)V

    return-object v0
.end method

.method public searchConcepts(Ljava/lang/String;)Lclarifai2/api/request/concept/SearchConceptsRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 127
    new-instance v0, Lclarifai2/api/request/concept/SearchConceptsRequest;

    invoke-direct {v0, p0, p1}, Lclarifai2/api/request/concept/SearchConceptsRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;)V

    return-object v0
.end method

.method public searchInputs(Lclarifai2/api/request/input/SearchClause;)Lclarifai2/api/request/input/SearchInputsRequest;
    .locals 0
    .param p1    # Lclarifai2/api/request/input/SearchClause;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 102
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/api/ClarifaiClientImpl;->searchInputs(Ljava/util/List;)Lclarifai2/api/request/input/SearchInputsRequest;

    move-result-object p0

    return-object p0
.end method

.method public searchInputs(Ljava/util/List;)Lclarifai2/api/request/input/SearchInputsRequest;
    .locals 1
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

    .line 110
    new-instance v0, Lclarifai2/api/request/input/SearchInputsRequest;

    invoke-direct {v0, p0, p1}, Lclarifai2/api/request/input/SearchInputsRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/util/List;)V

    return-object v0
.end method

.method public varargs searchInputs([Lclarifai2/api/request/input/SearchClause;)Lclarifai2/api/request/input/SearchInputsRequest;
    .locals 0
    .param p1    # [Lclarifai2/api/request/input/SearchClause;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 106
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/api/ClarifaiClientImpl;->searchInputs(Ljava/util/List;)Lclarifai2/api/request/input/SearchInputsRequest;

    move-result-object p0

    return-object p0
.end method

.method public setConceptsForInput(Ljava/lang/String;)Lclarifai2/api/request/input/PatchInputRequest;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 64
    new-instance v0, Lclarifai2/api/request/input/PatchInputRequest;

    const-string v1, "overwrite"

    invoke-direct {v0, p0, p1, v1}, Lclarifai2/api/request/input/PatchInputRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setConceptsForModel(Ljava/lang/String;)Lclarifai2/api/request/model/PatchModelRequest;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 187
    new-instance v0, Lclarifai2/api/request/model/PatchModelRequest;

    sget-object v1, Lclarifai2/api/request/model/Action;->OVERWRITE:Lclarifai2/api/request/model/Action;

    invoke-direct {v0, p0, p1, v1}, Lclarifai2/api/request/model/PatchModelRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;Lclarifai2/api/request/model/Action;)V

    return-object v0
.end method

.method public trainModel(Ljava/lang/String;)Lclarifai2/api/request/model/TrainModelRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 199
    new-instance v0, Lclarifai2/api/request/model/TrainModelRequest;

    invoke-direct {v0, p0, p1}, Lclarifai2/api/request/model/TrainModelRequest;-><init>(Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;)V

    return-object v0
.end method
