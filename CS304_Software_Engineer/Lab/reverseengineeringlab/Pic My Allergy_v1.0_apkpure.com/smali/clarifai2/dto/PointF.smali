.class public abstract Lclarifai2/dto/PointF;
.super Ljava/lang/Object;
.source "PointF.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static at(FF)Lclarifai2/dto/PointF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    new-instance v0, Lclarifai2/dto/AutoValue_PointF;

    invoke-direct {v0, p0, p1}, Lclarifai2/dto/AutoValue_PointF;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public final translated(FF)Lclarifai2/dto/PointF;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    new-instance v0, Lclarifai2/dto/AutoValue_PointF;

    invoke-virtual {p0}, Lclarifai2/dto/PointF;->x()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {p0}, Lclarifai2/dto/PointF;->y()F

    move-result p0

    add-float/2addr p0, p2

    invoke-direct {v0, v1, p0}, Lclarifai2/dto/AutoValue_PointF;-><init>(FF)V

    return-object v0
.end method

.method public abstract x()F
.end method

.method public abstract y()F
.end method
