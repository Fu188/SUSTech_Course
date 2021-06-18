.class public abstract Lclarifai2/dto/model/UnknownModel;
.super Lclarifai2/dto/model/Model;
.source "UnknownModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/model/UnknownModel$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/dto/model/Model<",
        "Lclarifai2/dto/prediction/Unknown;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lclarifai2/dto/model/Model;-><init>()V

    return-void
.end method


# virtual methods
.method public final modelType()Lclarifai2/dto/model/ModelType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    sget-object p0, Lclarifai2/dto/model/ModelType;->UNKNOWN:Lclarifai2/dto/model/ModelType;

    return-object p0
.end method

.method public bridge synthetic outputInfo()Lclarifai2/dto/model/output_info/OutputInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 9
    invoke-virtual {p0}, Lclarifai2/dto/model/UnknownModel;->outputInfo()Lclarifai2/dto/model/output_info/UnknownOutputInfo;

    move-result-object p0

    return-object p0
.end method

.method public final outputInfo()Lclarifai2/dto/model/output_info/UnknownOutputInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    invoke-virtual {p0}, Lclarifai2/dto/model/UnknownModel;->_outputInfo()Lclarifai2/dto/model/output_info/OutputInfo;

    move-result-object p0

    check-cast p0, Lclarifai2/dto/model/output_info/UnknownOutputInfo;

    return-object p0
.end method
