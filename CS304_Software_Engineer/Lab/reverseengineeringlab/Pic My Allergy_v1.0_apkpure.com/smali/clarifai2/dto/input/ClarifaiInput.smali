.class public abstract Lclarifai2/dto/input/ClarifaiInput;
.super Ljava/lang/Object;
.source "ClarifaiInput.java"

# interfaces
.implements Lclarifai2/dto/HasClarifaiID;


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/input/ClarifaiInput$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/input/ClarifaiInput$Adapter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forImage(Lclarifai2/dto/input/ClarifaiImage;)Lclarifai2/dto/input/ClarifaiInput;
    .locals 8
    .param p0    # Lclarifai2/dto/input/ClarifaiImage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    new-instance v7, Lclarifai2/dto/input/AutoValue_ClarifaiInput;

    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;-><init>(Ljava/lang/String;Ljava/util/Date;Lclarifai2/dto/input/ClarifaiImage;Lcom/google/gson/JsonObject;Ljava/util/List;Lclarifai2/dto/PointF;)V

    return-object v7
.end method

.method public static forImage(Ljava/io/File;)Lclarifai2/dto/input/ClarifaiInput;
    .locals 8
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 68
    new-instance v7, Lclarifai2/dto/input/AutoValue_ClarifaiInput;

    .line 70
    invoke-static {p0}, Lclarifai2/internal/InternalUtil;->read(Ljava/io/File;)[B

    move-result-object p0

    invoke-static {p0}, Lclarifai2/dto/input/ClarifaiImage;->of([B)Lclarifai2/dto/input/ClarifaiFileImage;

    move-result-object v3

    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;-><init>(Ljava/lang/String;Ljava/util/Date;Lclarifai2/dto/input/ClarifaiImage;Lcom/google/gson/JsonObject;Ljava/util/List;Lclarifai2/dto/PointF;)V

    return-object v7
.end method

.method public static forImage(Ljava/lang/String;)Lclarifai2/dto/input/ClarifaiInput;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 84
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    invoke-static {v0}, Lclarifai2/dto/input/ClarifaiInput;->forImage(Ljava/net/URL;)Lclarifai2/dto/input/ClarifaiInput;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    .line 86
    new-instance v1, Lclarifai2/exception/ClarifaiException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lclarifai2/exception/ClarifaiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static forImage(Ljava/net/URL;)Lclarifai2/dto/input/ClarifaiInput;
    .locals 8
    .param p0    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 96
    new-instance v7, Lclarifai2/dto/input/AutoValue_ClarifaiInput;

    new-instance v3, Lclarifai2/dto/input/AutoValue_ClarifaiURLImage;

    .line 98
    invoke-static {}, Lclarifai2/dto/input/Crop;->create()Lclarifai2/dto/input/Crop;

    move-result-object v0

    invoke-direct {v3, v0, p0}, Lclarifai2/dto/input/AutoValue_ClarifaiURLImage;-><init>(Lclarifai2/dto/input/Crop;Ljava/net/URL;)V

    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;-><init>(Ljava/lang/String;Ljava/util/Date;Lclarifai2/dto/input/ClarifaiImage;Lcom/google/gson/JsonObject;Ljava/util/List;Lclarifai2/dto/PointF;)V

    return-object v7
.end method

.method public static forImage([B)Lclarifai2/dto/input/ClarifaiInput;
    .locals 8
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 54
    new-instance v7, Lclarifai2/dto/input/AutoValue_ClarifaiInput;

    new-instance v3, Lclarifai2/dto/input/AutoValue_ClarifaiFileImage;

    .line 56
    invoke-static {}, Lclarifai2/dto/input/Crop;->create()Lclarifai2/dto/input/Crop;

    move-result-object v0

    invoke-direct {v3, v0, p0}, Lclarifai2/dto/input/AutoValue_ClarifaiFileImage;-><init>(Lclarifai2/dto/input/Crop;[B)V

    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;-><init>(Ljava/lang/String;Ljava/util/Date;Lclarifai2/dto/input/ClarifaiImage;Lcom/google/gson/JsonObject;Ljava/util/List;Lclarifai2/dto/PointF;)V

    return-object v7
.end method

.method public static forVideo(Ljava/lang/String;)Lclarifai2/dto/input/ClarifaiInput;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 112
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    invoke-static {v0}, Lclarifai2/dto/input/ClarifaiInput;->forVideo(Ljava/net/URL;)Lclarifai2/dto/input/ClarifaiInput;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    .line 114
    new-instance v1, Lclarifai2/exception/ClarifaiException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lclarifai2/exception/ClarifaiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static forVideo(Ljava/net/URL;)Lclarifai2/dto/input/ClarifaiInput;
    .locals 8
    .param p0    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 124
    new-instance v7, Lclarifai2/dto/input/AutoValue_ClarifaiInput;

    new-instance v3, Lclarifai2/dto/input/AutoValue_ClarifaiVideo;

    .line 126
    invoke-static {}, Lclarifai2/dto/input/Crop;->create()Lclarifai2/dto/input/Crop;

    move-result-object v0

    invoke-direct {v3, v0, p0}, Lclarifai2/dto/input/AutoValue_ClarifaiVideo;-><init>(Lclarifai2/dto/input/Crop;Ljava/net/URL;)V

    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;-><init>(Ljava/lang/String;Ljava/util/Date;Lclarifai2/dto/input/ClarifaiImage;Lcom/google/gson/JsonObject;Ljava/util/List;Lclarifai2/dto/PointF;)V

    return-object v7
.end method


# virtual methods
.method abstract _metadata()Lcom/google/gson/JsonObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract concepts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract createdAt()Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract geo()Lclarifai2/dto/PointF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract image()Lclarifai2/dto/input/ClarifaiImage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final metadata()Lcom/google/gson/JsonObject;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 145
    invoke-virtual {p0}, Lclarifai2/dto/input/ClarifaiInput;->_metadata()Lcom/google/gson/JsonObject;

    move-result-object p0

    invoke-static {p0}, Lclarifai2/internal/InternalUtil;->jsonDeepCopy(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method public abstract withConcepts(Ljava/util/List;)Lclarifai2/dto/input/ClarifaiInput;
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
.end method

.method public final varargs withConcepts([Lclarifai2/dto/prediction/Concept;)Lclarifai2/dto/input/ClarifaiInput;
    .locals 0
    .param p1    # [Lclarifai2/dto/prediction/Concept;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 196
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lclarifai2/dto/input/ClarifaiInput;->withConcepts(Ljava/util/List;)Lclarifai2/dto/input/ClarifaiInput;

    move-result-object p0

    return-object p0
.end method

.method public final withGeo(Lclarifai2/dto/PointF;)Lclarifai2/dto/input/ClarifaiInput;
    .locals 8
    .param p1    # Lclarifai2/dto/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 174
    new-instance v7, Lclarifai2/dto/input/AutoValue_ClarifaiInput;

    invoke-virtual {p0}, Lclarifai2/dto/input/ClarifaiInput;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lclarifai2/dto/input/ClarifaiInput;->createdAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lclarifai2/dto/input/ClarifaiInput;->image()Lclarifai2/dto/input/ClarifaiImage;

    move-result-object v3

    invoke-virtual {p0}, Lclarifai2/dto/input/ClarifaiInput;->metadata()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {p0}, Lclarifai2/dto/input/ClarifaiInput;->concepts()Ljava/util/List;

    move-result-object v5

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;-><init>(Ljava/lang/String;Ljava/util/Date;Lclarifai2/dto/input/ClarifaiImage;Lcom/google/gson/JsonObject;Ljava/util/List;Lclarifai2/dto/PointF;)V

    return-object v7
.end method

.method public final withID(Ljava/lang/String;)Lclarifai2/dto/input/ClarifaiInput;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 166
    invoke-virtual {p0, p1}, Lclarifai2/dto/input/ClarifaiInput;->withId(Ljava/lang/String;)Lclarifai2/dto/input/ClarifaiInput;

    move-result-object p0

    return-object p0
.end method

.method abstract withId(Ljava/lang/String;)Lclarifai2/dto/input/ClarifaiInput;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final withMetadata(Lcom/google/gson/JsonObject;)Lclarifai2/dto/input/ClarifaiInput;
    .locals 8
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 182
    invoke-static {p1}, Lclarifai2/internal/InternalUtil;->assertMetadataHasNoNulls(Lcom/google/gson/JsonObject;)V

    .line 183
    new-instance v7, Lclarifai2/dto/input/AutoValue_ClarifaiInput;

    invoke-virtual {p0}, Lclarifai2/dto/input/ClarifaiInput;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lclarifai2/dto/input/ClarifaiInput;->createdAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lclarifai2/dto/input/ClarifaiInput;->image()Lclarifai2/dto/input/ClarifaiImage;

    move-result-object v3

    invoke-virtual {p0}, Lclarifai2/dto/input/ClarifaiInput;->concepts()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0}, Lclarifai2/dto/input/ClarifaiInput;->geo()Lclarifai2/dto/PointF;

    move-result-object v6

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lclarifai2/dto/input/AutoValue_ClarifaiInput;-><init>(Ljava/lang/String;Ljava/util/Date;Lclarifai2/dto/input/ClarifaiImage;Lcom/google/gson/JsonObject;Ljava/util/List;Lclarifai2/dto/PointF;)V

    return-object v7
.end method
