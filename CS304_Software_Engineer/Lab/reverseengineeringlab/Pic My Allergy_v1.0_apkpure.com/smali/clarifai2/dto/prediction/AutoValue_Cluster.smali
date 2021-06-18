.class final Lclarifai2/dto/prediction/AutoValue_Cluster;
.super Lclarifai2/dto/prediction/Cluster;
.source "AutoValue_Cluster.java"


# instance fields
.field private final id:Ljava/lang/String;

.field private final numClusters:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lclarifai2/dto/prediction/Cluster;-><init>()V

    if-nez p1, :cond_0

    .line 17
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null id"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_0
    iput-object p1, p0, Lclarifai2/dto/prediction/AutoValue_Cluster;->id:Ljava/lang/String;

    .line 20
    iput p2, p0, Lclarifai2/dto/prediction/AutoValue_Cluster;->numClusters:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 48
    :cond_0
    instance-of v1, p1, Lclarifai2/dto/prediction/Cluster;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 49
    check-cast p1, Lclarifai2/dto/prediction/Cluster;

    .line 50
    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Cluster;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lclarifai2/dto/prediction/Cluster;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Lclarifai2/dto/prediction/AutoValue_Cluster;->numClusters:I

    .line 51
    invoke-virtual {p1}, Lclarifai2/dto/prediction/Cluster;->numClusters()I

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

.method public hashCode()I
    .locals 2

    .line 60
    iget-object v0, p0, Lclarifai2/dto/prediction/AutoValue_Cluster;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 62
    iget p0, p0, Lclarifai2/dto/prediction/AutoValue_Cluster;->numClusters:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public id()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object p0, p0, Lclarifai2/dto/prediction/AutoValue_Cluster;->id:Ljava/lang/String;

    return-object p0
.end method

.method public numClusters()I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    iget p0, p0, Lclarifai2/dto/prediction/AutoValue_Cluster;->numClusters:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cluster{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lclarifai2/dto/prediction/AutoValue_Cluster;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", numClusters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lclarifai2/dto/prediction/AutoValue_Cluster;->numClusters:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
