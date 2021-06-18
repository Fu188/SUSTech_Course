.class public abstract Lclarifai2/dto/prediction/Cluster;
.super Lclarifai2/dto/prediction/Prediction;
.source "Cluster.java"

# interfaces
.implements Lclarifai2/dto/HasClarifaiIDRequired;


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/prediction/Cluster$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/prediction/Cluster$Adapter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lclarifai2/dto/prediction/Prediction;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract numClusters()I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
