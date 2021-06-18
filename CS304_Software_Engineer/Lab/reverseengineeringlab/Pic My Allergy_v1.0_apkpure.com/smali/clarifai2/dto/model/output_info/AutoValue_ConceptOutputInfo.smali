.class final Lclarifai2/dto/model/output_info/AutoValue_ConceptOutputInfo;
.super Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;
.source "AutoValue_ConceptOutputInfo.java"


# direct methods
.method constructor <init>(Ljava/util/List;ZZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lclarifai2/dto/model/output_info/$AutoValue_ConceptOutputInfo;-><init>(Ljava/util/List;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method final withAreConceptsMutuallyExclusive(Z)Lclarifai2/dto/model/output_info/ConceptOutputInfo;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 17
    new-instance v0, Lclarifai2/dto/model/output_info/AutoValue_ConceptOutputInfo;

    invoke-virtual {p0}, Lclarifai2/dto/model/output_info/AutoValue_ConceptOutputInfo;->concepts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lclarifai2/dto/model/output_info/AutoValue_ConceptOutputInfo;->isEnvironmentClosed()Z

    move-result v2

    invoke-virtual {p0}, Lclarifai2/dto/model/output_info/AutoValue_ConceptOutputInfo;->language()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p1, v2, p0}, Lclarifai2/dto/model/output_info/AutoValue_ConceptOutputInfo;-><init>(Ljava/util/List;ZZLjava/lang/String;)V

    return-object v0
.end method

.method final withIsEnvironmentClosed(Z)Lclarifai2/dto/model/output_info/ConceptOutputInfo;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    new-instance v0, Lclarifai2/dto/model/output_info/AutoValue_ConceptOutputInfo;

    invoke-virtual {p0}, Lclarifai2/dto/model/output_info/AutoValue_ConceptOutputInfo;->concepts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lclarifai2/dto/model/output_info/AutoValue_ConceptOutputInfo;->areConceptsMutuallyExclusive()Z

    move-result v2

    invoke-virtual {p0}, Lclarifai2/dto/model/output_info/AutoValue_ConceptOutputInfo;->language()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Lclarifai2/dto/model/output_info/AutoValue_ConceptOutputInfo;-><init>(Ljava/util/List;ZZLjava/lang/String;)V

    return-object v0
.end method
