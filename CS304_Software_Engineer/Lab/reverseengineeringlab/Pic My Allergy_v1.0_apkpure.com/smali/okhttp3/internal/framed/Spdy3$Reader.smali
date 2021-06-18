.class final Lokhttp3/internal/framed/Spdy3$Reader;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lokhttp3/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;Z)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    .line 114
    new-instance p1, Lokhttp3/internal/framed/NameValueBlockReader;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-direct {p1, v0}, Lokhttp3/internal/framed/NameValueBlockReader;-><init>(Lokio/BufferedSource;)V

    iput-object p1, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    .line 115
    iput-boolean p2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->client:Z

    return-void
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readGoAway(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-eq p3, v1, :cond_0

    const-string p0, "TYPE_GOAWAY length: %d != 8"

    .line 250
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {p0, p1}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 251
    :cond_0
    iget-object p3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    move-result p3

    const v1, 0x7fffffff

    and-int/2addr p3, v1

    .line 252
    iget-object p0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    move-result p0

    .line 253
    invoke-static {p0}, Lokhttp3/internal/framed/ErrorCode;->fromSpdyGoAway(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    .line 255
    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, p2

    invoke-static {p1, p3}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 257
    :cond_1
    sget-object p0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-interface {p1, p3, v1, p0}, Lokhttp3/internal/framed/FrameReader$Handler;->goAway(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V

    return-void
.end method

.method private readHeaders(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    iget-object p2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    const v0, 0x7fffffff

    and-int v4, p2, v0

    .line 228
    iget-object p0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {p0, p3}, Lokhttp3/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v6

    .line 229
    sget-object v7, Lokhttp3/internal/framed/HeadersMode;->SPDY_HEADERS:Lokhttp3/internal/framed/HeadersMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    return-void
.end method

.method private readPing(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    const-string p0, "TYPE_PING length: %d != 4"

    .line 243
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {p0, p1}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 244
    :cond_0
    iget-object p3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    move-result p3

    .line 245
    iget-boolean p0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->client:Z

    and-int/lit8 v1, p3, 0x1

    if-ne v1, v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, p2

    :goto_0
    if-ne p0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, p2

    .line 246
    :goto_1
    invoke-interface {p1, v0, p3, p2}, Lokhttp3/internal/framed/FrameReader$Handler;->ping(ZII)V

    return-void
.end method

.method private readRstStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-eq p3, v1, :cond_0

    const-string p0, "TYPE_RST_STREAM length: %d != 8"

    .line 215
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {p0, p1}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 216
    :cond_0
    iget-object p3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    move-result p3

    const v1, 0x7fffffff

    and-int/2addr p3, v1

    .line 217
    iget-object p0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    move-result p0

    .line 218
    invoke-static {p0}, Lokhttp3/internal/framed/ErrorCode;->fromSpdy3Rst(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    .line 220
    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, p2

    invoke-static {p1, p3}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 222
    :cond_1
    invoke-interface {p1, p3, v1}, Lokhttp3/internal/framed/FrameReader$Handler;->rstStream(ILokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method private readSettings(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    const/16 v1, 0x8

    mul-int/2addr v1, v0

    const/4 v2, 0x4

    add-int/2addr v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eq p3, v2, :cond_0

    const-string p0, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    const/4 p1, 0x2

    .line 263
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {p0, p1}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 265
    :cond_0
    new-instance p3, Lokhttp3/internal/framed/Settings;

    invoke-direct {p3}, Lokhttp3/internal/framed/Settings;-><init>()V

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 267
    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    .line 268
    iget-object v5, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v5

    const/high16 v6, -0x1000000

    and-int/2addr v6, v4

    ushr-int/lit8 v6, v6, 0x18

    const v7, 0xffffff

    and-int/2addr v4, v7

    .line 271
    invoke-virtual {p3, v4, v6, v5}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 p0, p2, 0x1

    if-eqz p0, :cond_2

    move v1, v3

    .line 274
    :cond_2
    invoke-interface {p1, v1, p3}, Lokhttp3/internal/framed/FrameReader$Handler;->settings(ZLokhttp3/internal/framed/Settings;)V

    return-void
.end method

.method private readSynReply(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int v5, v0, v1

    .line 209
    iget-object p0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {p0, p3}, Lokhttp3/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v7

    const/4 p0, 0x1

    and-int/2addr p2, p0

    if-eqz p2, :cond_0

    :goto_0
    move v4, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 211
    sget-object v8, Lokhttp3/internal/framed/HeadersMode;->SPDY_REPLY:Lokhttp3/internal/framed/HeadersMode;

    move-object v2, p1

    invoke-interface/range {v2 .. v8}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    return-void
.end method

.method private readSynStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 194
    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int v6, v0, v2

    and-int v7, v1, v2

    .line 197
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readShort()S

    .line 198
    iget-object p0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    add-int/lit8 p3, p3, -0xa

    invoke-virtual {p0, p3}, Lokhttp3/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v8

    and-int/lit8 p0, p2, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 p0, p2, 0x2

    if-eqz p0, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, p3

    .line 202
    :goto_1
    sget-object v9, Lokhttp3/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lokhttp3/internal/framed/HeadersMode;

    move-object v3, p1

    invoke-interface/range {v3 .. v9}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    return-void
.end method

.method private readWindowUpdate(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-eq p3, v1, :cond_0

    const-string p0, "TYPE_WINDOW_UPDATE length: %d != 8"

    .line 233
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {p0, p1}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 234
    :cond_0
    iget-object p3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    move-result p3

    .line 235
    iget-object p0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    move-result p0

    const v1, 0x7fffffff

    and-int/2addr p3, v1

    and-int/2addr p0, v1

    int-to-long v1, p0

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_1

    const-string p0, "windowSizeIncrement was 0"

    .line 238
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {p0, p1}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 239
    :cond_1
    invoke-interface {p1, p3, v1, v2}, Lokhttp3/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object p0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    invoke-virtual {p0}, Lokhttp3/internal/framed/NameValueBlockReader;->close()V

    return-void
.end method

.method public nextFrame(Lokhttp3/internal/framed/FrameReader$Handler;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 129
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 130
    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v3, -0x80000000

    and-int/2addr v3, v1

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    const/high16 v5, -0x1000000

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v2, v6

    if-eqz v3, :cond_2

    const/high16 v0, 0x7fff0000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    const v3, 0xffff

    and-int/2addr v1, v3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 144
    new-instance p0, Ljava/net/ProtocolException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "version != 3: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 181
    :pswitch_0
    iget-object p0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    int-to-long v0, v2

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    return v4

    .line 177
    :pswitch_1
    invoke-direct {p0, p1, v5, v2}, Lokhttp3/internal/framed/Spdy3$Reader;->readWindowUpdate(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    return v4

    .line 173
    :pswitch_2
    invoke-direct {p0, p1, v5, v2}, Lokhttp3/internal/framed/Spdy3$Reader;->readHeaders(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    return v4

    .line 169
    :pswitch_3
    invoke-direct {p0, p1, v5, v2}, Lokhttp3/internal/framed/Spdy3$Reader;->readGoAway(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    return v4

    .line 165
    :pswitch_4
    invoke-direct {p0, p1, v5, v2}, Lokhttp3/internal/framed/Spdy3$Reader;->readPing(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    return v4

    .line 161
    :pswitch_5
    invoke-direct {p0, p1, v5, v2}, Lokhttp3/internal/framed/Spdy3$Reader;->readSettings(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    return v4

    .line 157
    :pswitch_6
    invoke-direct {p0, p1, v5, v2}, Lokhttp3/internal/framed/Spdy3$Reader;->readRstStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    return v4

    .line 153
    :pswitch_7
    invoke-direct {p0, p1, v5, v2}, Lokhttp3/internal/framed/Spdy3$Reader;->readSynReply(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    return v4

    .line 149
    :pswitch_8
    invoke-direct {p0, p1, v5, v2}, Lokhttp3/internal/framed/Spdy3$Reader;->readSynStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    return v4

    :cond_2
    const v3, 0x7fffffff

    and-int/2addr v1, v3

    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_3

    move v0, v4

    .line 187
    :cond_3
    iget-object p0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v0, v1, p0, v2}, Lokhttp3/internal/framed/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    return v4

    :catch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 0

    return-void
.end method
