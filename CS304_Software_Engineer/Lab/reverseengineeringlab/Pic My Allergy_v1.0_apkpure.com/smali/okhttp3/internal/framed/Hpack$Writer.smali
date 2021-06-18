.class final Lokhttp3/internal/framed/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# static fields
.field private static final SETTINGS_HEADER_TABLE_SIZE:I = 0x1000

.field private static final SETTINGS_HEADER_TABLE_SIZE_LIMIT:I = 0x4000


# instance fields
.field dynamicTable:[Lokhttp3/internal/framed/Header;

.field dynamicTableByteCount:I

.field private emitDynamicTableSizeUpdate:Z

.field headerCount:I

.field headerTableSizeSetting:I

.field maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final out:Lokio/Buffer;

.field private smallestHeaderTableSizeSetting:I


# direct methods
.method constructor <init>(ILokio/Buffer;)V
    .locals 1

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 378
    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    const/16 v0, 0x8

    .line 385
    new-array v0, v0, [Lokhttp3/internal/framed/Header;

    iput-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    .line 387
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    const/4 v0, 0x0

    .line 388
    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    .line 389
    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    .line 396
    iput p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerTableSizeSetting:I

    .line 397
    iput p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 398
    iput-object p2, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    return-void
.end method

.method constructor <init>(Lokio/Buffer;)V
    .locals 1

    const/16 v0, 0x1000

    .line 392
    invoke-direct {p0, v0, p1}, Lokhttp3/internal/framed/Hpack$Writer;-><init>(ILokio/Buffer;)V

    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .locals 2

    .line 534
    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_1

    .line 535
    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-nez v0, :cond_0

    .line 536
    invoke-direct {p0}, Lokhttp3/internal/framed/Hpack$Writer;->clearDynamicTable()V

    goto :goto_0

    .line 538
    :cond_0
    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/Hpack$Writer;->evictToRecoverBytes(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method private clearDynamicTable()V
    .locals 2

    .line 402
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 403
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    const/4 v0, 0x0

    .line 404
    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    .line 405
    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    return-void
.end method

.method private evictToRecoverBytes(I)I
    .locals 5

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 413
    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 414
    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lokhttp3/internal/framed/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 415
    iget v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    iget-object v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lokhttp3/internal/framed/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    .line 416
    iget v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 419
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    iget v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    iget v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    iget-object p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 422
    iget p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    :cond_1
    return v0
.end method

.method private insertIntoDynamicTable(Lokhttp3/internal/framed/Header;)V
    .locals 6

    .line 428
    iget v0, p1, Lokhttp3/internal/framed/Header;->hpackSize:I

    .line 431
    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-le v0, v1, :cond_0

    .line 432
    invoke-direct {p0}, Lokhttp3/internal/framed/Hpack$Writer;->clearDynamicTable()V

    return-void

    .line 437
    :cond_0
    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v1, v0

    iget v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    sub-int/2addr v1, v2

    .line 438
    invoke-direct {p0, v1}, Lokhttp3/internal/framed/Hpack$Writer;->evictToRecoverBytes(I)I

    .line 440
    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 441
    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lokhttp3/internal/framed/Header;

    .line 442
    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    const/4 v3, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v4, v4

    iget-object v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    .line 444
    iput-object v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    .line 446
    :cond_1
    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    .line 447
    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    aput-object p1, v2, v1

    .line 448
    iget p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    .line 449
    iget p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    return-void
.end method


# virtual methods
.method setHeaderTableSizeSetting(I)V
    .locals 1

    .line 518
    iput p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerTableSizeSetting:I

    const/16 v0, 0x4000

    .line 519
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 522
    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ne v0, p1, :cond_0

    return-void

    .line 524
    :cond_0
    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ge p1, v0, :cond_1

    .line 525
    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    :cond_1
    const/4 v0, 0x1

    .line 528
    iput-boolean v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    .line 529
    iput p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 530
    invoke-direct {p0}, Lokhttp3/internal/framed/Hpack$Writer;->adjustDynamicTableByteCount()V

    return-void
.end method

.method writeByteString(Lokio/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 514
    iget-object p0, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {p0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    iget-boolean v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 456
    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    iget v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_0

    .line 458
    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    invoke-virtual {p0, v0, v4, v3}, Lokhttp3/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 460
    :cond_0
    iput-boolean v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    const v0, 0x7fffffff

    .line 461
    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 462
    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    invoke-virtual {p0, v0, v4, v3}, Lokhttp3/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 465
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 466
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/internal/framed/Header;

    .line 467
    iget-object v4, v3, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v4

    .line 468
    iget-object v5, v3, Lokhttp3/internal/framed/Header;->value:Lokio/ByteString;

    .line 469
    invoke-static {}, Lokhttp3/internal/framed/Hpack;->access$200()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 472
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xf

    invoke-virtual {p0, v3, v4, v1}, Lokhttp3/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 473
    invoke-virtual {p0, v5}, Lokhttp3/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    goto :goto_1

    .line 475
    :cond_2
    iget-object v6, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    invoke-static {v6, v3}, Lokhttp3/internal/Util;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 478
    iget v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    sub-int/2addr v6, v3

    invoke-static {}, Lokhttp3/internal/framed/Hpack;->access$000()[Lokhttp3/internal/framed/Header;

    move-result-object v3

    array-length v3, v3

    add-int/2addr v6, v3

    const/16 v3, 0x7f

    const/16 v4, 0x80

    invoke-virtual {p0, v6, v3, v4}, Lokhttp3/internal/framed/Hpack$Writer;->writeInt(III)V

    goto :goto_1

    .line 482
    :cond_3
    iget-object v6, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 483
    invoke-virtual {p0, v4}, Lokhttp3/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 484
    invoke-virtual {p0, v5}, Lokhttp3/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 485
    invoke-direct {p0, v3}, Lokhttp3/internal/framed/Hpack$Writer;->insertIntoDynamicTable(Lokhttp3/internal/framed/Header;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method writeInt(III)V
    .locals 1

    if-ge p1, p2, :cond_0

    .line 495
    iget-object p0, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    or-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 p3, p1, 0x7f

    .line 506
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 509
    :cond_1
    iget-object p0, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    return-void
.end method
