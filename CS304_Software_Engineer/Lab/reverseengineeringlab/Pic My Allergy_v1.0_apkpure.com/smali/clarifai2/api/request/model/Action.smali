.class public final enum Lclarifai2/api/request/model/Action;
.super Ljava/lang/Enum;
.source "Action.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/api/request/model/Action$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/api/request/model/Action$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lclarifai2/api/request/model/Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lclarifai2/api/request/model/Action;

.field public static final enum MERGE:Lclarifai2/api/request/model/Action;

.field public static final enum OVERWRITE:Lclarifai2/api/request/model/Action;

.field public static final enum REMOVE:Lclarifai2/api/request/model/Action;


# instance fields
.field private value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 20
    new-instance v0, Lclarifai2/api/request/model/Action;

    const-string v1, "MERGE"

    const-string v2, "merge"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lclarifai2/api/request/model/Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lclarifai2/api/request/model/Action;->MERGE:Lclarifai2/api/request/model/Action;

    .line 24
    new-instance v0, Lclarifai2/api/request/model/Action;

    const-string v1, "OVERWRITE"

    const-string v2, "overwrite"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lclarifai2/api/request/model/Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lclarifai2/api/request/model/Action;->OVERWRITE:Lclarifai2/api/request/model/Action;

    .line 28
    new-instance v0, Lclarifai2/api/request/model/Action;

    const-string v1, "REMOVE"

    const-string v2, "remove"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lclarifai2/api/request/model/Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lclarifai2/api/request/model/Action;->REMOVE:Lclarifai2/api/request/model/Action;

    const/4 v0, 0x3

    .line 13
    new-array v0, v0, [Lclarifai2/api/request/model/Action;

    sget-object v1, Lclarifai2/api/request/model/Action;->MERGE:Lclarifai2/api/request/model/Action;

    aput-object v1, v0, v3

    sget-object v1, Lclarifai2/api/request/model/Action;->OVERWRITE:Lclarifai2/api/request/model/Action;

    aput-object v1, v0, v4

    sget-object v1, Lclarifai2/api/request/model/Action;->REMOVE:Lclarifai2/api/request/model/Action;

    aput-object v1, v0, v5

    sput-object v0, Lclarifai2/api/request/model/Action;->$VALUES:[Lclarifai2/api/request/model/Action;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lclarifai2/api/request/model/Action;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lclarifai2/api/request/model/Action;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lclarifai2/api/request/model/Action;->value:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lclarifai2/api/request/model/Action;
    .locals 1

    .line 13
    const-class v0, Lclarifai2/api/request/model/Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lclarifai2/api/request/model/Action;

    return-object p0
.end method

.method public static values()[Lclarifai2/api/request/model/Action;
    .locals 1

    .line 13
    sget-object v0, Lclarifai2/api/request/model/Action;->$VALUES:[Lclarifai2/api/request/model/Action;

    invoke-virtual {v0}, [Lclarifai2/api/request/model/Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lclarifai2/api/request/model/Action;

    return-object v0
.end method
