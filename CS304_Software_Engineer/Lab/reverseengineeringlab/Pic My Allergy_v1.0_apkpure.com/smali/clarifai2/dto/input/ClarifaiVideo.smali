.class public abstract Lclarifai2/dto/input/ClarifaiVideo;
.super Lclarifai2/dto/input/ClarifaiImage;
.source "ClarifaiVideo.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/input/ClarifaiVideo$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/input/ClarifaiVideo$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lclarifai2/dto/input/ClarifaiImage;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract url()Ljava/net/URL;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
