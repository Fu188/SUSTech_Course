.class public abstract Lclarifai2/dto/ClarifaiStatus;
.super Ljava/lang/Object;
.source "ClarifaiStatus.java"


# annotations
.annotation runtime Lcom/google/gson/annotations/JsonAdapter;
    value = Lclarifai2/dto/ClarifaiStatus$Adapter;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclarifai2/dto/ClarifaiStatus$Adapter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mixedSuccess()Lclarifai2/dto/ClarifaiStatus;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 39
    new-instance v0, Lclarifai2/dto/AutoValue_ClarifaiStatus;

    const-string v1, "Mixed Success"

    const/4 v2, 0x0

    const/16 v3, 0x271a

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lclarifai2/dto/AutoValue_ClarifaiStatus;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static networkError(Ljava/io/IOException;)Lclarifai2/dto/ClarifaiStatus;
    .locals 4
    .param p0    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 48
    new-instance v0, Lclarifai2/dto/AutoValue_ClarifaiStatus;

    const-string v1, "Network error occurred"

    .line 52
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, p0}, Lclarifai2/dto/AutoValue_ClarifaiStatus;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static success()Lclarifai2/dto/ClarifaiStatus;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    new-instance v0, Lclarifai2/dto/AutoValue_ClarifaiStatus;

    const-string v1, "Ok"

    const/4 v2, 0x0

    const/16 v3, 0x2710

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lclarifai2/dto/AutoValue_ClarifaiStatus;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static unknown()Lclarifai2/dto/ClarifaiStatus;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 57
    new-instance v0, Lclarifai2/dto/AutoValue_ClarifaiStatus;

    const-string v1, "Unknown response"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v2, v1, v3}, Lclarifai2/dto/AutoValue_ClarifaiStatus;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract description()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract errorDetails()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract networkErrorOccurred()Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract statusCode()I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
