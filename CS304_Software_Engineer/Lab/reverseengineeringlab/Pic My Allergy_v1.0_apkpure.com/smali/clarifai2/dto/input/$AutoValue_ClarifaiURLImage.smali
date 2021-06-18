.class abstract Lclarifai2/dto/input/$AutoValue_ClarifaiURLImage;
.super Lclarifai2/dto/input/ClarifaiURLImage;
.source "$AutoValue_ClarifaiURLImage.java"


# instance fields
.field private final crop:Lclarifai2/dto/input/Crop;

.field private final url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lclarifai2/dto/input/Crop;Ljava/net/URL;)V
    .locals 0
    .param p1    # Lclarifai2/dto/input/Crop;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0}, Lclarifai2/dto/input/ClarifaiURLImage;-><init>()V

    .line 18
    iput-object p1, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiURLImage;->crop:Lclarifai2/dto/input/Crop;

    if-nez p2, :cond_0

    .line 20
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null url"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_0
    iput-object p2, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiURLImage;->url:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public crop()Lclarifai2/dto/input/Crop;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 28
    iget-object p0, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiURLImage;->crop:Lclarifai2/dto/input/Crop;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 50
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/input/ClarifaiURLImage;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 51
    check-cast p1, Lclarifai2/dto/input/ClarifaiURLImage;

    .line 52
    iget-object v1, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiURLImage;->crop:Lclarifai2/dto/input/Crop;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiURLImage;->crop()Lclarifai2/dto/input/Crop;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiURLImage;->crop:Lclarifai2/dto/input/Crop;

    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiURLImage;->crop()Lclarifai2/dto/input/Crop;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object p0, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiURLImage;->url:Ljava/net/URL;

    .line 53
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiURLImage;->url()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

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
    .locals 2

    .line 62
    iget-object v0, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiURLImage;->crop:Lclarifai2/dto/input/Crop;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiURLImage;->crop:Lclarifai2/dto/input/Crop;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 64
    iget-object p0, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiURLImage;->url:Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClarifaiURLImage{crop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiURLImage;->crop:Lclarifai2/dto/input/Crop;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiURLImage;->url:Ljava/net/URL;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public url()Ljava/net/URL;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    iget-object p0, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiURLImage;->url:Ljava/net/URL;

    return-object p0
.end method
