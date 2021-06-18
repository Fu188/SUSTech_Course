.class final Lclarifai2/dto/AutoValue_ClarifaiStatus;
.super Lclarifai2/dto/ClarifaiStatus;
.source "AutoValue_ClarifaiStatus.java"


# instance fields
.field private final description:Ljava/lang/String;

.field private final errorDetails:Ljava/lang/String;

.field private final networkErrorOccurred:Z

.field private final statusCode:I


# direct methods
.method constructor <init>(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0}, Lclarifai2/dto/ClarifaiStatus;-><init>()V

    .line 21
    iput-boolean p1, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->networkErrorOccurred:Z

    .line 22
    iput p2, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->statusCode:I

    if-nez p3, :cond_0

    .line 24
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null description"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_0
    iput-object p3, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->description:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->errorDetails:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 45
    iget-object p0, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->description:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 69
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/ClarifaiStatus;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 70
    check-cast p1, Lclarifai2/dto/ClarifaiStatus;

    .line 71
    iget-boolean v1, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->networkErrorOccurred:Z

    invoke-virtual {p1}, Lclarifai2/dto/ClarifaiStatus;->networkErrorOccurred()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->statusCode:I

    .line 72
    invoke-virtual {p1}, Lclarifai2/dto/ClarifaiStatus;->statusCode()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->description:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lclarifai2/dto/ClarifaiStatus;->description()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->errorDetails:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 74
    invoke-virtual {p1}, Lclarifai2/dto/ClarifaiStatus;->errorDetails()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->errorDetails:Ljava/lang/String;

    invoke-virtual {p1}, Lclarifai2/dto/ClarifaiStatus;->errorDetails()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public errorDetails()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 51
    iget-object p0, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->errorDetails:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 83
    iget-boolean v0, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->networkErrorOccurred:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 85
    iget v2, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->statusCode:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 87
    iget-object v2, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 89
    iget-object v1, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->errorDetails:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->errorDetails:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method

.method public networkErrorOccurred()Z
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 33
    iget-boolean p0, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->networkErrorOccurred:Z

    return p0
.end method

.method public statusCode()I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 39
    iget p0, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->statusCode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClarifaiStatus{networkErrorOccurred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->networkErrorOccurred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/AutoValue_ClarifaiStatus;->errorDetails:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
