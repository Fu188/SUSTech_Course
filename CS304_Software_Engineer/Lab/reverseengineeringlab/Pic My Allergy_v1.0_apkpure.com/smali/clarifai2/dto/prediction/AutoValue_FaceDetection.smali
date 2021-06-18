.class final Lclarifai2/dto/prediction/AutoValue_FaceDetection;
.super Lclarifai2/dto/prediction/FaceDetection;
.source "AutoValue_FaceDetection.java"


# instance fields
.field private final boundingBox:Lclarifai2/dto/input/Crop;


# direct methods
.method constructor <init>(Lclarifai2/dto/input/Crop;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lclarifai2/dto/prediction/FaceDetection;-><init>()V

    if-nez p1, :cond_0

    .line 16
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null boundingBox"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_0
    iput-object p1, p0, Lclarifai2/dto/prediction/AutoValue_FaceDetection;->boundingBox:Lclarifai2/dto/input/Crop;

    return-void
.end method


# virtual methods
.method public boundingBox()Lclarifai2/dto/input/Crop;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_FaceDetection;->boundingBox:Lclarifai2/dto/input/Crop;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 39
    :cond_0
    instance-of v0, p1, Lclarifai2/dto/prediction/FaceDetection;

    if-eqz v0, :cond_1

    .line 40
    check-cast p1, Lclarifai2/dto/prediction/FaceDetection;

    .line 41
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_FaceDetection;->boundingBox:Lclarifai2/dto/input/Crop;

    invoke-virtual {p1}, Lclarifai2/dto/prediction/FaceDetection;->boundingBox()Lclarifai2/dto/input/Crop;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 50
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_FaceDetection;->boundingBox:Lclarifai2/dto/input/Crop;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const v0, 0xf4243

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceDetection{boundingBox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_FaceDetection;->boundingBox:Lclarifai2/dto/input/Crop;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
