.class final Lclarifai2/dto/prediction/AutoValue_Concept;
.super Lclarifai2/dto/prediction/$AutoValue_Concept;
.source "AutoValue_Concept.java"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;FLjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct/range {p0 .. p6}, Lclarifai2/dto/prediction/$AutoValue_Concept;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;FLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final withName(Ljava/lang/String;)Lclarifai2/dto/prediction/Concept;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    new-instance v7, Lclarifai2/dto/prediction/AutoValue_Concept;

    invoke-virtual {p0}, Lclarifai2/dto/prediction/AutoValue_Concept;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lclarifai2/dto/prediction/AutoValue_Concept;->createdAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0}, Lclarifai2/dto/prediction/AutoValue_Concept;->appID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lclarifai2/dto/prediction/AutoValue_Concept;->value()F

    move-result v5

    invoke-virtual {p0}, Lclarifai2/dto/prediction/AutoValue_Concept;->language()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lclarifai2/dto/prediction/AutoValue_Concept;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;FLjava/lang/String;)V

    return-object v7
.end method

.method public final withValue(F)Lclarifai2/dto/prediction/Concept;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 22
    new-instance v7, Lclarifai2/dto/prediction/AutoValue_Concept;

    invoke-virtual {p0}, Lclarifai2/dto/prediction/AutoValue_Concept;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lclarifai2/dto/prediction/AutoValue_Concept;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lclarifai2/dto/prediction/AutoValue_Concept;->createdAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0}, Lclarifai2/dto/prediction/AutoValue_Concept;->appID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lclarifai2/dto/prediction/AutoValue_Concept;->language()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lclarifai2/dto/prediction/AutoValue_Concept;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;FLjava/lang/String;)V

    return-object v7
.end method
