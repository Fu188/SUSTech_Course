.class final Lclarifai2/dto/multimodel/AutoValue_WorkflowResult;
.super Lclarifai2/dto/multimodel/WorkflowResult;
.source "AutoValue_WorkflowResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PREDICTION:",
        "Lclarifai2/dto/prediction/Prediction;",
        ">",
        "Lclarifai2/dto/multimodel/WorkflowResult<",
        "TPREDICTION;>;"
    }
.end annotation


# instance fields
.field private final multiModelResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/multimodel/MultiModelResult<",
            "TPREDICTION;>;>;"
        }
    .end annotation
.end field

.field private final workflow:Lclarifai2/dto/multimodel/Workflow;


# direct methods
.method constructor <init>(Lclarifai2/dto/multimodel/Workflow;Ljava/util/List;)V
    .locals 0
    .param p1    # Lclarifai2/dto/multimodel/Workflow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/dto/multimodel/Workflow;",
            "Ljava/util/List<",
            "Lclarifai2/dto/multimodel/MultiModelResult<",
            "TPREDICTION;>;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lclarifai2/dto/multimodel/WorkflowResult;-><init>()V

    .line 18
    iput-object p1, p0, Lclarifai2/dto/multimodel/AutoValue_WorkflowResult;->workflow:Lclarifai2/dto/multimodel/Workflow;

    .line 19
    iput-object p2, p0, Lclarifai2/dto/multimodel/AutoValue_WorkflowResult;->multiModelResults:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 47
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/multimodel/WorkflowResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 48
    check-cast p1, Lclarifai2/dto/multimodel/WorkflowResult;

    .line 49
    iget-object v1, p0, Lclarifai2/dto/multimodel/AutoValue_WorkflowResult;->workflow:Lclarifai2/dto/multimodel/Workflow;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lclarifai2/dto/multimodel/WorkflowResult;->workflow()Lclarifai2/dto/multimodel/Workflow;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lclarifai2/dto/multimodel/AutoValue_WorkflowResult;->workflow:Lclarifai2/dto/multimodel/Workflow;

    invoke-virtual {p1}, Lclarifai2/dto/multimodel/WorkflowResult;->workflow()Lclarifai2/dto/multimodel/Workflow;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lclarifai2/dto/multimodel/AutoValue_WorkflowResult;->multiModelResults:Ljava/util/List;

    if-nez v1, :cond_2

    .line 50
    invoke-virtual {p1}, Lclarifai2/dto/multimodel/WorkflowResult;->multiModelResults()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lclarifai2/dto/multimodel/AutoValue_WorkflowResult;->multiModelResults:Ljava/util/List;

    invoke-virtual {p1}, Lclarifai2/dto/multimodel/WorkflowResult;->multiModelResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 59
    iget-object v0, p0, Lclarifai2/dto/multimodel/AutoValue_WorkflowResult;->workflow:Lclarifai2/dto/multimodel/Workflow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lclarifai2/dto/multimodel/AutoValue_WorkflowResult;->workflow:Lclarifai2/dto/multimodel/Workflow;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 61
    iget-object v2, p0, Lclarifai2/dto/multimodel/AutoValue_WorkflowResult;->multiModelResults:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lclarifai2/dto/multimodel/AutoValue_WorkflowResult;->multiModelResults:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_1
    xor-int p0, v0, v1

    return p0
.end method

.method public multiModelResults()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lclarifai2/dto/multimodel/MultiModelResult<",
            "TPREDICTION;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 31
    iget-object p0, p0, Lclarifai2/dto/multimodel/AutoValue_WorkflowResult;->multiModelResults:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkflowResult{workflow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/multimodel/AutoValue_WorkflowResult;->workflow:Lclarifai2/dto/multimodel/Workflow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", multiModelResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/multimodel/AutoValue_WorkflowResult;->multiModelResults:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public workflow()Lclarifai2/dto/multimodel/Workflow;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 25
    iget-object p0, p0, Lclarifai2/dto/multimodel/AutoValue_WorkflowResult;->workflow:Lclarifai2/dto/multimodel/Workflow;

    return-object p0
.end method
