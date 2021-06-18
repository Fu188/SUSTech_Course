.class final Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;
.super Lclarifai2/dto/input/ClarifaiInputsStatus;
.source "AutoValue_ClarifaiInputsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus$Builder;
    }
.end annotation


# instance fields
.field private final errors:I

.field private final processed:I

.field private final toProcess:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lclarifai2/dto/input/ClarifaiInputsStatus;-><init>()V

    .line 18
    iput p1, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;->processed:I

    .line 19
    iput p2, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;->toProcess:I

    .line 20
    iput p3, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;->errors:I

    return-void
.end method

.method synthetic constructor <init>(IIILclarifai2/dto/input/AutoValue_ClarifaiInputsStatus$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;-><init>(III)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 55
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/input/ClarifaiInputsStatus;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 56
    check-cast p1, Lclarifai2/dto/input/ClarifaiInputsStatus;

    .line 57
    iget v1, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;->processed:I

    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInputsStatus;->processed()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;->toProcess:I

    .line 58
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInputsStatus;->toProcess()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget p0, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;->errors:I

    .line 59
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInputsStatus;->errors()I

    move-result p1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public errors()I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    iget p0, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;->errors:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 68
    iget v0, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;->processed:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 70
    iget v2, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;->toProcess:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 72
    iget p0, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;->errors:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public processed()I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget p0, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;->processed:I

    return p0
.end method

.method public toProcess()I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    iget p0, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;->toProcess:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClarifaiInputsStatus{processed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;->processed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toProcess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;->toProcess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;->errors:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
