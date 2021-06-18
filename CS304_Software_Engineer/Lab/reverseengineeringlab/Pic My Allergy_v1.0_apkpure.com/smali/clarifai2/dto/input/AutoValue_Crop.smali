.class final Lclarifai2/dto/input/AutoValue_Crop;
.super Lclarifai2/dto/input/$AutoValue_Crop;
.source "AutoValue_Crop.java"


# direct methods
.method constructor <init>(FFFF)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lclarifai2/dto/input/$AutoValue_Crop;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method final withBottom(F)Lclarifai2/dto/input/Crop;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    new-instance v0, Lclarifai2/dto/input/AutoValue_Crop;

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_Crop;->top()F

    move-result v1

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_Crop;->left()F

    move-result v2

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_Crop;->right()F

    move-result p0

    invoke-direct {v0, v1, v2, p1, p0}, Lclarifai2/dto/input/AutoValue_Crop;-><init>(FFFF)V

    return-object v0
.end method

.method final withLeft(F)Lclarifai2/dto/input/Crop;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 20
    new-instance v0, Lclarifai2/dto/input/AutoValue_Crop;

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_Crop;->top()F

    move-result v1

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_Crop;->bottom()F

    move-result v2

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_Crop;->right()F

    move-result p0

    invoke-direct {v0, v1, p1, v2, p0}, Lclarifai2/dto/input/AutoValue_Crop;-><init>(FFFF)V

    return-object v0
.end method

.method final withRight(F)Lclarifai2/dto/input/Crop;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    new-instance v0, Lclarifai2/dto/input/AutoValue_Crop;

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_Crop;->top()F

    move-result v1

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_Crop;->left()F

    move-result v2

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_Crop;->bottom()F

    move-result p0

    invoke-direct {v0, v1, v2, p0, p1}, Lclarifai2/dto/input/AutoValue_Crop;-><init>(FFFF)V

    return-object v0
.end method

.method final withTop(F)Lclarifai2/dto/input/Crop;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    new-instance v0, Lclarifai2/dto/input/AutoValue_Crop;

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_Crop;->left()F

    move-result v1

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_Crop;->bottom()F

    move-result v2

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_Crop;->right()F

    move-result p0

    invoke-direct {v0, p1, v1, v2, p0}, Lclarifai2/dto/input/AutoValue_Crop;-><init>(FFFF)V

    return-object v0
.end method
