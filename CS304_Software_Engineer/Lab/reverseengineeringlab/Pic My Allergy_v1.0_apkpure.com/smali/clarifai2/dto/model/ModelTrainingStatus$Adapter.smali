.class Lclarifai2/dto/model/ModelTrainingStatus$Adapter;
.super Lclarifai2/internal/JSONAdapterFactory;
.source "ModelTrainingStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/dto/model/ModelTrainingStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/internal/JSONAdapterFactory<",
        "Lclarifai2/dto/model/ModelTrainingStatus;",
        ">;"
    }
.end annotation


# static fields
.field static final codeToStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lclarifai2/dto/model/ModelTrainingStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 82
    invoke-static {}, Lclarifai2/dto/model/ModelTrainingStatus;->values()[Lclarifai2/dto/model/ModelTrainingStatus;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lclarifai2/dto/model/ModelTrainingStatus$Adapter;->codeToStatus:Ljava/util/Map;

    .line 84
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 85
    sget-object v4, Lclarifai2/dto/model/ModelTrainingStatus$Adapter;->codeToStatus:Ljava/util/Map;

    invoke-static {v3}, Lclarifai2/dto/model/ModelTrainingStatus;->access$000(Lclarifai2/dto/model/ModelTrainingStatus;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lclarifai2/dto/model/ModelTrainingStatus$Adapter;->codeToStatus:Ljava/util/Map;

    .line 87
    invoke-static {v3}, Lclarifai2/dto/model/ModelTrainingStatus;->access$000(Lclarifai2/dto/model/ModelTrainingStatus;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " have the same statusCode of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {v3}, Lclarifai2/dto/model/ModelTrainingStatus;->access$000(Lclarifai2/dto/model/ModelTrainingStatus;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    sget-object v4, Lclarifai2/dto/model/ModelTrainingStatus$Adapter;->codeToStatus:Ljava/util/Map;

    invoke-static {v3}, Lclarifai2/dto/model/ModelTrainingStatus;->access$000(Lclarifai2/dto/model/ModelTrainingStatus;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lclarifai2/internal/JSONAdapterFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected deserializer()Lclarifai2/internal/JSONAdapterFactory$Deserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONAdapterFactory$Deserializer<",
            "Lclarifai2/dto/model/ModelTrainingStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 96
    new-instance v0, Lclarifai2/dto/model/ModelTrainingStatus$Adapter$1;

    invoke-direct {v0, p0}, Lclarifai2/dto/model/ModelTrainingStatus$Adapter$1;-><init>(Lclarifai2/dto/model/ModelTrainingStatus$Adapter;)V

    return-object v0
.end method

.method protected typeToken()Lcom/google/gson/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/reflect/TypeToken<",
            "Lclarifai2/dto/model/ModelTrainingStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 116
    new-instance v0, Lclarifai2/dto/model/ModelTrainingStatus$Adapter$2;

    invoke-direct {v0, p0}, Lclarifai2/dto/model/ModelTrainingStatus$Adapter$2;-><init>(Lclarifai2/dto/model/ModelTrainingStatus$Adapter;)V

    return-object v0
.end method
