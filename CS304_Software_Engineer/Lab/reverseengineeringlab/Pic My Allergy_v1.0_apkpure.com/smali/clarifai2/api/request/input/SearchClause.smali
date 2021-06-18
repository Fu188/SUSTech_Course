.class public abstract Lclarifai2/api/request/input/SearchClause;
.super Ljava/lang/Object;
.source "SearchClause.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/api/request/input/SearchClause$GeoRect;,
        Lclarifai2/api/request/input/SearchClause$GeoCircle;,
        Lclarifai2/api/request/input/SearchClause$SearchConcept;,
        Lclarifai2/api/request/input/SearchClause$OutputImage;,
        Lclarifai2/api/request/input/SearchClause$InputImage;,
        Lclarifai2/api/request/input/SearchClause$Metadata;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lclarifai2/api/request/input/SearchClause$1;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lclarifai2/api/request/input/SearchClause;-><init>()V

    return-void
.end method

.method public static matchConcept(Lclarifai2/dto/prediction/Concept;)Lclarifai2/api/request/input/SearchClause;
    .locals 3
    .param p0    # Lclarifai2/dto/prediction/Concept;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 104
    new-instance v0, Lclarifai2/api/request/input/SearchClause$SearchConcept;

    const-string v1, "output"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lclarifai2/api/request/input/SearchClause$SearchConcept;-><init>(Ljava/lang/String;Lclarifai2/dto/prediction/Concept;Lclarifai2/api/request/input/SearchClause$1;)V

    return-object v0
.end method

.method public static matchGeo(Lclarifai2/dto/PointF;Lclarifai2/dto/PointF;)Lclarifai2/api/request/input/SearchClause;
    .locals 2
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

    .line 112
    new-instance v0, Lclarifai2/api/request/input/SearchClause$GeoRect;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lclarifai2/api/request/input/SearchClause$GeoRect;-><init>(Lclarifai2/dto/PointF;Lclarifai2/dto/PointF;Lclarifai2/api/request/input/SearchClause$1;)V

    return-object v0
.end method

.method public static matchGeo(Lclarifai2/dto/PointF;Lclarifai2/dto/Radius;)Lclarifai2/api/request/input/SearchClause;
    .locals 2
    .param p0    # Lclarifai2/dto/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lclarifai2/dto/Radius;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 108
    new-instance v0, Lclarifai2/api/request/input/SearchClause$GeoCircle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lclarifai2/api/request/input/SearchClause$GeoCircle;-><init>(Lclarifai2/dto/PointF;Lclarifai2/dto/Radius;Lclarifai2/api/request/input/SearchClause$1;)V

    return-object v0
.end method

.method public static matchImageURL(Lclarifai2/dto/input/ClarifaiURLImage;)Lclarifai2/api/request/input/SearchClause;
    .locals 2
    .param p0    # Lclarifai2/dto/input/ClarifaiURLImage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 61
    new-instance v0, Lclarifai2/api/request/input/SearchClause$InputImage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lclarifai2/api/request/input/SearchClause$InputImage;-><init>(Lclarifai2/dto/input/ClarifaiImage;Lclarifai2/api/request/input/SearchClause$1;)V

    return-object v0
.end method

.method public static matchImageVisually(Lclarifai2/dto/input/ClarifaiImage;)Lclarifai2/api/request/input/SearchClause;
    .locals 2
    .param p0    # Lclarifai2/dto/input/ClarifaiImage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 74
    new-instance v0, Lclarifai2/api/request/input/SearchClause$OutputImage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lclarifai2/api/request/input/SearchClause$OutputImage;-><init>(Lclarifai2/dto/input/ClarifaiImage;Lclarifai2/api/request/input/SearchClause$1;)V

    return-object v0
.end method

.method public static matchMetadata(Lclarifai2/dto/input/ClarifaiInput;)Lclarifai2/api/request/input/SearchClause;
    .locals 0
    .param p0    # Lclarifai2/dto/input/ClarifaiInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    invoke-virtual {p0}, Lclarifai2/dto/input/ClarifaiInput;->metadata()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lclarifai2/api/request/input/SearchClause;->matchMetadata(Lcom/google/gson/JsonObject;)Lclarifai2/api/request/input/SearchClause;

    move-result-object p0

    return-object p0
.end method

.method public static matchMetadata(Lcom/google/gson/JsonObject;)Lclarifai2/api/request/input/SearchClause;
    .locals 2
    .param p0    # Lcom/google/gson/JsonObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 48
    new-instance v0, Lclarifai2/api/request/input/SearchClause$Metadata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lclarifai2/api/request/input/SearchClause$Metadata;-><init>(Lcom/google/gson/JsonObject;Lclarifai2/api/request/input/SearchClause$1;)V

    return-object v0
.end method

.method public static matchUserTaggedConcept(Lclarifai2/dto/prediction/Concept;)Lclarifai2/api/request/input/SearchClause;
    .locals 3
    .param p0    # Lclarifai2/dto/prediction/Concept;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 89
    new-instance v0, Lclarifai2/api/request/input/SearchClause$SearchConcept;

    const-string v1, "input"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lclarifai2/api/request/input/SearchClause$SearchConcept;-><init>(Ljava/lang/String;Lclarifai2/dto/prediction/Concept;Lclarifai2/api/request/input/SearchClause$1;)V

    return-object v0
.end method
