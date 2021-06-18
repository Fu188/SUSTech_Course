.class public abstract Lclarifai2/dto/prediction/Logo;
.super Lclarifai2/dto/prediction/Prediction;
.source "Logo.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/prediction/Logo$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/prediction/Logo$Adapter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lclarifai2/dto/prediction/Prediction;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract boundingBox()Lclarifai2/dto/input/Crop;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract concepts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
