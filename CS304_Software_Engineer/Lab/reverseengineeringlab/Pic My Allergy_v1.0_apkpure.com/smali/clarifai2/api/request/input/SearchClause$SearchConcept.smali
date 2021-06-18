.class Lclarifai2/api/request/input/SearchClause$SearchConcept;
.super Lclarifai2/api/request/input/SearchClause;
.source "SearchClause.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/api/request/input/SearchClause$SearchConcept$Adapter;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/api/request/input/SearchClause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchConcept"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/api/request/input/SearchClause$SearchConcept$Adapter;
    }
.end annotation


# instance fields
.field private final concept:Lclarifai2/dto/prediction/Concept;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final owningObjectName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lclarifai2/dto/prediction/Concept;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lclarifai2/dto/prediction/Concept;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, v0}, Lclarifai2/api/request/input/SearchClause;-><init>(Lclarifai2/api/request/input/SearchClause$1;)V

    .line 221
    iput-object p1, p0, Lclarifai2/api/request/input/SearchClause$SearchConcept;->owningObjectName:Ljava/lang/String;

    .line 222
    iput-object p2, p0, Lclarifai2/api/request/input/SearchClause$SearchConcept;->concept:Lclarifai2/dto/prediction/Concept;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lclarifai2/dto/prediction/Concept;Lclarifai2/api/request/input/SearchClause$1;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1, p2}, Lclarifai2/api/request/input/SearchClause$SearchConcept;-><init>(Ljava/lang/String;Lclarifai2/dto/prediction/Concept;)V

    return-void
.end method

.method static synthetic access$1000(Lclarifai2/api/request/input/SearchClause$SearchConcept;)Ljava/lang/String;
    .locals 0

    .line 216
    iget-object p0, p0, Lclarifai2/api/request/input/SearchClause$SearchConcept;->owningObjectName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lclarifai2/api/request/input/SearchClause$SearchConcept;)Lclarifai2/dto/prediction/Concept;
    .locals 0

    .line 216
    iget-object p0, p0, Lclarifai2/api/request/input/SearchClause$SearchConcept;->concept:Lclarifai2/dto/prediction/Concept;

    return-object p0
.end method
