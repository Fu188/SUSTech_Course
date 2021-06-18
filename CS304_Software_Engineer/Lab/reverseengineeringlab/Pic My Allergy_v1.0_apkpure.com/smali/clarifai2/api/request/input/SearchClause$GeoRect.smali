.class Lclarifai2/api/request/input/SearchClause$GeoRect;
.super Lclarifai2/api/request/input/SearchClause;
.source "SearchClause.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/api/request/input/SearchClause$GeoRect$Adapter;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/api/request/input/SearchClause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GeoRect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/api/request/input/SearchClause$GeoRect$Adapter;
    }
.end annotation


# instance fields
.field private final box:Lclarifai2/dto/Rectangle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lclarifai2/dto/PointF;Lclarifai2/dto/PointF;)V
    .locals 1
    .param p1    # Lclarifai2/dto/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lclarifai2/dto/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 291
    invoke-direct {p0, v0}, Lclarifai2/api/request/input/SearchClause;-><init>(Lclarifai2/api/request/input/SearchClause$1;)V

    .line 292
    invoke-static {p1, p2}, Lclarifai2/dto/Rectangle;->of(Lclarifai2/dto/PointF;Lclarifai2/dto/PointF;)Lclarifai2/dto/Rectangle;

    move-result-object p1

    iput-object p1, p0, Lclarifai2/api/request/input/SearchClause$GeoRect;->box:Lclarifai2/dto/Rectangle;

    return-void
.end method

.method synthetic constructor <init>(Lclarifai2/dto/PointF;Lclarifai2/dto/PointF;Lclarifai2/api/request/input/SearchClause$1;)V
    .locals 0

    .line 288
    invoke-direct {p0, p1, p2}, Lclarifai2/api/request/input/SearchClause$GeoRect;-><init>(Lclarifai2/dto/PointF;Lclarifai2/dto/PointF;)V

    return-void
.end method

.method static synthetic access$1400(Lclarifai2/api/request/input/SearchClause$GeoRect;)Lclarifai2/dto/Rectangle;
    .locals 0

    .line 288
    iget-object p0, p0, Lclarifai2/api/request/input/SearchClause$GeoRect;->box:Lclarifai2/dto/Rectangle;

    return-object p0
.end method
