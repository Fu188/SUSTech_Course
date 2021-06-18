.class public abstract Lclarifai2/dto/input/SearchHit;
.super Ljava/lang/Object;
.source "SearchHit.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/input/SearchHit$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/input/SearchHit$Adapter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract input()Lclarifai2/dto/input/ClarifaiInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract score()F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
