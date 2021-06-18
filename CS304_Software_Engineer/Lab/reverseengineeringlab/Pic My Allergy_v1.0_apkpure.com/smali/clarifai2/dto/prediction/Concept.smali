.class public abstract Lclarifai2/dto/prediction/Concept;
.super Lclarifai2/dto/prediction/Prediction;
.source "Concept.java"

# interfaces
.implements Lclarifai2/dto/HasClarifaiID;


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/prediction/Concept$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/prediction/Concept$Adapter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lclarifai2/dto/prediction/Prediction;-><init>()V

    return-void
.end method

.method public static forID(Ljava/lang/String;)Lclarifai2/dto/prediction/Concept;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    new-instance v7, Lclarifai2/dto/prediction/AutoValue_Concept;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lclarifai2/dto/prediction/AutoValue_Concept;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;FLjava/lang/String;)V

    return-object v7
.end method

.method public static forName(Ljava/lang/String;)Lclarifai2/dto/prediction/Concept;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    new-instance v7, Lclarifai2/dto/prediction/AutoValue_Concept;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lclarifai2/dto/prediction/AutoValue_Concept;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;FLjava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public abstract appID()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract createdAt()Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract language()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract name()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract value()F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract withName(Ljava/lang/String;)Lclarifai2/dto/prediction/Concept;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract withValue(F)Lclarifai2/dto/prediction/Concept;
    .param p1    # F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final withValue(Z)Lclarifai2/dto/prediction/Concept;
    .locals 0
    .param p1    # Z
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 77
    :goto_0
    invoke-virtual {p0, p1}, Lclarifai2/dto/prediction/Concept;->withValue(F)Lclarifai2/dto/prediction/Concept;

    move-result-object p0

    return-object p0
.end method
