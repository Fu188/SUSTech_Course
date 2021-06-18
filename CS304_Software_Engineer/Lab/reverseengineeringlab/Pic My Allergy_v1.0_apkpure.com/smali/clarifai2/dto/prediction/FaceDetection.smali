.class public abstract Lclarifai2/dto/prediction/FaceDetection;
.super Lclarifai2/dto/prediction/Prediction;
.source "FaceDetection.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/prediction/FaceDetection$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/prediction/FaceDetection$Adapter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lclarifai2/dto/prediction/Prediction;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract boundingBox()Lclarifai2/dto/input/Crop;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
