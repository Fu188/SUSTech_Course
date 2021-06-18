.class final Lclarifai2/dto/input/AutoValue_ClarifaiInput;
.super Lclarifai2/dto/input/$AutoValue_ClarifaiInput;
.source "AutoValue_ClarifaiInput.java"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Lclarifai2/dto/input/ClarifaiImage;Lcom/google/gson/JsonObject;Ljava/util/List;Lclarifai2/dto/PointF;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lclarifai2/dto/input/ClarifaiImage;",
            "Lcom/google/gson/JsonObject;",
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;",
            "Lclarifai2/dto/PointF;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct/range {p0 .. p6}, Lclarifai2/dto/input/$AutoValue_ClarifaiInput;-><init>(Ljava/lang/String;Ljava/util/Date;Lclarifai2/dto/input/ClarifaiImage;Lcom/google/gson/JsonObject;Ljava/util/List;Lclarifai2/dto/PointF;)V

    return-void
.end method


# virtual methods
.method public final withConcepts(Ljava/util/List;)Lclarifai2/dto/input/ClarifaiInput;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;)",
            "Lclarifai2/dto/input/ClarifaiInput;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    new-instance v7, Lclarifai2/dto/input/AutoValue_ClarifaiInput;

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;->createdAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;->image()Lclarifai2/dto/input/ClarifaiImage;

    move-result-object v3

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;->_metadata()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;->geo()Lclarifai2/dto/PointF;

    move-result-object v6

    move-object v0, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;-><init>(Ljava/lang/String;Ljava/util/Date;Lclarifai2/dto/input/ClarifaiImage;Lcom/google/gson/JsonObject;Ljava/util/List;Lclarifai2/dto/PointF;)V

    return-object v7
.end method

.method final withId(Ljava/lang/String;)Lclarifai2/dto/input/ClarifaiInput;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 20
    new-instance v7, Lclarifai2/dto/input/AutoValue_ClarifaiInput;

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;->createdAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;->image()Lclarifai2/dto/input/ClarifaiImage;

    move-result-object v3

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;->_metadata()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;->concepts()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;->geo()Lclarifai2/dto/PointF;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;-><init>(Ljava/lang/String;Ljava/util/Date;Lclarifai2/dto/input/ClarifaiImage;Lcom/google/gson/JsonObject;Ljava/util/List;Lclarifai2/dto/PointF;)V

    return-object v7
.end method
