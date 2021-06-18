.class public final enum Lclarifai2/dto/model/ModelType;
.super Ljava/lang/Enum;
.source "ModelType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lclarifai2/dto/model/ModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lclarifai2/dto/model/ModelType;

.field public static final enum CLUSTER:Lclarifai2/dto/model/ModelType;

.field public static final enum COLOR:Lclarifai2/dto/model/ModelType;

.field public static final enum CONCEPT:Lclarifai2/dto/model/ModelType;

.field public static final enum DEMOGRAPHICS:Lclarifai2/dto/model/ModelType;

.field public static final enum EMBEDDING:Lclarifai2/dto/model/ModelType;

.field public static final enum FACE_DETECTION:Lclarifai2/dto/model/ModelType;

.field public static final enum FOCUS:Lclarifai2/dto/model/ModelType;

.field public static final enum LOGO:Lclarifai2/dto/model/ModelType;

.field public static final enum UNKNOWN:Lclarifai2/dto/model/ModelType;

.field public static final enum VIDEO:Lclarifai2/dto/model/ModelType;


# instance fields
.field private final infoType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lclarifai2/dto/model/output_info/OutputInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tagType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lclarifai2/dto/prediction/Prediction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final typeName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 28
    new-instance v6, Lclarifai2/dto/model/ModelType;

    const-string v1, "CONCEPT"

    const-string v3, "concept"

    const-class v4, Lclarifai2/dto/model/output_info/ConceptOutputInfo;

    const-class v5, Lclarifai2/dto/prediction/Concept;

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lclarifai2/dto/model/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v6, Lclarifai2/dto/model/ModelType;->CONCEPT:Lclarifai2/dto/model/ModelType;

    .line 33
    new-instance v0, Lclarifai2/dto/model/ModelType;

    const-string v8, "EMBEDDING"

    const-string v10, "embed"

    const-class v11, Lclarifai2/dto/model/output_info/EmbeddingOutputInfo;

    const-class v12, Lclarifai2/dto/prediction/Embedding;

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lclarifai2/dto/model/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lclarifai2/dto/model/ModelType;->EMBEDDING:Lclarifai2/dto/model/ModelType;

    .line 38
    new-instance v0, Lclarifai2/dto/model/ModelType;

    const-string v2, "COLOR"

    const-string v4, "color"

    const-class v5, Lclarifai2/dto/model/output_info/ColorOutputInfo;

    const-class v6, Lclarifai2/dto/prediction/Color;

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lclarifai2/dto/model/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lclarifai2/dto/model/ModelType;->COLOR:Lclarifai2/dto/model/ModelType;

    .line 43
    new-instance v0, Lclarifai2/dto/model/ModelType;

    const-string v8, "DEMOGRAPHICS"

    const-string v10, "facedetect"

    const-class v11, Lclarifai2/dto/model/output_info/DemographicsOutputInfo;

    const-class v12, Lclarifai2/dto/prediction/Region;

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lclarifai2/dto/model/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lclarifai2/dto/model/ModelType;->DEMOGRAPHICS:Lclarifai2/dto/model/ModelType;

    .line 48
    new-instance v0, Lclarifai2/dto/model/ModelType;

    const-string v2, "FACE_DETECTION"

    const-string v4, "facedetect"

    const-class v5, Lclarifai2/dto/model/output_info/FaceDetectionOutputInfo;

    const-class v6, Lclarifai2/dto/prediction/FaceDetection;

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lclarifai2/dto/model/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lclarifai2/dto/model/ModelType;->FACE_DETECTION:Lclarifai2/dto/model/ModelType;

    .line 53
    new-instance v0, Lclarifai2/dto/model/ModelType;

    const-string v8, "FOCUS"

    const-string v10, "blur"

    const-class v11, Lclarifai2/dto/model/output_info/FocusOutputInfo;

    const-class v12, Lclarifai2/dto/prediction/Focus;

    const/4 v9, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lclarifai2/dto/model/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lclarifai2/dto/model/ModelType;->FOCUS:Lclarifai2/dto/model/ModelType;

    .line 58
    new-instance v0, Lclarifai2/dto/model/ModelType;

    const-string v2, "CLUSTER"

    const-string v4, "cluster"

    const-class v5, Lclarifai2/dto/model/output_info/ClusterOutputInfo;

    const-class v6, Lclarifai2/dto/prediction/Cluster;

    const/4 v3, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lclarifai2/dto/model/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lclarifai2/dto/model/ModelType;->CLUSTER:Lclarifai2/dto/model/ModelType;

    .line 63
    new-instance v0, Lclarifai2/dto/model/ModelType;

    const-string v8, "LOGO"

    const-string v10, "logo"

    const-class v11, Lclarifai2/dto/model/output_info/DemographicsOutputInfo;

    const-class v12, Lclarifai2/dto/prediction/Logo;

    const/4 v9, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lclarifai2/dto/model/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lclarifai2/dto/model/ModelType;->LOGO:Lclarifai2/dto/model/ModelType;

    .line 68
    new-instance v0, Lclarifai2/dto/model/ModelType;

    const-string v2, "VIDEO"

    const-string v4, "video"

    const-class v5, Lclarifai2/dto/model/output_info/VideoOutputInfo;

    const-class v6, Lclarifai2/dto/prediction/Frame;

    const/16 v3, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lclarifai2/dto/model/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lclarifai2/dto/model/ModelType;->VIDEO:Lclarifai2/dto/model/ModelType;

    .line 73
    new-instance v0, Lclarifai2/dto/model/ModelType;

    const-string v8, "UNKNOWN"

    const-string v10, "unknown"

    const-class v11, Lclarifai2/dto/model/output_info/UnknownOutputInfo;

    const-class v12, Lclarifai2/dto/prediction/Unknown;

    const/16 v9, 0x9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lclarifai2/dto/model/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lclarifai2/dto/model/ModelType;->UNKNOWN:Lclarifai2/dto/model/ModelType;

    const/16 v0, 0xa

    .line 27
    new-array v0, v0, [Lclarifai2/dto/model/ModelType;

    sget-object v1, Lclarifai2/dto/model/ModelType;->CONCEPT:Lclarifai2/dto/model/ModelType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lclarifai2/dto/model/ModelType;->EMBEDDING:Lclarifai2/dto/model/ModelType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lclarifai2/dto/model/ModelType;->COLOR:Lclarifai2/dto/model/ModelType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lclarifai2/dto/model/ModelType;->DEMOGRAPHICS:Lclarifai2/dto/model/ModelType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lclarifai2/dto/model/ModelType;->FACE_DETECTION:Lclarifai2/dto/model/ModelType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lclarifai2/dto/model/ModelType;->FOCUS:Lclarifai2/dto/model/ModelType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lclarifai2/dto/model/ModelType;->CLUSTER:Lclarifai2/dto/model/ModelType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lclarifai2/dto/model/ModelType;->LOGO:Lclarifai2/dto/model/ModelType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lclarifai2/dto/model/ModelType;->VIDEO:Lclarifai2/dto/model/ModelType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lclarifai2/dto/model/ModelType;->UNKNOWN:Lclarifai2/dto/model/ModelType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lclarifai2/dto/model/ModelType;->$VALUES:[Lclarifai2/dto/model/ModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lclarifai2/dto/model/output_info/OutputInfo;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lclarifai2/dto/prediction/Prediction;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput-object p3, p0, Lclarifai2/dto/model/ModelType;->typeName:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lclarifai2/dto/model/ModelType;->infoType:Ljava/lang/Class;

    .line 90
    iput-object p5, p0, Lclarifai2/dto/model/ModelType;->tagType:Ljava/lang/Class;

    return-void
.end method

.method public static determineModelType(Lcom/google/gson/JsonElement;)Lclarifai2/dto/model/ModelType;
    .locals 6
    .param p0    # Lcom/google/gson/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v1, "type_ext"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-static {}, Lclarifai2/dto/model/ModelType;->values()[Lclarifai2/dto/model/ModelType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 97
    invoke-virtual {v4}, Lclarifai2/dto/model/ModelType;->typeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    sget-object v0, Lclarifai2/dto/model/ModelType;->CONCEPT:Lclarifai2/dto/model/ModelType;

    if-ne v4, v0, :cond_1

    const-string v0, "detection"

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object v4, Lclarifai2/dto/model/ModelType;->LOGO:Lclarifai2/dto/model/ModelType;

    :cond_0
    return-object v4

    :cond_1
    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_3
    sget-object p0, Lclarifai2/dto/model/ModelType;->UNKNOWN:Lclarifai2/dto/model/ModelType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lclarifai2/dto/model/ModelType;
    .locals 1

    .line 27
    const-class v0, Lclarifai2/dto/model/ModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lclarifai2/dto/model/ModelType;

    return-object p0
.end method

.method public static values()[Lclarifai2/dto/model/ModelType;
    .locals 1

    .line 27
    sget-object v0, Lclarifai2/dto/model/ModelType;->$VALUES:[Lclarifai2/dto/model/ModelType;

    invoke-virtual {v0}, [Lclarifai2/dto/model/ModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lclarifai2/dto/model/ModelType;

    return-object v0
.end method


# virtual methods
.method public infoType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lclarifai2/dto/model/output_info/OutputInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 113
    iget-object p0, p0, Lclarifai2/dto/model/ModelType;->infoType:Ljava/lang/Class;

    return-object p0
.end method

.method public predictionType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lclarifai2/dto/prediction/Prediction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 117
    iget-object p0, p0, Lclarifai2/dto/model/ModelType;->tagType:Ljava/lang/Class;

    return-object p0
.end method

.method public typeName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 109
    iget-object p0, p0, Lclarifai2/dto/model/ModelType;->typeName:Ljava/lang/String;

    return-object p0
.end method
