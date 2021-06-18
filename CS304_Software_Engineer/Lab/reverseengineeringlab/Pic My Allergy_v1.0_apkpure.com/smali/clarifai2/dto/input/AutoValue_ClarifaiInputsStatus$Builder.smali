.class final Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus$Builder;
.super Ljava/lang/Object;
.source "AutoValue_ClarifaiInputsStatus.java"

# interfaces
.implements Lclarifai2/dto/input/ClarifaiInputsStatus$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private errors:Ljava/lang/Integer;

.field private processed:Ljava/lang/Integer;

.field private toProcess:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lclarifai2/dto/input/ClarifaiInputsStatus;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInputsStatus;->processed()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus$Builder;->processed:Ljava/lang/Integer;

    .line 84
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInputsStatus;->toProcess()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus$Builder;->toProcess:Ljava/lang/Integer;

    .line 85
    invoke-virtual {p1}, Lclarifai2/dto/input/ClarifaiInputsStatus;->errors()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus$Builder;->errors:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public build()Lclarifai2/dto/input/ClarifaiInputsStatus;
    .locals 4

    const-string v0, ""

    .line 105
    iget-object v1, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus$Builder;->processed:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " processed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_0
    iget-object v1, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus$Builder;->toProcess:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " toProcess"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_1
    iget-object v1, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus$Builder;->errors:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " errors"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 115
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing required properties:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    :cond_3
    new-instance v0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;

    iget-object v1, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus$Builder;->processed:Ljava/lang/Integer;

    .line 118
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus$Builder;->toProcess:Ljava/lang/Integer;

    .line 119
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object p0, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus$Builder;->errors:Ljava/lang/Integer;

    .line 120
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus;-><init>(IIILclarifai2/dto/input/AutoValue_ClarifaiInputsStatus$1;)V

    return-object v0
.end method

.method public errors(I)Lclarifai2/dto/input/ClarifaiInputsStatus$Builder;
    .locals 0

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus$Builder;->errors:Ljava/lang/Integer;

    return-object p0
.end method

.method public processed(I)Lclarifai2/dto/input/ClarifaiInputsStatus$Builder;
    .locals 0

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus$Builder;->processed:Ljava/lang/Integer;

    return-object p0
.end method

.method public toProcess(I)Lclarifai2/dto/input/ClarifaiInputsStatus$Builder;
    .locals 0

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lclarifai2/dto/input/AutoValue_ClarifaiInputsStatus$Builder;->toProcess:Ljava/lang/Integer;

    return-object p0
.end method
