.class Lclarifai2/api/request/input/SearchClause$GeoCircle;
.super Lclarifai2/api/request/input/SearchClause;
.source "SearchClause.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/api/request/input/SearchClause$GeoCircle$Adapter;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/api/request/input/SearchClause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GeoCircle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/api/request/input/SearchClause$GeoCircle$Adapter;
    }
.end annotation


# instance fields
.field private final center:Lclarifai2/dto/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final radius:Lclarifai2/dto/Radius;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lclarifai2/dto/PointF;Lclarifai2/dto/Radius;)V
    .locals 1
    .param p1    # Lclarifai2/dto/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lclarifai2/dto/Radius;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, v0}, Lclarifai2/api/request/input/SearchClause;-><init>(Lclarifai2/api/request/input/SearchClause$1;)V

    .line 256
    iput-object p1, p0, Lclarifai2/api/request/input/SearchClause$GeoCircle;->center:Lclarifai2/dto/PointF;

    .line 257
    iput-object p2, p0, Lclarifai2/api/request/input/SearchClause$GeoCircle;->radius:Lclarifai2/dto/Radius;

    return-void
.end method

.method synthetic constructor <init>(Lclarifai2/dto/PointF;Lclarifai2/dto/Radius;Lclarifai2/api/request/input/SearchClause$1;)V
    .locals 0

    .line 251
    invoke-direct {p0, p1, p2}, Lclarifai2/api/request/input/SearchClause$GeoCircle;-><init>(Lclarifai2/dto/PointF;Lclarifai2/dto/Radius;)V

    return-void
.end method

.method static synthetic access$1200(Lclarifai2/api/request/input/SearchClause$GeoCircle;)Lclarifai2/dto/Radius;
    .locals 0

    .line 251
    iget-object p0, p0, Lclarifai2/api/request/input/SearchClause$GeoCircle;->radius:Lclarifai2/dto/Radius;

    return-object p0
.end method

.method static synthetic access$1300(Lclarifai2/api/request/input/SearchClause$GeoCircle;)Lclarifai2/dto/PointF;
    .locals 0

    .line 251
    iget-object p0, p0, Lclarifai2/api/request/input/SearchClause$GeoCircle;->center:Lclarifai2/dto/PointF;

    return-object p0
.end method
