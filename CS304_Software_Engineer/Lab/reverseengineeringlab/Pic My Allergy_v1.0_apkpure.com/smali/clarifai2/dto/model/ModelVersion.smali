.class public abstract Lclarifai2/dto/model/ModelVersion;
.super Ljava/lang/Object;
.source "ModelVersion.java"

# interfaces
.implements Lclarifai2/dto/HasClarifaiIDRequired;


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/model/ModelVersion$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/model/ModelVersion$Adapter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createdAt()Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract status()Lclarifai2/dto/model/ModelTrainingStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
