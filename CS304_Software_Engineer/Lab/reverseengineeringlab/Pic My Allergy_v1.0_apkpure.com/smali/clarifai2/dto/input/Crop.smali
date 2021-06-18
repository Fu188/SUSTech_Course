.class public abstract Lclarifai2/dto/input/Crop;
.super Ljava/lang/Object;
.source "Crop.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/input/Crop$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/input/Crop$Adapter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lclarifai2/dto/input/Crop;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    new-instance v0, Lclarifai2/dto/input/AutoValue_Crop;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Lclarifai2/dto/input/AutoValue_Crop;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method public abstract bottom()F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final bottom(F)Lclarifai2/dto/input/Crop;
    .locals 0
    .param p1    # F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lclarifai2/dto/input/Crop;->withBottom(F)Lclarifai2/dto/input/Crop;

    move-result-object p0

    return-object p0
.end method

.method public abstract left()F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final left(F)Lclarifai2/dto/input/Crop;
    .locals 0
    .param p1    # F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lclarifai2/dto/input/Crop;->withLeft(F)Lclarifai2/dto/input/Crop;

    move-result-object p0

    return-object p0
.end method

.method public abstract right()F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final right(F)Lclarifai2/dto/input/Crop;
    .locals 0
    .param p1    # F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lclarifai2/dto/input/Crop;->withRight(F)Lclarifai2/dto/input/Crop;

    move-result-object p0

    return-object p0
.end method

.method public abstract top()F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final top(F)Lclarifai2/dto/input/Crop;
    .locals 0
    .param p1    # F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lclarifai2/dto/input/Crop;->withTop(F)Lclarifai2/dto/input/Crop;

    move-result-object p0

    return-object p0
.end method

.method abstract withBottom(F)Lclarifai2/dto/input/Crop;
    .param p1    # F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method abstract withLeft(F)Lclarifai2/dto/input/Crop;
    .param p1    # F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method abstract withRight(F)Lclarifai2/dto/input/Crop;
    .param p1    # F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method abstract withTop(F)Lclarifai2/dto/input/Crop;
    .param p1    # F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
