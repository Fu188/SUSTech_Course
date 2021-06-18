.class public final enum Lclarifai2/dto/model/StatusCode;
.super Ljava/lang/Enum;
.source "StatusCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lclarifai2/dto/model/StatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lclarifai2/dto/model/StatusCode;

.field public static final enum INSUFFICIENT_SCOPES:Lclarifai2/dto/model/StatusCode;


# instance fields
.field private final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lclarifai2/dto/model/StatusCode;

    const-string v1, "INSUFFICIENT_SCOPES"

    const/4 v2, 0x0

    const/16 v3, 0x2aff

    invoke-direct {v0, v1, v2, v3}, Lclarifai2/dto/model/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lclarifai2/dto/model/StatusCode;->INSUFFICIENT_SCOPES:Lclarifai2/dto/model/StatusCode;

    const/4 v0, 0x1

    .line 3
    new-array v0, v0, [Lclarifai2/dto/model/StatusCode;

    sget-object v1, Lclarifai2/dto/model/StatusCode;->INSUFFICIENT_SCOPES:Lclarifai2/dto/model/StatusCode;

    aput-object v1, v0, v2

    sput-object v0, Lclarifai2/dto/model/StatusCode;->$VALUES:[Lclarifai2/dto/model/StatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lclarifai2/dto/model/StatusCode;->statusCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lclarifai2/dto/model/StatusCode;
    .locals 1

    .line 3
    const-class v0, Lclarifai2/dto/model/StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lclarifai2/dto/model/StatusCode;

    return-object p0
.end method

.method public static values()[Lclarifai2/dto/model/StatusCode;
    .locals 1

    .line 3
    sget-object v0, Lclarifai2/dto/model/StatusCode;->$VALUES:[Lclarifai2/dto/model/StatusCode;

    invoke-virtual {v0}, [Lclarifai2/dto/model/StatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lclarifai2/dto/model/StatusCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 20
    iget p0, p0, Lclarifai2/dto/model/StatusCode;->statusCode:I

    return p0
.end method
