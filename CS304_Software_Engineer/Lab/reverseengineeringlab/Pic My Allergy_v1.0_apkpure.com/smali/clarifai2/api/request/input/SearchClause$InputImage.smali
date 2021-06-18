.class Lclarifai2/api/request/input/SearchClause$InputImage;
.super Lclarifai2/api/request/input/SearchClause;
.source "SearchClause.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/api/request/input/SearchClause$InputImage$Adapter;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/api/request/input/SearchClause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/api/request/input/SearchClause$InputImage$Adapter;
    }
.end annotation


# instance fields
.field private final image:Lclarifai2/dto/input/ClarifaiImage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lclarifai2/dto/input/ClarifaiImage;)V
    .locals 1
    .param p1    # Lclarifai2/dto/input/ClarifaiImage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, v0}, Lclarifai2/api/request/input/SearchClause;-><init>(Lclarifai2/api/request/input/SearchClause$1;)V

    .line 154
    iput-object p1, p0, Lclarifai2/api/request/input/SearchClause$InputImage;->image:Lclarifai2/dto/input/ClarifaiImage;

    return-void
.end method

.method synthetic constructor <init>(Lclarifai2/dto/input/ClarifaiImage;Lclarifai2/api/request/input/SearchClause$1;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lclarifai2/api/request/input/SearchClause$InputImage;-><init>(Lclarifai2/dto/input/ClarifaiImage;)V

    return-void
.end method

.method static synthetic access$800(Lclarifai2/api/request/input/SearchClause$InputImage;)Lclarifai2/dto/input/ClarifaiImage;
    .locals 0

    .line 150
    iget-object p0, p0, Lclarifai2/api/request/input/SearchClause$InputImage;->image:Lclarifai2/dto/input/ClarifaiImage;

    return-object p0
.end method
