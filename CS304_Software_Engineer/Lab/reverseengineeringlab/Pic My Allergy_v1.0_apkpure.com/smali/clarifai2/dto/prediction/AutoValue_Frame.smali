.class final Lclarifai2/dto/prediction/AutoValue_Frame;
.super Lclarifai2/dto/prediction/Frame;
.source "AutoValue_Frame.java"


# instance fields
.field private final concepts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;"
        }
    .end annotation
.end field

.field private final index:I

.field private final time:J


# direct methods
.method constructor <init>(IJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lclarifai2/dto/prediction/Frame;-><init>()V

    .line 19
    iput p1, p0, Lclarifai2/dto/prediction/AutoValue_Frame;->index:I

    .line 20
    iput-wide p2, p0, Lclarifai2/dto/prediction/AutoValue_Frame;->time:J

    if-nez p4, :cond_0

    .line 22
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null concepts"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_0
    iput-object p4, p0, Lclarifai2/dto/prediction/AutoValue_Frame;->concepts:Ljava/util/List;

    return-void
.end method


# virtual methods
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

    .line 40
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Frame;->concepts:Ljava/util/List;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 57
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/prediction/Frame;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 58
    check-cast p1, Lclarifai2/dto/prediction/Frame;

    .line 59
    iget v1, p0, Lclarifai2/dto/prediction/AutoValue_Frame;->index:I

    invoke-virtual {p1}, Lclarifai2/dto/prediction/Frame;->index()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lclarifai2/dto/prediction/AutoValue_Frame;->time:J

    .line 60
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Frame;->time()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Frame;->concepts:Ljava/util/List;

    .line 61
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Frame;->concepts()Ljava/util/List;

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
    .locals 8

    .line 70
    iget v0, p0, Lclarifai2/dto/prediction/AutoValue_Frame;->index:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    int-to-long v2, v0

    .line 72
    iget-wide v4, p0, Lclarifai2/dto/prediction/AutoValue_Frame;->time:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    iget-wide v6, p0, Lclarifai2/dto/prediction/AutoValue_Frame;->time:J

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    mul-int/2addr v0, v1

    .line 74
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Frame;->concepts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public index()I
    .locals 0

    .line 29
    iget p0, p0, Lclarifai2/dto/prediction/AutoValue_Frame;->index:I

    return p0
.end method

.method public time()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lclarifai2/dto/prediction/AutoValue_Frame;->time:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Frame{index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lclarifai2/dto/prediction/AutoValue_Frame;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lclarifai2/dto/prediction/AutoValue_Frame;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", concepts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Frame;->concepts:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
