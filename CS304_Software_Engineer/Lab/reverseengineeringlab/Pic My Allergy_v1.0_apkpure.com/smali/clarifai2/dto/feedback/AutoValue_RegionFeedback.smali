.class final Lclarifai2/dto/feedback/AutoValue_RegionFeedback;
.super Lclarifai2/dto/feedback/RegionFeedback;
.source "AutoValue_RegionFeedback.java"


# instance fields
.field private final crop:Lclarifai2/dto/input/Crop;

.field private final feedback:Lclarifai2/api/request/feedback/Feedback;


# direct methods
.method constructor <init>(Lclarifai2/dto/input/Crop;Lclarifai2/api/request/feedback/Feedback;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lclarifai2/dto/feedback/RegionFeedback;-><init>()V

    if-nez p1, :cond_0

    .line 19
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null crop"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_0
    iput-object p1, p0, Lclarifai2/dto/feedback/AutoValue_RegionFeedback;->crop:Lclarifai2/dto/input/Crop;

    if-nez p2, :cond_1

    .line 23
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null feedback"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_1
    iput-object p2, p0, Lclarifai2/dto/feedback/AutoValue_RegionFeedback;->feedback:Lclarifai2/api/request/feedback/Feedback;

    return-void
.end method


# virtual methods
.method public crop()Lclarifai2/dto/input/Crop;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    iget-object p0, p0, Lclarifai2/dto/feedback/AutoValue_RegionFeedback;->crop:Lclarifai2/dto/input/Crop;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 53
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/feedback/RegionFeedback;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 54
    check-cast p1, Lclarifai2/dto/feedback/RegionFeedback;

    .line 55
    iget-object v1, p0, Lclarifai2/dto/feedback/AutoValue_RegionFeedback;->crop:Lclarifai2/dto/input/Crop;

    invoke-virtual {p1}, Lclarifai2/dto/feedback/RegionFeedback;->crop()Lclarifai2/dto/input/Crop;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lclarifai2/dto/feedback/AutoValue_RegionFeedback;->feedback:Lclarifai2/api/request/feedback/Feedback;

    .line 56
    invoke-virtual {p1}, Lclarifai2/dto/feedback/RegionFeedback;->feedback()Lclarifai2/api/request/feedback/Feedback;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/api/request/feedback/Feedback;->equals(Ljava/lang/Object;)Z

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

.method public feedback()Lclarifai2/api/request/feedback/Feedback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    iget-object p0, p0, Lclarifai2/dto/feedback/AutoValue_RegionFeedback;->feedback:Lclarifai2/api/request/feedback/Feedback;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 65
    iget-object v0, p0, Lclarifai2/dto/feedback/AutoValue_RegionFeedback;->crop:Lclarifai2/dto/input/Crop;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 67
    iget-object p0, p0, Lclarifai2/dto/feedback/AutoValue_RegionFeedback;->feedback:Lclarifai2/api/request/feedback/Feedback;

    invoke-virtual {p0}, Lclarifai2/api/request/feedback/Feedback;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegionFeedback{crop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/feedback/AutoValue_RegionFeedback;->crop:Lclarifai2/dto/input/Crop;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/feedback/AutoValue_RegionFeedback;->feedback:Lclarifai2/api/request/feedback/Feedback;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
