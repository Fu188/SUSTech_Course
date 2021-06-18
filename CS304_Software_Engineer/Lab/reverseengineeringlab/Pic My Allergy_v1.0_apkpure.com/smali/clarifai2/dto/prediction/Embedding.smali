.class public abstract Lclarifai2/dto/prediction/Embedding;
.super Lclarifai2/dto/prediction/Prediction;
.source "Embedding.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/prediction/Embedding$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/prediction/Embedding$Adapter;
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
.method abstract _embedding()[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final embedding()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    invoke-virtual {p0}, Lclarifai2/dto/prediction/Embedding;->_embedding()[F

    move-result-object p0

    .line 27
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    return-object p0
.end method

.method public abstract numDimensions()I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
