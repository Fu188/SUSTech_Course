.class final Lclarifai2/dto/prediction/AutoValue_Unknown;
.super Lclarifai2/dto/prediction/Unknown;
.source "AutoValue_Unknown.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lclarifai2/dto/prediction/Unknown;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 24
    :cond_0
    instance-of p0, p1, Lclarifai2/dto/prediction/Unknown;

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Unknown{}"

    return-object p0
.end method
