.class public final Lclarifai2/api/ClarifaiToken;
.super Ljava/lang/Object;
.source "ClarifaiToken.java"


# instance fields
.field private final accessToken:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final expiresAt:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lclarifai2/api/ClarifaiToken;->accessToken:Ljava/lang/String;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr p2, v2

    add-long/2addr v0, p2

    iput-wide v0, p0, Lclarifai2/api/ClarifaiToken;->expiresAt:J

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 18
    iget-object p0, p0, Lclarifai2/api/ClarifaiToken;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public getExpiresAt()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lclarifai2/api/ClarifaiToken;->expiresAt:J

    return-wide v0
.end method
