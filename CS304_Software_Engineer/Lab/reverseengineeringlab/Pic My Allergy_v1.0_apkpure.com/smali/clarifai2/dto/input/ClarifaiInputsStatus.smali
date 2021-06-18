.class public abstract Lclarifai2/dto/input/ClarifaiInputsStatus;
.super Ljava/lang/Object;
.source "ClarifaiInputsStatus.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/input/ClarifaiInputsStatus$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/input/ClarifaiInputsStatus$Adapter;,
        Lclarifai2/dto/input/ClarifaiInputsStatus$Builder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract errors()I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract processed()I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract toProcess()I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
