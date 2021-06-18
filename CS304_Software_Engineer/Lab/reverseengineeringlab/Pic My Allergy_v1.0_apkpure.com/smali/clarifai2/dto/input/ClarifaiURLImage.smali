.class public abstract Lclarifai2/dto/input/ClarifaiURLImage;
.super Lclarifai2/dto/input/ClarifaiImage;
.source "ClarifaiURLImage.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/input/ClarifaiURLImage$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/input/ClarifaiURLImage$Adapter;
    }
.end annotation


# instance fields
.field private allowDuplicateUrl:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lclarifai2/dto/input/ClarifaiImage;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lclarifai2/dto/input/ClarifaiURLImage;->allowDuplicateUrl:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public allowDuplicateUrl()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 45
    iget-object p0, p0, Lclarifai2/dto/input/ClarifaiURLImage;->allowDuplicateUrl:Ljava/lang/Boolean;

    return-object p0
.end method

.method public abstract url()Ljava/net/URL;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final withAllowDuplicateUrl(Z)Lclarifai2/dto/input/ClarifaiURLImage;
    .locals 0
    .param p1    # Z
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lclarifai2/dto/input/ClarifaiURLImage;->allowDuplicateUrl:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic withCrop(Lclarifai2/dto/input/Crop;)Lclarifai2/dto/input/ClarifaiImage;
    .locals 0
    .param p1    # Lclarifai2/dto/input/Crop;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 20
    invoke-virtual {p0, p1}, Lclarifai2/dto/input/ClarifaiURLImage;->withCrop(Lclarifai2/dto/input/Crop;)Lclarifai2/dto/input/ClarifaiURLImage;

    move-result-object p0

    return-object p0
.end method

.method public abstract withCrop(Lclarifai2/dto/input/Crop;)Lclarifai2/dto/input/ClarifaiURLImage;
    .param p1    # Lclarifai2/dto/input/Crop;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
