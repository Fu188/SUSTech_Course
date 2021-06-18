.class final Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;
.super Lclarifai2/dto/multimodel/MultiModelResult;
.source "AutoValue_MultiModelResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PREDICTION:",
        "Lclarifai2/dto/prediction/Prediction;",
        ">",
        "Lclarifai2/dto/multimodel/MultiModelResult<",
        "TPREDICTION;>;"
    }
.end annotation


# instance fields
.field private final input:Lclarifai2/dto/input/ClarifaiInput;

.field private final predictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/model/output/ClarifaiOutput<",
            "TPREDICTION;>;>;"
        }
    .end annotation
.end field

.field private final status:Lclarifai2/dto/ClarifaiStatus;


# direct methods
.method constructor <init>(Lclarifai2/dto/ClarifaiStatus;Lclarifai2/dto/input/ClarifaiInput;Ljava/util/List;)V
    .locals 0
    .param p1    # Lclarifai2/dto/ClarifaiStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lclarifai2/dto/input/ClarifaiInput;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/dto/ClarifaiStatus;",
            "Lclarifai2/dto/input/ClarifaiInput;",
            "Ljava/util/List<",
            "Lclarifai2/dto/model/output/ClarifaiOutput<",
            "TPREDICTION;>;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lclarifai2/dto/multimodel/MultiModelResult;-><init>()V

    .line 23
    iput-object p1, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->status:Lclarifai2/dto/ClarifaiStatus;

    .line 24
    iput-object p2, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->input:Lclarifai2/dto/input/ClarifaiInput;

    .line 25
    iput-object p3, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->predictions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 60
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/multimodel/MultiModelResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 61
    check-cast p1, Lclarifai2/dto/multimodel/MultiModelResult;

    .line 62
    iget-object v1, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->status:Lclarifai2/dto/ClarifaiStatus;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lclarifai2/dto/multimodel/MultiModelResult;->status()Lclarifai2/dto/ClarifaiStatus;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->status:Lclarifai2/dto/ClarifaiStatus;

    invoke-virtual {p1}, Lclarifai2/dto/multimodel/MultiModelResult;->status()Lclarifai2/dto/ClarifaiStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->input:Lclarifai2/dto/input/ClarifaiInput;

    if-nez v1, :cond_2

    .line 63
    invoke-virtual {p1}, Lclarifai2/dto/multimodel/MultiModelResult;->input()Lclarifai2/dto/input/ClarifaiInput;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->input:Lclarifai2/dto/input/ClarifaiInput;

    invoke-virtual {p1}, Lclarifai2/dto/multimodel/MultiModelResult;->input()Lclarifai2/dto/input/ClarifaiInput;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->predictions:Ljava/util/List;

    if-nez v1, :cond_3

    .line 64
    invoke-virtual {p1}, Lclarifai2/dto/multimodel/MultiModelResult;->predictions()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->predictions:Ljava/util/List;

    invoke-virtual {p1}, Lclarifai2/dto/multimodel/MultiModelResult;->predictions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    return v0

    :cond_5
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 73
    iget-object v0, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->status:Lclarifai2/dto/ClarifaiStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->status:Lclarifai2/dto/ClarifaiStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 75
    iget-object v3, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->input:Lclarifai2/dto/input/ClarifaiInput;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->input:Lclarifai2/dto/input/ClarifaiInput;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 77
    iget-object v2, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->predictions:Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->predictions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_2
    xor-int p0, v0, v1

    return p0
.end method

.method public input()Lclarifai2/dto/input/ClarifaiInput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 37
    iget-object p0, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->input:Lclarifai2/dto/input/ClarifaiInput;

    return-object p0
.end method

.method public predictions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lclarifai2/dto/model/output/ClarifaiOutput<",
            "TPREDICTION;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 43
    iget-object p0, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->predictions:Ljava/util/List;

    return-object p0
.end method

.method public status()Lclarifai2/dto/ClarifaiStatus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 31
    iget-object p0, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->status:Lclarifai2/dto/ClarifaiStatus;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiModelResult{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->status:Lclarifai2/dto/ClarifaiStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", input="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->input:Lclarifai2/dto/input/ClarifaiInput;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", predictions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/multimodel/AutoValue_MultiModelResult;->predictions:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
