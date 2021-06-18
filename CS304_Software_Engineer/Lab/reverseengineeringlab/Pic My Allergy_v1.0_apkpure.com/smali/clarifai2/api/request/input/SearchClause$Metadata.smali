.class Lclarifai2/api/request/input/SearchClause$Metadata;
.super Lclarifai2/api/request/input/SearchClause;
.source "SearchClause.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/api/request/input/SearchClause$Metadata$Adapter;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/api/request/input/SearchClause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Metadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/api/request/input/SearchClause$Metadata$Adapter;
    }
.end annotation


# instance fields
.field private final metadata:Lcom/google/gson/JsonObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 1
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, v0}, Lclarifai2/api/request/input/SearchClause;-><init>(Lclarifai2/api/request/input/SearchClause$1;)V

    .line 121
    iput-object p1, p0, Lclarifai2/api/request/input/SearchClause$Metadata;->metadata:Lcom/google/gson/JsonObject;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/JsonObject;Lclarifai2/api/request/input/SearchClause$1;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lclarifai2/api/request/input/SearchClause$Metadata;-><init>(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method static synthetic access$700(Lclarifai2/api/request/input/SearchClause$Metadata;)Lcom/google/gson/JsonObject;
    .locals 0

    .line 117
    iget-object p0, p0, Lclarifai2/api/request/input/SearchClause$Metadata;->metadata:Lcom/google/gson/JsonObject;

    return-object p0
.end method
