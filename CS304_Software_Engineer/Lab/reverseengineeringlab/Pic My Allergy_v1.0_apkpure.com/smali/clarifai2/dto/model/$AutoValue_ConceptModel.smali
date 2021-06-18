.class abstract Lclarifai2/dto/model/$AutoValue_ConceptModel;
.super Lclarifai2/dto/model/ConceptModel;
.source "$AutoValue_ConceptModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/model/$AutoValue_ConceptModel$Builder;
    }
.end annotation


# instance fields
.field private final _outputInfo:Lclarifai2/dto/model/output_info/OutputInfo;

.field private final appID:Ljava/lang/String;

.field private final client:Lclarifai2/api/ClarifaiClient;

.field private final createdAt:Ljava/util/Date;

.field private final id:Ljava/lang/String;

.field private final modelVersion:Lclarifai2/dto/model/ModelVersion;

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lclarifai2/dto/model/ModelVersion;Lclarifai2/dto/model/output_info/OutputInfo;Lclarifai2/api/ClarifaiClient;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lclarifai2/dto/model/ModelVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lclarifai2/dto/model/output_info/OutputInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0}, Lclarifai2/dto/model/ConceptModel;-><init>()V

    if-nez p1, :cond_0

    .line 32
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null id"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_0
    iput-object p1, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->id:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->name:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->createdAt:Ljava/util/Date;

    .line 37
    iput-object p4, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->appID:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->modelVersion:Lclarifai2/dto/model/ModelVersion;

    .line 39
    iput-object p6, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->_outputInfo:Lclarifai2/dto/model/output_info/OutputInfo;

    if-nez p7, :cond_1

    .line 41
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null client"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_1
    iput-object p7, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->client:Lclarifai2/api/ClarifaiClient;

    return-void
.end method


# virtual methods
.method _outputInfo()Lclarifai2/dto/model/output_info/OutputInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 80
    iget-object p0, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->_outputInfo:Lclarifai2/dto/model/output_info/OutputInfo;

    return-object p0
.end method

.method public appID()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 67
    iget-object p0, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->appID:Ljava/lang/String;

    return-object p0
.end method

.method client()Lclarifai2/api/ClarifaiClient;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 87
    iget-object p0, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->client:Lclarifai2/api/ClarifaiClient;

    return-object p0
.end method

.method public createdAt()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 61
    iget-object p0, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->createdAt:Ljava/util/Date;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 108
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/model/ConceptModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 109
    check-cast p1, Lclarifai2/dto/model/ConceptModel;

    .line 110
    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lclarifai2/dto/model/ConceptModel;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 111
    invoke-virtual {p1}, Lclarifai2/dto/model/ConceptModel;->name()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lclarifai2/dto/model/ConceptModel;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->createdAt:Ljava/util/Date;

    if-nez v1, :cond_2

    .line 112
    invoke-virtual {p1}, Lclarifai2/dto/model/ConceptModel;->createdAt()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->createdAt:Ljava/util/Date;

    invoke-virtual {p1}, Lclarifai2/dto/model/ConceptModel;->createdAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->appID:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 113
    invoke-virtual {p1}, Lclarifai2/dto/model/ConceptModel;->appID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->appID:Ljava/lang/String;

    invoke-virtual {p1}, Lclarifai2/dto/model/ConceptModel;->appID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->modelVersion:Lclarifai2/dto/model/ModelVersion;

    if-nez v1, :cond_4

    .line 114
    invoke-virtual {p1}, Lclarifai2/dto/model/ConceptModel;->modelVersion()Lclarifai2/dto/model/ModelVersion;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->modelVersion:Lclarifai2/dto/model/ModelVersion;

    invoke-virtual {p1}, Lclarifai2/dto/model/ConceptModel;->modelVersion()Lclarifai2/dto/model/ModelVersion;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->_outputInfo:Lclarifai2/dto/model/output_info/OutputInfo;

    if-nez v1, :cond_5

    .line 115
    invoke-virtual {p1}, Lclarifai2/dto/model/ConceptModel;->_outputInfo()Lclarifai2/dto/model/output_info/OutputInfo;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->_outputInfo:Lclarifai2/dto/model/output_info/OutputInfo;

    invoke-virtual {p1}, Lclarifai2/dto/model/ConceptModel;->_outputInfo()Lclarifai2/dto/model/output_info/OutputInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_4
    iget-object p0, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->client:Lclarifai2/api/ClarifaiClient;

    .line 116
    invoke-virtual {p1}, Lclarifai2/dto/model/ConceptModel;->client()Lclarifai2/api/ClarifaiClient;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_5

    :cond_6
    move v0, v2

    :goto_5
    return v0

    :cond_7
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 125
    iget-object v0, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 127
    iget-object v2, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->name:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 129
    iget-object v2, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->createdAt:Ljava/util/Date;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->createdAt:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 131
    iget-object v2, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->appID:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->appID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 133
    iget-object v2, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->modelVersion:Lclarifai2/dto/model/ModelVersion;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->modelVersion:Lclarifai2/dto/model/ModelVersion;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 135
    iget-object v2, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->_outputInfo:Lclarifai2/dto/model/output_info/OutputInfo;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->_outputInfo:Lclarifai2/dto/model/output_info/OutputInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    .line 137
    iget-object p0, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->client:Lclarifai2/api/ClarifaiClient;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public id()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 49
    iget-object p0, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->id:Ljava/lang/String;

    return-object p0
.end method

.method public modelVersion()Lclarifai2/dto/model/ModelVersion;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 73
    iget-object p0, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->modelVersion:Lclarifai2/dto/model/ModelVersion;

    return-object p0
.end method

.method public name()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 55
    iget-object p0, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->name:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConceptModel{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->appID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", modelVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->modelVersion:Lclarifai2/dto/model/ModelVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _outputInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->_outputInfo:Lclarifai2/dto/model/output_info/OutputInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/model/$AutoValue_ConceptModel;->client:Lclarifai2/api/ClarifaiClient;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
