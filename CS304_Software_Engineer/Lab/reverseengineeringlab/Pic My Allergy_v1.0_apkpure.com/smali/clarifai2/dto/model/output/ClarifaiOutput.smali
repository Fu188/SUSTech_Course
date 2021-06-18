.class public abstract Lclarifai2/dto/model/output/ClarifaiOutput;
.super Ljava/lang/Object;
.source "ClarifaiOutput.java"

# interfaces
.implements Lclarifai2/dto/HasClarifaiIDRequired;


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/model/output/ClarifaiOutput$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/model/output/ClarifaiOutput$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PREDICTION:",
        "Lclarifai2/dto/prediction/Prediction;",
        ">",
        "Ljava/lang/Object;",
        "Lclarifai2/dto/HasClarifaiIDRequired;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createdAt()Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract data()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TPREDICTION;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract input()Lclarifai2/dto/input/ClarifaiInput;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract model()Lclarifai2/dto/model/Model;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/dto/model/Model<",
            "TPREDICTION;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract status()Lclarifai2/dto/ClarifaiStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
