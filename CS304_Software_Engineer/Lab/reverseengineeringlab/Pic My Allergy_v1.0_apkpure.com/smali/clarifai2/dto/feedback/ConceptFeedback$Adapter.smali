.class Lclarifai2/dto/feedback/ConceptFeedback$Adapter;
.super Lclarifai2/internal/JSONAdapterFactory;
.source "ConceptFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/dto/feedback/ConceptFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lclarifai2/internal/JSONAdapterFactory<",
        "Lclarifai2/dto/feedback/ConceptFeedback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
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
            "Lclarifai2/dto/feedback/ConceptFeedback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 50
    new-instance v0, Lclarifai2/dto/feedback/ConceptFeedback$Adapter$2;

    invoke-direct {v0, p0}, Lclarifai2/dto/feedback/ConceptFeedback$Adapter$2;-><init>(Lclarifai2/dto/feedback/ConceptFeedback$Adapter;)V

    return-object v0
.end method

.method protected serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
            "Lclarifai2/dto/feedback/ConceptFeedback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 35
    new-instance v0, Lclarifai2/dto/feedback/ConceptFeedback$Adapter$1;

    invoke-direct {v0, p0}, Lclarifai2/dto/feedback/ConceptFeedback$Adapter$1;-><init>(Lclarifai2/dto/feedback/ConceptFeedback$Adapter;)V

    return-object v0
.end method

.method protected typeToken()Lcom/google/gson/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/reflect/TypeToken<",
            "Lclarifai2/dto/feedback/ConceptFeedback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 67
    new-instance v0, Lclarifai2/dto/feedback/ConceptFeedback$Adapter$3;

    invoke-direct {v0, p0}, Lclarifai2/dto/feedback/ConceptFeedback$Adapter$3;-><init>(Lclarifai2/dto/feedback/ConceptFeedback$Adapter;)V

    return-object v0
.end method
