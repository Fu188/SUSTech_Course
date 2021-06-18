.class final Lclarifai2/dto/input/AutoValue_ClarifaiURLImage;
.super Lclarifai2/dto/input/$AutoValue_ClarifaiURLImage;
.source "AutoValue_ClarifaiURLImage.java"


# direct methods
.method constructor <init>(Lclarifai2/dto/input/Crop;Ljava/net/URL;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lclarifai2/dto/input/$AutoValue_ClarifaiURLImage;-><init>(Lclarifai2/dto/input/Crop;Ljava/net/URL;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic withCrop(Lclarifai2/dto/input/Crop;)Lclarifai2/dto/input/ClarifaiImage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lclarifai2/dto/input/AutoValue_ClarifaiURLImage;->withCrop(Lclarifai2/dto/input/Crop;)Lclarifai2/dto/input/ClarifaiURLImage;

    move-result-object p0

    return-object p0
.end method

.method public final withCrop(Lclarifai2/dto/input/Crop;)Lclarifai2/dto/input/ClarifaiURLImage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    new-instance v0, Lclarifai2/dto/input/AutoValue_ClarifaiURLImage;

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_ClarifaiURLImage;->url()Ljava/net/URL;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lclarifai2/dto/input/AutoValue_ClarifaiURLImage;-><init>(Lclarifai2/dto/input/Crop;Ljava/net/URL;)V

    return-object v0
.end method
