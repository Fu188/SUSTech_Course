.class public abstract Lclarifai2/dto/model/FaceDetectionModel;
.super Lclarifai2/dto/model/Model;
.source "FaceDetectionModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/model/FaceDetectionModel$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/dto/model/Model<",
        "Lclarifai2/dto/prediction/FaceDetection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lclarifai2/dto/model/Model;-><init>()V

    return-void
.end method


# virtual methods
.method public final modelType()Lclarifai2/dto/model/ModelType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    sget-object p0, Lclarifai2/dto/model/ModelType;->FACE_DETECTION:Lclarifai2/dto/model/ModelType;

    return-object p0
.end method

.method public final outputInfo()Lclarifai2/dto/model/output_info/FaceDetectionOutputInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 20
    invoke-virtual {p0}, Lclarifai2/dto/model/FaceDetectionModel;->_outputInfo()Lclarifai2/dto/model/output_info/OutputInfo;

    move-result-object p0

    check-cast p0, Lclarifai2/dto/model/output_info/FaceDetectionOutputInfo;

    return-object p0
.end method

.method public bridge synthetic outputInfo()Lclarifai2/dto/model/output_info/OutputInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 8
    invoke-virtual {p0}, Lclarifai2/dto/model/FaceDetectionModel;->outputInfo()Lclarifai2/dto/model/output_info/FaceDetectionOutputInfo;

    move-result-object p0

    return-object p0
.end method
