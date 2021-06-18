.class final Lclarifai2/dto/AutoValue_Rectangle;
.super Lclarifai2/dto/Rectangle;
.source "AutoValue_Rectangle.java"


# instance fields
.field private final bottomRight:Lclarifai2/dto/PointF;

.field private final topLeft:Lclarifai2/dto/PointF;


# direct methods
.method constructor <init>(Lclarifai2/dto/PointF;Lclarifai2/dto/PointF;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lclarifai2/dto/Rectangle;-><init>()V

    if-nez p1, :cond_0

    .line 17
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null topLeft"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_0
    iput-object p1, p0, Lclarifai2/dto/AutoValue_Rectangle;->topLeft:Lclarifai2/dto/PointF;

    if-nez p2, :cond_1

    .line 21
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null bottomRight"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_1
    iput-object p2, p0, Lclarifai2/dto/AutoValue_Rectangle;->bottomRight:Lclarifai2/dto/PointF;

    return-void
.end method


# virtual methods
.method public bottomRight()Lclarifai2/dto/PointF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    iget-object p0, p0, Lclarifai2/dto/AutoValue_Rectangle;->bottomRight:Lclarifai2/dto/PointF;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 51
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/Rectangle;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 52
    check-cast p1, Lclarifai2/dto/Rectangle;

    .line 53
    iget-object v1, p0, Lclarifai2/dto/AutoValue_Rectangle;->topLeft:Lclarifai2/dto/PointF;

    invoke-virtual {p1}, Lclarifai2/dto/Rectangle;->topLeft()Lclarifai2/dto/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lclarifai2/dto/AutoValue_Rectangle;->bottomRight:Lclarifai2/dto/PointF;

    .line 54
    invoke-virtual {p1}, Lclarifai2/dto/Rectangle;->bottomRight()Lclarifai2/dto/PointF;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    .line 63
    iget-object v0, p0, Lclarifai2/dto/AutoValue_Rectangle;->topLeft:Lclarifai2/dto/PointF;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 65
    iget-object p0, p0, Lclarifai2/dto/AutoValue_Rectangle;->bottomRight:Lclarifai2/dto/PointF;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rectangle{topLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/AutoValue_Rectangle;->topLeft:Lclarifai2/dto/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lclarifai2/dto/AutoValue_Rectangle;->bottomRight:Lclarifai2/dto/PointF;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public topLeft()Lclarifai2/dto/PointF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    iget-object p0, p0, Lclarifai2/dto/AutoValue_Rectangle;->topLeft:Lclarifai2/dto/PointF;

    return-object p0
.end method
