.class final Lclarifai2/dto/model/AutoValue_ModelVersion;
.super Lclarifai2/dto/model/ModelVersion;
.source "AutoValue_ModelVersion.java"


# instance fields
.field private final createdAt:Ljava/util/Date;

.field private final id:Ljava/lang/String;

.field private final status:Lclarifai2/dto/model/ModelTrainingStatus;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Lclarifai2/dto/model/ModelTrainingStatus;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lclarifai2/dto/model/ModelVersion;-><init>()V

    if-nez p1, :cond_0

    .line 20
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null id"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_0
    iput-object p1, p0, Lclarifai2/dto/model/AutoValue_ModelVersion;->id:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 24
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null createdAt"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_1
    iput-object p2, p0, Lclarifai2/dto/model/AutoValue_ModelVersion;->createdAt:Ljava/util/Date;

    if-nez p3, :cond_2

    .line 28
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null status"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_2
    iput-object p3, p0, Lclarifai2/dto/model/AutoValue_ModelVersion;->status:Lclarifai2/dto/model/ModelTrainingStatus;

    return-void
.end method


# virtual methods
.method public createdAt()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    iget-object p0, p0, Lclarifai2/dto/model/AutoValue_ModelVersion;->createdAt:Ljava/util/Date;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 65
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/model/ModelVersion;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 66
    check-cast p1, Lclarifai2/dto/model/ModelVersion;

    .line 67
    iget-object v1, p0, Lclarifai2/dto/model/AutoValue_ModelVersion;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lclarifai2/dto/model/ModelVersion;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lclarifai2/dto/model/AutoValue_ModelVersion;->createdAt:Ljava/util/Date;

    .line 68
    invoke-virtual {p1}, Lclarifai2/dto/model/ModelVersion;->createdAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lclarifai2/dto/model/AutoValue_ModelVersion;->status:Lclarifai2/dto/model/ModelTrainingStatus;

    .line 69
    invoke-virtual {p1}, Lclarifai2/dto/model/ModelVersion;->status()Lclarifai2/dto/model/ModelTrainingStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/dto/model/ModelTrainingStatus;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 78
    iget-object v0, p0, Lclarifai2/dto/model/AutoValue_ModelVersion;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 80
    iget-object v2, p0, Lclarifai2/dto/model/AutoValue_ModelVersion;->createdAt:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 82
    iget-object p0, p0, Lclarifai2/dto/model/AutoValue_ModelVersion;->status:Lclarifai2/dto/model/ModelTrainingStatus;

    invoke-virtual {p0}, Lclarifai2/dto/model/ModelTrainingStatus;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public id()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    iget-object p0, p0, Lclarifai2/dto/model/AutoValue_ModelVersion;->id:Ljava/lang/String;

    return-object p0
.end method

.method public status()Lclarifai2/dto/model/ModelTrainingStatus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 48
    iget-object p0, p0, Lclarifai2/dto/model/AutoValue_ModelVersion;->status:Lclarifai2/dto/model/ModelTrainingStatus;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelVersion{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/model/AutoValue_ModelVersion;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/model/AutoValue_ModelVersion;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/model/AutoValue_ModelVersion;->status:Lclarifai2/dto/model/ModelTrainingStatus;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
