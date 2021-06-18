.class final Lclarifai2/dto/input/AutoValue_ClarifaiFileImage;
.super Lclarifai2/dto/input/$AutoValue_ClarifaiFileImage;
.source "AutoValue_ClarifaiFileImage.java"


# direct methods
.method constructor <init>(Lclarifai2/dto/input/Crop;[B)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lclarifai2/dto/input/$AutoValue_ClarifaiFileImage;-><init>(Lclarifai2/dto/input/Crop;[B)V

    return-void
.end method


# virtual methods
.method public final withCrop(Lclarifai2/dto/input/Crop;)Lclarifai2/dto/input/ClarifaiFileImage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    new-instance v0, Lclarifai2/dto/input/AutoValue_ClarifaiFileImage;

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_ClarifaiFileImage;->bytes()[B

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lclarifai2/dto/input/AutoValue_ClarifaiFileImage;-><init>(Lclarifai2/dto/input/Crop;[B)V

    return-object v0
.end method

.method public bridge synthetic withCrop(Lclarifai2/dto/input/Crop;)Lclarifai2/dto/input/ClarifaiImage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lclarifai2/dto/input/AutoValue_ClarifaiFileImage;->withCrop(Lclarifai2/dto/input/Crop;)Lclarifai2/dto/input/ClarifaiFileImage;

    move-result-object p0

    return-object p0
.end method
