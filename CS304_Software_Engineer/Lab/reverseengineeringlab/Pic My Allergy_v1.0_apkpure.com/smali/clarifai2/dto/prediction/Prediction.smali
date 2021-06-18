.class public abstract Lclarifai2/dto/prediction/Prediction;
.super Ljava/lang/Object;
.source "Prediction.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final asBlur()Lclarifai2/dto/prediction/Blur;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    check-cast p0, Lclarifai2/dto/prediction/Blur;

    return-object p0
.end method

.method public final asCluster()Lclarifai2/dto/prediction/Cluster;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    check-cast p0, Lclarifai2/dto/prediction/Cluster;

    return-object p0
.end method

.method public final asColor()Lclarifai2/dto/prediction/Color;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    check-cast p0, Lclarifai2/dto/prediction/Color;

    return-object p0
.end method

.method public final asConcept()Lclarifai2/dto/prediction/Concept;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    check-cast p0, Lclarifai2/dto/prediction/Concept;

    return-object p0
.end method

.method public final asEmbedding()Lclarifai2/dto/prediction/Embedding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 45
    check-cast p0, Lclarifai2/dto/prediction/Embedding;

    return-object p0
.end method

.method public final asFaceDetection()Lclarifai2/dto/prediction/FaceDetection;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    check-cast p0, Lclarifai2/dto/prediction/FaceDetection;

    return-object p0
.end method

.method public final isBlur()Z
    .locals 0

    .line 33
    instance-of p0, p0, Lclarifai2/dto/prediction/Blur;

    return p0
.end method

.method public final isCluster()Z
    .locals 0

    .line 49
    instance-of p0, p0, Lclarifai2/dto/prediction/Cluster;

    return p0
.end method

.method public final isColor()Z
    .locals 0

    .line 17
    instance-of p0, p0, Lclarifai2/dto/prediction/Color;

    return p0
.end method

.method public final isConcept()Z
    .locals 0

    .line 9
    instance-of p0, p0, Lclarifai2/dto/prediction/Concept;

    return p0
.end method

.method public final isEmbedding()Z
    .locals 0

    .line 41
    instance-of p0, p0, Lclarifai2/dto/prediction/Embedding;

    return p0
.end method

.method public final isFaceDetection()Z
    .locals 0

    .line 25
    instance-of p0, p0, Lclarifai2/dto/prediction/FaceDetection;

    return p0
.end method
