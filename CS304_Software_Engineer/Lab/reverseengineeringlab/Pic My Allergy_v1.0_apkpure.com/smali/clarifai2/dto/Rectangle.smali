.class public abstract Lclarifai2/dto/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Lclarifai2/dto/PointF;Lclarifai2/dto/PointF;)Lclarifai2/dto/Rectangle;
    .locals 1
    .param p0    # Lclarifai2/dto/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lclarifai2/dto/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    new-instance v0, Lclarifai2/dto/AutoValue_Rectangle;

    invoke-direct {v0, p0, p1}, Lclarifai2/dto/AutoValue_Rectangle;-><init>(Lclarifai2/dto/PointF;Lclarifai2/dto/PointF;)V

    return-object v0
.end method


# virtual methods
.method public final bottom()F
    .locals 0

    .line 49
    invoke-virtual {p0}, Lclarifai2/dto/Rectangle;->bottomRight()Lclarifai2/dto/PointF;

    move-result-object p0

    invoke-virtual {p0}, Lclarifai2/dto/PointF;->y()F

    move-result p0

    return p0
.end method

.method public final bottomLeft()Lclarifai2/dto/PointF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    invoke-virtual {p0}, Lclarifai2/dto/Rectangle;->left()F

    move-result v0

    invoke-virtual {p0}, Lclarifai2/dto/Rectangle;->bottom()F

    move-result p0

    invoke-static {v0, p0}, Lclarifai2/dto/PointF;->at(FF)Lclarifai2/dto/PointF;

    move-result-object p0

    return-object p0
.end method

.method public abstract bottomRight()Lclarifai2/dto/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final height()F
    .locals 1

    .line 33
    invoke-virtual {p0}, Lclarifai2/dto/Rectangle;->bottom()F

    move-result v0

    invoke-virtual {p0}, Lclarifai2/dto/Rectangle;->top()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public final left()F
    .locals 0

    .line 37
    invoke-virtual {p0}, Lclarifai2/dto/Rectangle;->topLeft()Lclarifai2/dto/PointF;

    move-result-object p0

    invoke-virtual {p0}, Lclarifai2/dto/PointF;->x()F

    move-result p0

    return p0
.end method

.method public final right()F
    .locals 0

    .line 45
    invoke-virtual {p0}, Lclarifai2/dto/Rectangle;->bottomRight()Lclarifai2/dto/PointF;

    move-result-object p0

    invoke-virtual {p0}, Lclarifai2/dto/PointF;->x()F

    move-result p0

    return p0
.end method

.method public final top()F
    .locals 0

    .line 41
    invoke-virtual {p0}, Lclarifai2/dto/Rectangle;->topLeft()Lclarifai2/dto/PointF;

    move-result-object p0

    invoke-virtual {p0}, Lclarifai2/dto/PointF;->y()F

    move-result p0

    return p0
.end method

.method public abstract topLeft()Lclarifai2/dto/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final topRight()Lclarifai2/dto/PointF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    invoke-virtual {p0}, Lclarifai2/dto/Rectangle;->right()F

    move-result v0

    invoke-virtual {p0}, Lclarifai2/dto/Rectangle;->top()F

    move-result p0

    invoke-static {v0, p0}, Lclarifai2/dto/PointF;->at(FF)Lclarifai2/dto/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final width()F
    .locals 1

    .line 29
    invoke-virtual {p0}, Lclarifai2/dto/Rectangle;->right()F

    move-result v0

    invoke-virtual {p0}, Lclarifai2/dto/Rectangle;->left()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method
