.class final Lclarifai2/dto/input/AutoValue_ClarifaiVideo;
.super Lclarifai2/dto/input/$AutoValue_ClarifaiVideo;
.source "AutoValue_ClarifaiVideo.java"


# direct methods
.method constructor <init>(Lclarifai2/dto/input/Crop;Ljava/net/URL;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lclarifai2/dto/input/$AutoValue_ClarifaiVideo;-><init>(Lclarifai2/dto/input/Crop;Ljava/net/URL;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic withCrop(Lclarifai2/dto/input/Crop;)Lclarifai2/dto/input/ClarifaiImage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lclarifai2/dto/input/AutoValue_ClarifaiVideo;->withCrop(Lclarifai2/dto/input/Crop;)Lclarifai2/dto/input/ClarifaiVideo;

    move-result-object p0

    return-object p0
.end method

.method public final withCrop(Lclarifai2/dto/input/Crop;)Lclarifai2/dto/input/ClarifaiVideo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    new-instance v0, Lclarifai2/dto/input/AutoValue_ClarifaiVideo;

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_ClarifaiVideo;->url()Ljava/net/URL;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lclarifai2/dto/input/AutoValue_ClarifaiVideo;-><init>(Lclarifai2/dto/input/Crop;Ljava/net/URL;)V

    return-object v0
.end method
