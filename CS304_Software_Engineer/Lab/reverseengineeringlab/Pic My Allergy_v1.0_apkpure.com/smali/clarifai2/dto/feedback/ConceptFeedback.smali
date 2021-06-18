.class public abstract Lclarifai2/dto/feedback/ConceptFeedback;
.super Ljava/lang/Object;
.source "ConceptFeedback.java"

# interfaces
.implements Lclarifai2/dto/HasClarifaiID;


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/feedback/ConceptFeedback$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/feedback/ConceptFeedback$Adapter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forIdAndValue(Ljava/lang/String;Z)Lclarifai2/dto/feedback/ConceptFeedback;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    new-instance v0, Lclarifai2/dto/feedback/AutoValue_ConceptFeedback;

    invoke-direct {v0, p0, p1}, Lclarifai2/dto/feedback/AutoValue_ConceptFeedback;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public abstract value()Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
