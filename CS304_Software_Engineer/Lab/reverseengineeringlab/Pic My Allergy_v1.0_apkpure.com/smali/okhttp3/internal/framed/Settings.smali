.class public final Lokhttp3/internal/framed/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field static final CLIENT_CERTIFICATE_VECTOR_SIZE:I = 0x8

.field static final COUNT:I = 0xa

.field static final CURRENT_CWND:I = 0x5

.field static final DEFAULT_INITIAL_WINDOW_SIZE:I = 0x10000

.field static final DOWNLOAD_BANDWIDTH:I = 0x2

.field static final DOWNLOAD_RETRANS_RATE:I = 0x6

.field static final ENABLE_PUSH:I = 0x2

.field static final FLAG_CLEAR_PREVIOUSLY_PERSISTED_SETTINGS:I = 0x1

.field static final FLOW_CONTROL_OPTIONS:I = 0xa

.field static final FLOW_CONTROL_OPTIONS_DISABLED:I = 0x1

.field static final HEADER_TABLE_SIZE:I = 0x1

.field static final INITIAL_WINDOW_SIZE:I = 0x7

.field static final MAX_CONCURRENT_STREAMS:I = 0x4

.field static final MAX_FRAME_SIZE:I = 0x5

.field static final MAX_HEADER_LIST_SIZE:I = 0x6

.field static final PERSISTED:I = 0x2

.field static final PERSIST_VALUE:I = 0x1

.field static final ROUND_TRIP_TIME:I = 0x3

.field static final UPLOAD_BANDWIDTH:I = 0x1


# instance fields
.field private persistValue:I

.field private persisted:I

.field private set:I

.field private final values:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 82
    new-array v0, v0, [I

    iput-object v0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lokhttp3/internal/framed/Settings;->persisted:I

    iput v0, p0, Lokhttp3/internal/framed/Settings;->persistValue:I

    iput v0, p0, Lokhttp3/internal/framed/Settings;->set:I

    .line 86
    iget-object p0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method flags(I)I
    .locals 1

    .line 125
    invoke-virtual {p0, p1}, Lokhttp3/internal/framed/Settings;->isPersisted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    invoke-virtual {p0, p1}, Lokhttp3/internal/framed/Settings;->persistValue(I)Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method get(I)I
    .locals 0

    .line 119
    iget-object p0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    aget p0, p0, p1

    return p0
.end method

.method getClientCertificateVectorSize(I)I
    .locals 2

    .line 204
    iget v0, p0, Lokhttp3/internal/framed/Settings;->set:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/16 p1, 0x8

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method getCurrentCwnd(I)I
    .locals 2

    .line 175
    iget v0, p0, Lokhttp3/internal/framed/Settings;->set:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 p1, 0x5

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method getDownloadBandwidth(I)I
    .locals 2

    .line 150
    iget v0, p0, Lokhttp3/internal/framed/Settings;->set:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 p1, 0x2

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method getDownloadRetransRate(I)I
    .locals 2

    .line 187
    iget v0, p0, Lokhttp3/internal/framed/Settings;->set:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 p1, 0x6

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method getEnablePush(Z)Z
    .locals 3

    .line 157
    iget v0, p0, Lokhttp3/internal/framed/Settings;->set:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 p1, 0x2

    aget p0, p0, p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getHeaderTableSize()I
    .locals 2

    .line 144
    iget v0, p0, Lokhttp3/internal/framed/Settings;->set:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method getInitialWindowSize(I)I
    .locals 2

    .line 198
    iget v0, p0, Lokhttp3/internal/framed/Settings;->set:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 p1, 0x7

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method getMaxConcurrentStreams(I)I
    .locals 2

    .line 169
    iget v0, p0, Lokhttp3/internal/framed/Settings;->set:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 p1, 0x4

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method getMaxFrameSize(I)I
    .locals 2

    .line 181
    iget v0, p0, Lokhttp3/internal/framed/Settings;->set:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 p1, 0x5

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method getMaxHeaderListSize(I)I
    .locals 2

    .line 193
    iget v0, p0, Lokhttp3/internal/framed/Settings;->set:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 p1, 0x6

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method getRoundTripTime(I)I
    .locals 2

    .line 163
    iget v0, p0, Lokhttp3/internal/framed/Settings;->set:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 p1, 0x3

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method getUploadBandwidth(I)I
    .locals 2

    .line 138
    iget v0, p0, Lokhttp3/internal/framed/Settings;->set:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 p1, 0x1

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method isFlowControlDisabled()Z
    .locals 2

    .line 210
    iget v0, p0, Lokhttp3/internal/framed/Settings;->set:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/16 v0, 0xa

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method isPersisted(I)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 226
    iget p0, p0, Lokhttp3/internal/framed/Settings;->persisted:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSet(I)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 114
    iget p0, p0, Lokhttp3/internal/framed/Settings;->set:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method merge(Lokhttp3/internal/framed/Settings;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 235
    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->flags(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->get(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method persistValue(I)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 220
    iget p0, p0, Lokhttp3/internal/framed/Settings;->persistValue:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method set(III)Lokhttp3/internal/framed/Settings;
    .locals 3

    .line 90
    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 95
    iget v1, p0, Lokhttp3/internal/framed/Settings;->set:I

    or-int/2addr v1, v0

    iput v1, p0, Lokhttp3/internal/framed/Settings;->set:I

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 97
    iget v1, p0, Lokhttp3/internal/framed/Settings;->persistValue:I

    or-int/2addr v1, v0

    iput v1, p0, Lokhttp3/internal/framed/Settings;->persistValue:I

    goto :goto_0

    .line 99
    :cond_1
    iget v1, p0, Lokhttp3/internal/framed/Settings;->persistValue:I

    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Lokhttp3/internal/framed/Settings;->persistValue:I

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    .line 102
    iget p2, p0, Lokhttp3/internal/framed/Settings;->persisted:I

    or-int/2addr p2, v0

    iput p2, p0, Lokhttp3/internal/framed/Settings;->persisted:I

    goto :goto_1

    .line 104
    :cond_2
    iget p2, p0, Lokhttp3/internal/framed/Settings;->persisted:I

    not-int v0, v0

    and-int/2addr p2, v0

    iput p2, p0, Lokhttp3/internal/framed/Settings;->persisted:I

    .line 107
    :goto_1
    iget-object p2, p0, Lokhttp3/internal/framed/Settings;->values:[I

    aput p3, p2, p1

    return-object p0
.end method

.method size()I
    .locals 0

    .line 132
    iget p0, p0, Lokhttp3/internal/framed/Settings;->set:I

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method
