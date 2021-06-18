.class public final enum Lclarifai2/api/request/feedback/Feedback;
.super Ljava/lang/Enum;
.source "Feedback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lclarifai2/api/request/feedback/Feedback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lclarifai2/api/request/feedback/Feedback;

.field public static final enum ACCURATE:Lclarifai2/api/request/feedback/Feedback;

.field public static final enum FALSE_POSITIVE:Lclarifai2/api/request/feedback/Feedback;

.field public static final enum MISPLACED:Lclarifai2/api/request/feedback/Feedback;

.field public static final enum NOT_DETECTED:Lclarifai2/api/request/feedback/Feedback;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lclarifai2/api/request/feedback/Feedback;

    const-string v1, "ACCURATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lclarifai2/api/request/feedback/Feedback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lclarifai2/api/request/feedback/Feedback;->ACCURATE:Lclarifai2/api/request/feedback/Feedback;

    .line 5
    new-instance v0, Lclarifai2/api/request/feedback/Feedback;

    const-string v1, "MISPLACED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lclarifai2/api/request/feedback/Feedback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lclarifai2/api/request/feedback/Feedback;->MISPLACED:Lclarifai2/api/request/feedback/Feedback;

    .line 6
    new-instance v0, Lclarifai2/api/request/feedback/Feedback;

    const-string v1, "NOT_DETECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lclarifai2/api/request/feedback/Feedback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lclarifai2/api/request/feedback/Feedback;->NOT_DETECTED:Lclarifai2/api/request/feedback/Feedback;

    .line 7
    new-instance v0, Lclarifai2/api/request/feedback/Feedback;

    const-string v1, "FALSE_POSITIVE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lclarifai2/api/request/feedback/Feedback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lclarifai2/api/request/feedback/Feedback;->FALSE_POSITIVE:Lclarifai2/api/request/feedback/Feedback;

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lclarifai2/api/request/feedback/Feedback;

    sget-object v1, Lclarifai2/api/request/feedback/Feedback;->ACCURATE:Lclarifai2/api/request/feedback/Feedback;

    aput-object v1, v0, v2

    sget-object v1, Lclarifai2/api/request/feedback/Feedback;->MISPLACED:Lclarifai2/api/request/feedback/Feedback;

    aput-object v1, v0, v3

    sget-object v1, Lclarifai2/api/request/feedback/Feedback;->NOT_DETECTED:Lclarifai2/api/request/feedback/Feedback;

    aput-object v1, v0, v4

    sget-object v1, Lclarifai2/api/request/feedback/Feedback;->FALSE_POSITIVE:Lclarifai2/api/request/feedback/Feedback;

    aput-object v1, v0, v5

    sput-object v0, Lclarifai2/api/request/feedback/Feedback;->$VALUES:[Lclarifai2/api/request/feedback/Feedback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lclarifai2/api/request/feedback/Feedback;
    .locals 1

    .line 3
    const-class v0, Lclarifai2/api/request/feedback/Feedback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lclarifai2/api/request/feedback/Feedback;

    return-object p0
.end method

.method public static values()[Lclarifai2/api/request/feedback/Feedback;
    .locals 1

    .line 3
    sget-object v0, Lclarifai2/api/request/feedback/Feedback;->$VALUES:[Lclarifai2/api/request/feedback/Feedback;

    invoke-virtual {v0}, [Lclarifai2/api/request/feedback/Feedback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lclarifai2/api/request/feedback/Feedback;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lclarifai2/api/request/feedback/Feedback;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
