.class public final enum Lclarifai2/dto/model/ModelTrainingStatus;
.super Ljava/lang/Enum;
.source "ModelTrainingStatus.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/model/ModelTrainingStatus$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/model/ModelTrainingStatus$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lclarifai2/dto/model/ModelTrainingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lclarifai2/dto/model/ModelTrainingStatus;

.field public static final enum MODEL_TRAINING_NO_DATA:Lclarifai2/dto/model/ModelTrainingStatus;

.field public static final enum MODEL_TRAINING_ONE_VS_N_SINGLE_CLASS:Lclarifai2/dto/model/ModelTrainingStatus;

.field public static final enum MODEL_TRAINING_TIMED_OUT:Lclarifai2/dto/model/ModelTrainingStatus;

.field public static final enum MODEL_TRAINING_UNKNOWN_ERROR:Lclarifai2/dto/model/ModelTrainingStatus;

.field public static final enum MODEL_TRAINING_WAITING_ERROR:Lclarifai2/dto/model/ModelTrainingStatus;

.field public static final enum NOT_YET_TRAINED:Lclarifai2/dto/model/ModelTrainingStatus;

.field public static final enum NO_POSITIVE_EXAMPLES:Lclarifai2/dto/model/ModelTrainingStatus;

.field public static final enum TRAINED:Lclarifai2/dto/model/ModelTrainingStatus;

.field public static final enum TRAINING_IN_PROGRESS:Lclarifai2/dto/model/ModelTrainingStatus;

.field public static final enum TRAINING_QUEUED:Lclarifai2/dto/model/ModelTrainingStatus;


# instance fields
.field private final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 23
    new-instance v0, Lclarifai2/dto/model/ModelTrainingStatus;

    const-string v1, "TRAINED"

    const/4 v2, 0x0

    const/16 v3, 0x526c

    invoke-direct {v0, v1, v2, v3}, Lclarifai2/dto/model/ModelTrainingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lclarifai2/dto/model/ModelTrainingStatus;->TRAINED:Lclarifai2/dto/model/ModelTrainingStatus;

    .line 27
    new-instance v0, Lclarifai2/dto/model/ModelTrainingStatus;

    const-string v1, "TRAINING_IN_PROGRESS"

    const/4 v3, 0x1

    const/16 v4, 0x526d

    invoke-direct {v0, v1, v3, v4}, Lclarifai2/dto/model/ModelTrainingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lclarifai2/dto/model/ModelTrainingStatus;->TRAINING_IN_PROGRESS:Lclarifai2/dto/model/ModelTrainingStatus;

    .line 32
    new-instance v0, Lclarifai2/dto/model/ModelTrainingStatus;

    const-string v1, "NOT_YET_TRAINED"

    const/4 v4, 0x2

    const/16 v5, 0x526e

    invoke-direct {v0, v1, v4, v5}, Lclarifai2/dto/model/ModelTrainingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lclarifai2/dto/model/ModelTrainingStatus;->NOT_YET_TRAINED:Lclarifai2/dto/model/ModelTrainingStatus;

    .line 36
    new-instance v0, Lclarifai2/dto/model/ModelTrainingStatus;

    const-string v1, "TRAINING_QUEUED"

    const/4 v5, 0x3

    const/16 v6, 0x526f

    invoke-direct {v0, v1, v5, v6}, Lclarifai2/dto/model/ModelTrainingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lclarifai2/dto/model/ModelTrainingStatus;->TRAINING_QUEUED:Lclarifai2/dto/model/ModelTrainingStatus;

    .line 40
    new-instance v0, Lclarifai2/dto/model/ModelTrainingStatus;

    const-string v1, "MODEL_TRAINING_NO_DATA"

    const/4 v6, 0x4

    const/16 v7, 0x5276

    invoke-direct {v0, v1, v6, v7}, Lclarifai2/dto/model/ModelTrainingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lclarifai2/dto/model/ModelTrainingStatus;->MODEL_TRAINING_NO_DATA:Lclarifai2/dto/model/ModelTrainingStatus;

    .line 45
    new-instance v0, Lclarifai2/dto/model/ModelTrainingStatus;

    const-string v1, "NO_POSITIVE_EXAMPLES"

    const/4 v7, 0x5

    const/16 v8, 0x5277

    invoke-direct {v0, v1, v7, v8}, Lclarifai2/dto/model/ModelTrainingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lclarifai2/dto/model/ModelTrainingStatus;->NO_POSITIVE_EXAMPLES:Lclarifai2/dto/model/ModelTrainingStatus;

    .line 49
    new-instance v0, Lclarifai2/dto/model/ModelTrainingStatus;

    const-string v1, "MODEL_TRAINING_ONE_VS_N_SINGLE_CLASS"

    const/4 v8, 0x6

    const/16 v9, 0x5278

    invoke-direct {v0, v1, v8, v9}, Lclarifai2/dto/model/ModelTrainingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lclarifai2/dto/model/ModelTrainingStatus;->MODEL_TRAINING_ONE_VS_N_SINGLE_CLASS:Lclarifai2/dto/model/ModelTrainingStatus;

    .line 53
    new-instance v0, Lclarifai2/dto/model/ModelTrainingStatus;

    const-string v1, "MODEL_TRAINING_TIMED_OUT"

    const/4 v9, 0x7

    const/16 v10, 0x5279

    invoke-direct {v0, v1, v9, v10}, Lclarifai2/dto/model/ModelTrainingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lclarifai2/dto/model/ModelTrainingStatus;->MODEL_TRAINING_TIMED_OUT:Lclarifai2/dto/model/ModelTrainingStatus;

    .line 57
    new-instance v0, Lclarifai2/dto/model/ModelTrainingStatus;

    const-string v1, "MODEL_TRAINING_WAITING_ERROR"

    const/16 v10, 0x8

    const/16 v11, 0x527a

    invoke-direct {v0, v1, v10, v11}, Lclarifai2/dto/model/ModelTrainingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lclarifai2/dto/model/ModelTrainingStatus;->MODEL_TRAINING_WAITING_ERROR:Lclarifai2/dto/model/ModelTrainingStatus;

    .line 61
    new-instance v0, Lclarifai2/dto/model/ModelTrainingStatus;

    const-string v1, "MODEL_TRAINING_UNKNOWN_ERROR"

    const/16 v11, 0x9

    const/16 v12, 0x527b

    invoke-direct {v0, v1, v11, v12}, Lclarifai2/dto/model/ModelTrainingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lclarifai2/dto/model/ModelTrainingStatus;->MODEL_TRAINING_UNKNOWN_ERROR:Lclarifai2/dto/model/ModelTrainingStatus;

    const/16 v0, 0xa

    .line 18
    new-array v0, v0, [Lclarifai2/dto/model/ModelTrainingStatus;

    sget-object v1, Lclarifai2/dto/model/ModelTrainingStatus;->TRAINED:Lclarifai2/dto/model/ModelTrainingStatus;

    aput-object v1, v0, v2

    sget-object v1, Lclarifai2/dto/model/ModelTrainingStatus;->TRAINING_IN_PROGRESS:Lclarifai2/dto/model/ModelTrainingStatus;

    aput-object v1, v0, v3

    sget-object v1, Lclarifai2/dto/model/ModelTrainingStatus;->NOT_YET_TRAINED:Lclarifai2/dto/model/ModelTrainingStatus;

    aput-object v1, v0, v4

    sget-object v1, Lclarifai2/dto/model/ModelTrainingStatus;->TRAINING_QUEUED:Lclarifai2/dto/model/ModelTrainingStatus;

    aput-object v1, v0, v5

    sget-object v1, Lclarifai2/dto/model/ModelTrainingStatus;->MODEL_TRAINING_NO_DATA:Lclarifai2/dto/model/ModelTrainingStatus;

    aput-object v1, v0, v6

    sget-object v1, Lclarifai2/dto/model/ModelTrainingStatus;->NO_POSITIVE_EXAMPLES:Lclarifai2/dto/model/ModelTrainingStatus;

    aput-object v1, v0, v7

    sget-object v1, Lclarifai2/dto/model/ModelTrainingStatus;->MODEL_TRAINING_ONE_VS_N_SINGLE_CLASS:Lclarifai2/dto/model/ModelTrainingStatus;

    aput-object v1, v0, v8

    sget-object v1, Lclarifai2/dto/model/ModelTrainingStatus;->MODEL_TRAINING_TIMED_OUT:Lclarifai2/dto/model/ModelTrainingStatus;

    aput-object v1, v0, v9

    sget-object v1, Lclarifai2/dto/model/ModelTrainingStatus;->MODEL_TRAINING_WAITING_ERROR:Lclarifai2/dto/model/ModelTrainingStatus;

    aput-object v1, v0, v10

    sget-object v1, Lclarifai2/dto/model/ModelTrainingStatus;->MODEL_TRAINING_UNKNOWN_ERROR:Lclarifai2/dto/model/ModelTrainingStatus;

    aput-object v1, v0, v11

    sput-object v0, Lclarifai2/dto/model/ModelTrainingStatus;->$VALUES:[Lclarifai2/dto/model/ModelTrainingStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lclarifai2/dto/model/ModelTrainingStatus;->statusCode:I

    return-void
.end method

.method static synthetic access$000(Lclarifai2/dto/model/ModelTrainingStatus;)I
    .locals 0

    .line 19
    iget p0, p0, Lclarifai2/dto/model/ModelTrainingStatus;->statusCode:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lclarifai2/dto/model/ModelTrainingStatus;
    .locals 1

    .line 18
    const-class v0, Lclarifai2/dto/model/ModelTrainingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lclarifai2/dto/model/ModelTrainingStatus;

    return-object p0
.end method

.method public static values()[Lclarifai2/dto/model/ModelTrainingStatus;
    .locals 1

    .line 18
    sget-object v0, Lclarifai2/dto/model/ModelTrainingStatus;->$VALUES:[Lclarifai2/dto/model/ModelTrainingStatus;

    invoke-virtual {v0}, [Lclarifai2/dto/model/ModelTrainingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lclarifai2/dto/model/ModelTrainingStatus;

    return-object v0
.end method


# virtual methods
.method public isError()Z
    .locals 2

    .line 70
    iget v0, p0, Lclarifai2/dto/model/ModelTrainingStatus;->statusCode:I

    const/16 v1, 0x5276

    if-gt v1, v0, :cond_0

    iget p0, p0, Lclarifai2/dto/model/ModelTrainingStatus;->statusCode:I

    const/16 v0, 0x527f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTerminalEvent()Z
    .locals 1

    .line 74
    invoke-virtual {p0}, Lclarifai2/dto/model/ModelTrainingStatus;->isError()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lclarifai2/dto/model/ModelTrainingStatus;->TRAINED:Lclarifai2/dto/model/ModelTrainingStatus;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
