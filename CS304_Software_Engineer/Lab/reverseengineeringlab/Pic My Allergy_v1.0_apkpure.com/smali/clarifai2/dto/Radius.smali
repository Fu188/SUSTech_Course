.class public abstract Lclarifai2/dto/Radius;
.super Ljava/lang/Object;
.source "Radius.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/Radius$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/Radius$Adapter;,
        Lclarifai2/dto/Radius$Unit;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(FLclarifai2/dto/Radius$Unit;)Lclarifai2/dto/Radius;
    .locals 1
    .param p1    # Lclarifai2/dto/Radius$Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 22
    new-instance v0, Lclarifai2/dto/AutoValue_Radius;

    invoke-direct {v0, p0, p1}, Lclarifai2/dto/AutoValue_Radius;-><init>(FLclarifai2/dto/Radius$Unit;)V

    return-object v0
.end method


# virtual methods
.method public abstract unit()Lclarifai2/dto/Radius$Unit;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract value()F
.end method
