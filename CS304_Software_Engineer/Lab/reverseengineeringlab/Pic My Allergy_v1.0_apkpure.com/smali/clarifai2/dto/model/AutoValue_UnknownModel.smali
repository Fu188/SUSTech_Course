.class final Lclarifai2/dto/model/AutoValue_UnknownModel;
.super Lclarifai2/dto/model/$AutoValue_UnknownModel;
.source "AutoValue_UnknownModel.java"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lclarifai2/dto/model/ModelVersion;Lclarifai2/dto/model/output_info/OutputInfo;Lclarifai2/api/ClarifaiClient;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    .param p7    # Lclarifai2/api/ClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 14
    invoke-direct/range {p0 .. p7}, Lclarifai2/dto/model/$AutoValue_UnknownModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lclarifai2/dto/model/ModelVersion;Lclarifai2/dto/model/output_info/OutputInfo;Lclarifai2/api/ClarifaiClient;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 22
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/model/UnknownModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 23
    check-cast p1, Lclarifai2/dto/model/UnknownModel;

    .line 25
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lclarifai2/dto/model/UnknownModel;->id()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lclarifai2/dto/model/UnknownModel;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->name()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lclarifai2/dto/model/UnknownModel;->name()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lclarifai2/dto/model/UnknownModel;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 27
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->createdAt()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lclarifai2/dto/model/UnknownModel;->createdAt()Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->createdAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lclarifai2/dto/model/UnknownModel;->createdAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->appID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lclarifai2/dto/model/UnknownModel;->appID()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->appID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lclarifai2/dto/model/UnknownModel;->appID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 29
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->modelVersion()Lclarifai2/dto/model/ModelVersion;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lclarifai2/dto/model/UnknownModel;->modelVersion()Lclarifai2/dto/model/ModelVersion;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->modelVersion()Lclarifai2/dto/model/ModelVersion;

    move-result-object p0

    invoke-virtual {p1}, Lclarifai2/dto/model/UnknownModel;->modelVersion()Lclarifai2/dto/model/ModelVersion;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_7
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 41
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 43
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->name()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 45
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->createdAt()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->createdAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 47
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->appID()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->appID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 49
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->modelVersion()Lclarifai2/dto/model/ModelVersion;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lclarifai2/dto/model/AutoValue_UnknownModel;->modelVersion()Lclarifai2/dto/model/ModelVersion;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    xor-int p0, v0, v1

    return p0
.end method
