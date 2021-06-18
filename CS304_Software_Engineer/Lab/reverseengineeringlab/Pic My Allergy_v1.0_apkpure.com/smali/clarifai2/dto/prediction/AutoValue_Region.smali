.class final Lclarifai2/dto/prediction/AutoValue_Region;
.super Lclarifai2/dto/prediction/Region;
.source "AutoValue_Region.java"


# instance fields
.field private final ageAppearances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;"
        }
    .end annotation
.end field

.field private final crop:Lclarifai2/dto/input/Crop;

.field private final genderAppearances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;"
        }
    .end annotation
.end field

.field private final multiculturalAppearances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lclarifai2/dto/input/Crop;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/dto/input/Crop;",
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;",
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;",
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lclarifai2/dto/prediction/Region;-><init>()V

    if-nez p1, :cond_0

    .line 23
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null crop"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_0
    iput-object p1, p0, Lclarifai2/dto/prediction/AutoValue_Region;->crop:Lclarifai2/dto/input/Crop;

    if-nez p2, :cond_1

    .line 27
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null ageAppearances"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_1
    iput-object p2, p0, Lclarifai2/dto/prediction/AutoValue_Region;->ageAppearances:Ljava/util/List;

    if-nez p3, :cond_2

    .line 31
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null genderAppearances"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_2
    iput-object p3, p0, Lclarifai2/dto/prediction/AutoValue_Region;->genderAppearances:Ljava/util/List;

    if-nez p4, :cond_3

    .line 35
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null multiculturalAppearances"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_3
    iput-object p4, p0, Lclarifai2/dto/prediction/AutoValue_Region;->multiculturalAppearances:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public ageAppearances()Ljava/util/List;
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

    .line 49
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Region;->ageAppearances:Ljava/util/List;

    return-object p0
.end method

.method public crop()Lclarifai2/dto/input/Crop;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 43
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Region;->crop:Lclarifai2/dto/input/Crop;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 79
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/prediction/Region;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 80
    check-cast p1, Lclarifai2/dto/prediction/Region;

    .line 81
    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Region;->crop:Lclarifai2/dto/input/Crop;

    invoke-virtual {p1}, Lclarifai2/dto/prediction/Region;->crop()Lclarifai2/dto/input/Crop;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Region;->ageAppearances:Ljava/util/List;

    .line 82
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Region;->ageAppearances()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Region;->genderAppearances:Ljava/util/List;

    .line 83
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Region;->genderAppearances()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Region;->multiculturalAppearances:Ljava/util/List;

    .line 84
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Region;->multiculturalAppearances()Ljava/util/List;

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

.method public genderAppearances()Ljava/util/List;
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

    .line 55
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Region;->genderAppearances:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 93
    iget-object v0, p0, Lclarifai2/dto/prediction/AutoValue_Region;->crop:Lclarifai2/dto/input/Crop;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 95
    iget-object v2, p0, Lclarifai2/dto/prediction/AutoValue_Region;->ageAppearances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 97
    iget-object v2, p0, Lclarifai2/dto/prediction/AutoValue_Region;->genderAppearances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 99
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Region;->multiculturalAppearances:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public multiculturalAppearances()Ljava/util/List;
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

    .line 61
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Region;->multiculturalAppearances:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Region{crop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Region;->crop:Lclarifai2/dto/input/Crop;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ageAppearances="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Region;->ageAppearances:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", genderAppearances="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Region;->genderAppearances:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", multiculturalAppearances="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Region;->multiculturalAppearances:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
