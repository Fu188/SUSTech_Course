.class public interface abstract Lclarifai2/dto/model/Model$Builder;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/dto/model/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lclarifai2/dto/model/Model$Builder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract _outputInfo(Lclarifai2/dto/model/output_info/OutputInfo;)Lclarifai2/dto/model/Model$Builder;
    .param p1    # Lclarifai2/dto/model/output_info/OutputInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/dto/model/output_info/OutputInfo;",
            ")TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract appID(Ljava/lang/String;)Lclarifai2/dto/model/Model$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract build()Lclarifai2/dto/model/Model;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/dto/model/Model<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract client(Lclarifai2/api/ClarifaiClient;)Lclarifai2/dto/model/Model$Builder;
    .param p1    # Lclarifai2/api/ClarifaiClient;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/api/ClarifaiClient;",
            ")TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract createdAt(Ljava/util/Date;)Lclarifai2/dto/model/Model$Builder;
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract id(Ljava/lang/String;)Lclarifai2/dto/model/Model$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract modelVersion(Lclarifai2/dto/model/ModelVersion;)Lclarifai2/dto/model/Model$Builder;
    .param p1    # Lclarifai2/dto/model/ModelVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/dto/model/ModelVersion;",
            ")TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract name(Ljava/lang/String;)Lclarifai2/dto/model/Model$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
