.class public abstract Lclarifai2/dto/model/output_info/ColorOutputInfo;
.super Lclarifai2/dto/model/output_info/OutputInfo;
.source "ColorOutputInfo.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/model/output_info/ColorOutputInfo$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/model/output_info/ColorOutputInfo$Adapter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lclarifai2/dto/model/output_info/OutputInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract type()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract typeExt()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
