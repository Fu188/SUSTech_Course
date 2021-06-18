.class abstract Lclarifai2/dto/input/$AutoValue_ClarifaiInput;
.super Lclarifai2/dto/input/ClarifaiInput;
.source "$AutoValue_ClarifaiInput.java"


# instance fields
.field private final _metadata:Lcom/google/gson/JsonObject;

.field private final concepts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;"
        }
    .end annotation
.end field

.field private final createdAt:Ljava/util/Date;

.field private final geo:Lclarifai2/dto/PointF;

.field private final id:Ljava/lang/String;

.field private final image:Lclarifai2/dto/input/ClarifaiImage;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Lclarifai2/dto/input/ClarifaiImage;Lcom/google/gson/JsonObject;Ljava/util/List;Lclarifai2/dto/PointF;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lclarifai2/dto/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lclarifai2/dto/input/ClarifaiImage;",
            "Lcom/google/gson/JsonObject;",
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;",
            "Lclarifai2/dto/PointF;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lclarifai2/dto/input/ClarifaiInput;-><init>()V

    .line 30
    iput-object p1, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->id:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->createdAt:Ljava/util/Date;

    if-nez p3, :cond_0

    .line 33
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null image"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_0
    iput-object p3, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->image:Lclarifai2/dto/input/ClarifaiImage;

    if-nez p4, :cond_1

    .line 37
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null _metadata"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_1
    iput-object p4, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->_metadata:Lcom/google/gson/JsonObject;

    if-nez p5, :cond_2

    .line 41
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null concepts"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_2
    iput-object p5, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->concepts:Ljava/util/List;

    .line 44
    iput-object p6, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->geo:Lclarifai2/dto/PointF;

    return-void
.end method


# virtual methods
.method _metadata()Lcom/google/gson/JsonObject;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 69
    iget-object p0, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->_metadata:Lcom/google/gson/JsonObject;

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

    .line 75
    iget-object p0, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->concepts:Ljava/util/List;

    return-object p0
.end method

.method public createdAt()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 56
    iget-object p0, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->createdAt:Ljava/util/Date;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 101
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/input/ClarifaiInput;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 102
    check-cast p1, Lclarifai2/dto/input/ClarifaiInput;

    .line 103
    iget-object v1, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->id:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->createdAt:Ljava/util/Date;

    if-nez v1, :cond_2

    .line 104
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->createdAt()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->createdAt:Ljava/util/Date;

    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->createdAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->image:Lclarifai2/dto/input/ClarifaiImage;

    .line 105
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->image()Lclarifai2/dto/input/ClarifaiImage;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->_metadata:Lcom/google/gson/JsonObject;

    .line 106
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->_metadata()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->concepts:Ljava/util/List;

    .line 107
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->concepts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->geo:Lclarifai2/dto/PointF;

    if-nez v1, :cond_3

    .line 108
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->geo()Lclarifai2/dto/PointF;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->geo:Lclarifai2/dto/PointF;

    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInput;->geo()Lclarifai2/dto/PointF;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public geo()Lclarifai2/dto/PointF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 81
    iget-object p0, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->geo:Lclarifai2/dto/PointF;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 117
    iget-object v0, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 119
    iget-object v3, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->createdAt:Ljava/util/Date;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->createdAt:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 121
    iget-object v3, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->image:Lclarifai2/dto/input/ClarifaiImage;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 123
    iget-object v3, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->_metadata:Lcom/google/gson/JsonObject;

    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 125
    iget-object v3, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->concepts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 127
    iget-object v2, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->geo:Lclarifai2/dto/PointF;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->geo:Lclarifai2/dto/PointF;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    xor-int p0, v0, v1

    return p0
.end method

.method public id()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 50
    iget-object p0, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->id:Ljava/lang/String;

    return-object p0
.end method

.method public image()Lclarifai2/dto/input/ClarifaiImage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 62
    iget-object p0, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->image:Lclarifai2/dto/input/ClarifaiImage;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClarifaiInput{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->image:Lclarifai2/dto/input/ClarifaiImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->_metadata:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", concepts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->concepts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", geo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;->geo:Lclarifai2/dto/PointF;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
