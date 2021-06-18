.class public abstract Lclarifai2/dto/input/ClarifaiFileImage;
.super Lclarifai2/dto/input/ClarifaiImage;
.source "ClarifaiFileImage.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/input/ClarifaiFileImage$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/input/ClarifaiFileImage$Adapter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lclarifai2/dto/input/ClarifaiImage;-><init>()V

    return-void
.end method


# virtual methods
.method abstract bytes()[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final imageBytes()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    invoke-virtual {p0}, Lclarifai2/dto/input/ClarifaiFileImage;->bytes()[B

    move-result-object p0

    .line 29
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public abstract withCrop(Lclarifai2/dto/input/Crop;)Lclarifai2/dto/input/ClarifaiFileImage;
    .param p1    # Lclarifai2/dto/input/Crop;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public bridge synthetic withCrop(Lclarifai2/dto/input/Crop;)Lclarifai2/dto/input/ClarifaiImage;
    .locals 0
    .param p1    # Lclarifai2/dto/input/Crop;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lclarifai2/dto/input/ClarifaiFileImage;->withCrop(Lclarifai2/dto/input/Crop;)Lclarifai2/dto/input/ClarifaiFileImage;

    move-result-object p0

    return-object p0
.end method
