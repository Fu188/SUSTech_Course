.class public abstract Lclarifai2/dto/model/DemographicsModel;
.super Lclarifai2/dto/model/Model;
.source "DemographicsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/model/DemographicsModel$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/dto/model/Model<",
        "Lclarifai2/dto/prediction/Region;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lclarifai2/dto/model/Model;-><init>()V

    return-void
.end method


# virtual methods
.method public final modelType()Lclarifai2/dto/model/ModelType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    sget-object p0, Lclarifai2/dto/model/ModelType;->DEMOGRAPHICS:Lclarifai2/dto/model/ModelType;

    return-object p0
.end method

.method public final outputInfo()Lclarifai2/dto/model/output_info/DemographicsOutputInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    invoke-virtual {p0}, Lclarifai2/dto/model/DemographicsModel;->_outputInfo()Lclarifai2/dto/model/output_info/OutputInfo;

    move-result-object p0

    check-cast p0, Lclarifai2/dto/model/output_info/DemographicsOutputInfo;

    return-object p0
.end method

.method public bridge synthetic outputInfo()Lclarifai2/dto/model/output_info/OutputInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 8
    invoke-virtual {p0}, Lclarifai2/dto/model/DemographicsModel;->outputInfo()Lclarifai2/dto/model/output_info/DemographicsOutputInfo;

    move-result-object p0

    return-object p0
.end method
