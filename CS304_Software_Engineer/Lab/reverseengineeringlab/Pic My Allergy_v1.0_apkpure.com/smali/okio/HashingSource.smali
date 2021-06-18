.class public final Lokio/HashingSource;
.super Lokio/ForwardingSource;
.source "HashingSource.java"


# instance fields
.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Lokio/Source;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 59
    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 61
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static md5(Lokio/Source;)Lokio/HashingSource;
    .locals 2

    .line 43
    new-instance v0, Lokio/HashingSource;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha1(Lokio/Source;)Lokio/HashingSource;
    .locals 2

    .line 48
    new-instance v0, Lokio/HashingSource;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha256(Lokio/Source;)Lokio/HashingSource;
    .locals 2

    .line 53
    new-instance v0, Lokio/HashingSource;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public hash()Lokio/ByteString;
    .locals 0

    .line 99
    iget-object p0, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 100
    invoke-static {p0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 69
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v0, p2

    .line 72
    iget-wide v2, p1, Lokio/Buffer;->size:J

    .line 73
    iget-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    :goto_0
    cmp-long v5, v2, v0

    if-lez v5, :cond_0

    .line 75
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 76
    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v2, v5

    goto :goto_0

    .line 80
    :cond_0
    :goto_1
    iget-wide v5, p1, Lokio/Buffer;->size:J

    cmp-long v5, v2, v5

    if-gez v5, :cond_1

    .line 81
    iget v5, v4, Lokio/Segment;->pos:I

    int-to-long v5, v5

    add-long/2addr v5, v0

    sub-long/2addr v5, v2

    long-to-int v0, v5

    .line 82
    iget-object v1, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    iget-object v5, v4, Lokio/Segment;->data:[B

    iget v6, v4, Lokio/Segment;->limit:I

    sub-int/2addr v6, v0

    invoke-virtual {v1, v5, v0, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 83
    iget v0, v4, Lokio/Segment;->limit:I

    iget v1, v4, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 85
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    move-wide v2, v0

    goto :goto_1

    :cond_1
    return-wide p2
.end method
