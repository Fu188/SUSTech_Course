.class public final enum Lclarifai2/dto/Radius$Unit;
.super Ljava/lang/Enum;
.source "Radius.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/dto/Radius;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lclarifai2/dto/Radius$Unit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lclarifai2/dto/Radius$Unit;

.field public static final enum DEGREE:Lclarifai2/dto/Radius$Unit;

.field public static final enum KILOMETER:Lclarifai2/dto/Radius$Unit;

.field public static final enum MILE:Lclarifai2/dto/Radius$Unit;

.field public static final enum RADIAN:Lclarifai2/dto/Radius$Unit;


# instance fields
.field private final str:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    new-instance v0, Lclarifai2/dto/Radius$Unit;

    const-string v1, "MILE"

    const-string v2, "withinMiles"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lclarifai2/dto/Radius$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lclarifai2/dto/Radius$Unit;->MILE:Lclarifai2/dto/Radius$Unit;

    .line 30
    new-instance v0, Lclarifai2/dto/Radius$Unit;

    const-string v1, "KILOMETER"

    const-string v2, "withinKilometers"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lclarifai2/dto/Radius$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lclarifai2/dto/Radius$Unit;->KILOMETER:Lclarifai2/dto/Radius$Unit;

    .line 31
    new-instance v0, Lclarifai2/dto/Radius$Unit;

    const-string v1, "DEGREE"

    const-string v2, "withinDegrees"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lclarifai2/dto/Radius$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lclarifai2/dto/Radius$Unit;->DEGREE:Lclarifai2/dto/Radius$Unit;

    .line 32
    new-instance v0, Lclarifai2/dto/Radius$Unit;

    const-string v1, "RADIAN"

    const-string v2, "withinRadians"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lclarifai2/dto/Radius$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lclarifai2/dto/Radius$Unit;->RADIAN:Lclarifai2/dto/Radius$Unit;

    const/4 v0, 0x4

    .line 28
    new-array v0, v0, [Lclarifai2/dto/Radius$Unit;

    sget-object v1, Lclarifai2/dto/Radius$Unit;->MILE:Lclarifai2/dto/Radius$Unit;

    aput-object v1, v0, v3

    sget-object v1, Lclarifai2/dto/Radius$Unit;->KILOMETER:Lclarifai2/dto/Radius$Unit;

    aput-object v1, v0, v4

    sget-object v1, Lclarifai2/dto/Radius$Unit;->DEGREE:Lclarifai2/dto/Radius$Unit;

    aput-object v1, v0, v5

    sget-object v1, Lclarifai2/dto/Radius$Unit;->RADIAN:Lclarifai2/dto/Radius$Unit;

    aput-object v1, v0, v6

    sput-object v0, Lclarifai2/dto/Radius$Unit;->$VALUES:[Lclarifai2/dto/Radius$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lclarifai2/dto/Radius$Unit;->str:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lclarifai2/dto/Radius$Unit;
    .locals 1

    .line 28
    const-class v0, Lclarifai2/dto/Radius$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lclarifai2/dto/Radius$Unit;

    return-object p0
.end method

.method public static values()[Lclarifai2/dto/Radius$Unit;
    .locals 1

    .line 28
    sget-object v0, Lclarifai2/dto/Radius$Unit;->$VALUES:[Lclarifai2/dto/Radius$Unit;

    invoke-virtual {v0}, [Lclarifai2/dto/Radius$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lclarifai2/dto/Radius$Unit;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lclarifai2/dto/Radius$Unit;->str:Ljava/lang/String;

    return-object p0
.end method
