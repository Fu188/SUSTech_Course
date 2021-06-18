.class final Lclarifai2/dto/prediction/AutoValue_Logo;
.super Lclarifai2/dto/prediction/Logo;
.source "AutoValue_Logo.java"


# instance fields
.field private final boundingBox:Lclarifai2/dto/input/Crop;

.field private final concepts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lclarifai2/dto/input/Crop;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/dto/input/Crop;",
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lclarifai2/dto/prediction/Logo;-><init>()V

    if-nez p1, :cond_0

    .line 19
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null boundingBox"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_0
    iput-object p1, p0, Lclarifai2/dto/prediction/AutoValue_Logo;->boundingBox:Lclarifai2/dto/input/Crop;

    if-nez p2, :cond_1

    .line 23
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null concepts"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_1
    iput-object p2, p0, Lclarifai2/dto/prediction/AutoValue_Logo;->concepts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public boundingBox()Lclarifai2/dto/input/Crop;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Logo;->boundingBox:Lclarifai2/dto/input/Crop;

    return-object p0
.end method

.method public concepts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Logo;->concepts:Ljava/util/List;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 53
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/prediction/Logo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 54
    check-cast p1, Lclarifai2/dto/prediction/Logo;

    .line 55
    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Logo;->boundingBox:Lclarifai2/dto/input/Crop;

    invoke-virtual {p1}, Lclarifai2/dto/prediction/Logo;->boundingBox()Lclarifai2/dto/input/Crop;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Logo;->concepts:Ljava/util/List;

    .line 56
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Logo;->concepts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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
    .locals 2

    .line 65
    iget-object v0, p0, Lclarifai2/dto/prediction/AutoValue_Logo;->boundingBox:Lclarifai2/dto/input/Crop;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 67
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Logo;->concepts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logo{boundingBox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Logo;->boundingBox:Lclarifai2/dto/input/Crop;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", concepts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Logo;->concepts:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
