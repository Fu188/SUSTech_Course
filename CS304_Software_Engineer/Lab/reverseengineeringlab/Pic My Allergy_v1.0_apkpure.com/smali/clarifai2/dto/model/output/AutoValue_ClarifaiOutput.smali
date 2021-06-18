.class final Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;
.super Lclarifai2/dto/model/output/ClarifaiOutput;
.source "AutoValue_ClarifaiOutput.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PREDICTION:",
        "Lclarifai2/dto/prediction/Prediction;",
        ">",
        "Lclarifai2/dto/model/output/ClarifaiOutput<",
        "TPREDICTION;>;"
    }
.end annotation


# instance fields
.field private final createdAt:Ljava/util/Date;

.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TPREDICTION;>;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final input:Lclarifai2/dto/input/ClarifaiInput;

.field private final model:Lclarifai2/dto/model/Model;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lclarifai2/dto/model/Model<",
            "TPREDICTION;>;"
        }
    .end annotation
.end field

.field private final status:Lclarifai2/dto/ClarifaiStatus;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Lclarifai2/dto/model/Model;Lclarifai2/dto/input/ClarifaiInput;Ljava/util/List;Lclarifai2/dto/ClarifaiStatus;)V
    .locals 0
    .param p4    # Lclarifai2/dto/input/ClarifaiInput;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lclarifai2/dto/model/Model<",
            "TPREDICTION;>;",
            "Lclarifai2/dto/input/ClarifaiInput;",
            "Ljava/util/List<",
            "TPREDICTION;>;",
            "Lclarifai2/dto/ClarifaiStatus;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lclarifai2/dto/model/output/ClarifaiOutput;-><init>()V

    if-nez p1, :cond_0

    .line 32
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null id"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_0
    iput-object p1, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->id:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 36
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null createdAt"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_1
    iput-object p2, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->createdAt:Ljava/util/Date;

    if-nez p3, :cond_2

    .line 40
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null model"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_2
    iput-object p3, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->model:Lclarifai2/dto/model/Model;

    .line 43
    iput-object p4, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->input:Lclarifai2/dto/input/ClarifaiInput;

    if-nez p5, :cond_3

    .line 45
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null data"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_3
    iput-object p5, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->data:Ljava/util/List;

    if-nez p6, :cond_4

    .line 49
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null status"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_4
    iput-object p6, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->status:Lclarifai2/dto/ClarifaiStatus;

    return-void
.end method


# virtual methods
.method public createdAt()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 63
    iget-object p0, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->createdAt:Ljava/util/Date;

    return-object p0
.end method

.method public data()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TPREDICTION;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 81
    iget-object p0, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->data:Ljava/util/List;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 107
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/model/output/ClarifaiOutput;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 108
    check-cast p1, Lclarifai2/dto/model/output/ClarifaiOutput;

    .line 109
    iget-object v1, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lclarifai2/dto/model/output/ClarifaiOutput;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->createdAt:Ljava/util/Date;

    .line 110
    invoke-virtual {p1}, Lclarifai2/dto/model/output/ClarifaiOutput;->createdAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->model:Lclarifai2/dto/model/Model;

    .line 111
    invoke-virtual {p1}, Lclarifai2/dto/model/output/ClarifaiOutput;->model()Lclarifai2/dto/model/Model;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->input:Lclarifai2/dto/input/ClarifaiInput;

    if-nez v1, :cond_1

    .line 112
    invoke-virtual {p1}, Lclarifai2/dto/model/output/ClarifaiOutput;->input()Lclarifai2/dto/input/ClarifaiInput;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->input:Lclarifai2/dto/input/ClarifaiInput;

    invoke-virtual {p1}, Lclarifai2/dto/model/output/ClarifaiOutput;->input()Lclarifai2/dto/input/ClarifaiInput;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->data:Ljava/util/List;

    .line 113
    invoke-virtual {p1}, Lclarifai2/dto/model/output/ClarifaiOutput;->data()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->status:Lclarifai2/dto/ClarifaiStatus;

    .line 114
    invoke-virtual {p1}, Lclarifai2/dto/model/output/ClarifaiOutput;->status()Lclarifai2/dto/ClarifaiStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 123
    iget-object v0, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 125
    iget-object v2, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->createdAt:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 127
    iget-object v2, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->model:Lclarifai2/dto/model/Model;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 129
    iget-object v2, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->input:Lclarifai2/dto/input/ClarifaiInput;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->input:Lclarifai2/dto/input/ClarifaiInput;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 131
    iget-object v2, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 133
    iget-object p0, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->status:Lclarifai2/dto/ClarifaiStatus;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public id()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 57
    iget-object p0, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->id:Ljava/lang/String;

    return-object p0
.end method

.method public input()Lclarifai2/dto/input/ClarifaiInput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 75
    iget-object p0, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->input:Lclarifai2/dto/input/ClarifaiInput;

    return-object p0
.end method

.method public model()Lclarifai2/dto/model/Model;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/dto/model/Model<",
            "TPREDICTION;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 69
    iget-object p0, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->model:Lclarifai2/dto/model/Model;

    return-object p0
.end method

.method public status()Lclarifai2/dto/ClarifaiStatus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 87
    iget-object p0, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->status:Lclarifai2/dto/ClarifaiStatus;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClarifaiOutput{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->model:Lclarifai2/dto/model/Model;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", input="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->input:Lclarifai2/dto/input/ClarifaiInput;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/model/output/AutoValue_ClarifaiOutput;->status:Lclarifai2/dto/ClarifaiStatus;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
