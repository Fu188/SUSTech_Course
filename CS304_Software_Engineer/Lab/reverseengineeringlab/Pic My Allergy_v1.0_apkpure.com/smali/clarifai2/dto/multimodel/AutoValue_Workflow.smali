.class final Lclarifai2/dto/multimodel/AutoValue_Workflow;
.super Lclarifai2/dto/multimodel/Workflow;
.source "AutoValue_Workflow.java"


# instance fields
.field private final appId:Ljava/lang/String;

.field private final createdAt:Ljava/util/Date;

.field private final id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0}, Lclarifai2/dto/multimodel/Workflow;-><init>()V

    .line 19
    iput-object p1, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->id:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->appId:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->createdAt:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public appId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 33
    iget-object p0, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public createdAt()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 39
    iget-object p0, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->createdAt:Ljava/util/Date;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 56
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/multimodel/Workflow;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 57
    check-cast p1, Lclarifai2/dto/multimodel/Workflow;

    .line 58
    iget-object v1, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->id:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lclarifai2/dto/multimodel/Workflow;->id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lclarifai2/dto/multimodel/Workflow;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->appId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 59
    invoke-virtual {p1}, Lclarifai2/dto/multimodel/Workflow;->appId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->appId:Ljava/lang/String;

    invoke-virtual {p1}, Lclarifai2/dto/multimodel/Workflow;->appId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->createdAt:Ljava/util/Date;

    if-nez v1, :cond_3

    .line 60
    invoke-virtual {p1}, Lclarifai2/dto/multimodel/Workflow;->createdAt()Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->createdAt:Ljava/util/Date;

    invoke-virtual {p1}, Lclarifai2/dto/multimodel/Workflow;->createdAt()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

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

    .line 69
    iget-object v0, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 71
    iget-object v3, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->appId:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->appId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 73
    iget-object v2, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->createdAt:Ljava/util/Date;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->createdAt:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_2
    xor-int p0, v0, v1

    return p0
.end method

.method public id()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 27
    iget-object p0, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->id:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Workflow{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/multimodel/AutoValue_Workflow;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
