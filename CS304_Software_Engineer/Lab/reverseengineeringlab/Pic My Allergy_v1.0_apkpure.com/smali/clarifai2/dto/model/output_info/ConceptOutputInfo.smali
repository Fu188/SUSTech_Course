.class public abstract Lclarifai2/dto/model/output_info/ConceptOutputInfo;
.super Lclarifai2/dto/model/output_info/OutputInfo;
.source "ConceptOutputInfo.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/model/output_info/ConceptOutputInfo$Adapter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lclarifai2/dto/model/output_info/OutputInfo;-><init>()V

    return-void
.end method

.method public static forConcepts(Ljava/util/List;)Lclarifai2/dto/model/output_info/ConceptOutputInfo;
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;)",
            "Lclarifai2/dto/model/output_info/ConceptOutputInfo;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    new-instance v0, Lclarifai2/dto/model/output_info/AutoValue_ConceptOutputInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v1, v2}, Lclarifai2/dto/model/output_info/AutoValue_ConceptOutputInfo;-><init>(Ljava/util/List;ZZLjava/lang/String;)V

    return-object v0
.end method

.method public static varargs forConcepts([Lclarifai2/dto/prediction/Concept;)Lclarifai2/dto/model/output_info/ConceptOutputInfo;
    .locals 0
    .param p0    # [Lclarifai2/dto/prediction/Concept;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lclarifai2/dto/model/output_info/ConceptOutputInfo;->forConcepts(Ljava/util/List;)Lclarifai2/dto/model/output_info/ConceptOutputInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final areConceptsMutuallyExclusive(Z)Lclarifai2/dto/model/output_info/ConceptOutputInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lclarifai2/dto/model/output_info/ConceptOutputInfo;->withAreConceptsMutuallyExclusive(Z)Lclarifai2/dto/model/output_info/ConceptOutputInfo;

    move-result-object p0

    return-object p0
.end method

.method public abstract areConceptsMutuallyExclusive()Z
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final isEnvironmentClosed(Z)Lclarifai2/dto/model/output_info/ConceptOutputInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lclarifai2/dto/model/output_info/ConceptOutputInfo;->withIsEnvironmentClosed(Z)Lclarifai2/dto/model/output_info/ConceptOutputInfo;

    move-result-object p0

    return-object p0
.end method

.method public abstract isEnvironmentClosed()Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract language()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method abstract withAreConceptsMutuallyExclusive(Z)Lclarifai2/dto/model/output_info/ConceptOutputInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method abstract withIsEnvironmentClosed(Z)Lclarifai2/dto/model/output_info/ConceptOutputInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final withLanguage(Ljava/lang/String;)Lclarifai2/dto/model/output_info/ConceptOutputInfo;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    new-instance v0, Lclarifai2/dto/model/output_info/AutoValue_ConceptOutputInfo;

    invoke-virtual {p0}, Lclarifai2/dto/model/output_info/ConceptOutputInfo;->concepts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lclarifai2/dto/model/output_info/ConceptOutputInfo;->areConceptsMutuallyExclusive()Z

    move-result v2

    invoke-virtual {p0}, Lclarifai2/dto/model/output_info/ConceptOutputInfo;->isEnvironmentClosed()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0, p1}, Lclarifai2/dto/model/output_info/AutoValue_ConceptOutputInfo;-><init>(Ljava/util/List;ZZLjava/lang/String;)V

    return-object v0
.end method
