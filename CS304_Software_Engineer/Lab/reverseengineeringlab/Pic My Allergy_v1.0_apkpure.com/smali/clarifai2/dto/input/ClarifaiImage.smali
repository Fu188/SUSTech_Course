.class public abstract Lclarifai2/dto/input/ClarifaiImage;
.super Ljava/lang/Object;
.source "ClarifaiImage.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/input/ClarifaiImage$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/input/ClarifaiImage$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Ljava/io/File;)Lclarifai2/dto/input/ClarifaiFileImage;
    .locals 0
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    invoke-static {p0}, Lclarifai2/internal/InternalUtil;->read(Ljava/io/File;)[B

    move-result-object p0

    invoke-static {p0}, Lclarifai2/dto/input/ClarifaiImage;->of([B)Lclarifai2/dto/input/ClarifaiFileImage;

    move-result-object p0

    return-object p0
.end method

.method public static of([B)Lclarifai2/dto/input/ClarifaiFileImage;
    .locals 2
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    new-instance v0, Lclarifai2/dto/input/AutoValue_ClarifaiFileImage;

    invoke-static {}, Lclarifai2/dto/input/Crop;->create()Lclarifai2/dto/input/Crop;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lclarifai2/dto/input/AutoValue_ClarifaiFileImage;-><init>(Lclarifai2/dto/input/Crop;[B)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lclarifai2/dto/input/ClarifaiURLImage;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    invoke-static {v0}, Lclarifai2/dto/input/ClarifaiImage;->of(Ljava/net/URL;)Lclarifai2/dto/input/ClarifaiURLImage;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Lclarifai2/exception/ClarifaiException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lclarifai2/exception/ClarifaiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static of(Ljava/net/URL;)Lclarifai2/dto/input/ClarifaiURLImage;
    .locals 2
    .param p0    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 45
    new-instance v0, Lclarifai2/dto/input/AutoValue_ClarifaiURLImage;

    invoke-static {}, Lclarifai2/dto/input/Crop;->create()Lclarifai2/dto/input/Crop;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lclarifai2/dto/input/AutoValue_ClarifaiURLImage;-><init>(Lclarifai2/dto/input/Crop;Ljava/net/URL;)V

    return-object v0
.end method

.method public static ofVideo(Ljava/lang/String;)Lclarifai2/dto/input/ClarifaiVideo;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 51
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    invoke-static {v0}, Lclarifai2/dto/input/ClarifaiImage;->ofVideo(Ljava/net/URL;)Lclarifai2/dto/input/ClarifaiVideo;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Lclarifai2/exception/ClarifaiException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lclarifai2/exception/ClarifaiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static ofVideo(Ljava/net/URL;)Lclarifai2/dto/input/ClarifaiVideo;
    .locals 2
    .param p0    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 59
    new-instance v0, Lclarifai2/dto/input/AutoValue_ClarifaiVideo;

    invoke-static {}, Lclarifai2/dto/input/Crop;->create()Lclarifai2/dto/input/Crop;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lclarifai2/dto/input/AutoValue_ClarifaiVideo;-><init>(Lclarifai2/dto/input/Crop;Ljava/net/URL;)V

    return-object v0
.end method


# virtual methods
.method public abstract crop()Lclarifai2/dto/input/Crop;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract withCrop(Lclarifai2/dto/input/Crop;)Lclarifai2/dto/input/ClarifaiImage;
    .param p1    # Lclarifai2/dto/input/Crop;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
