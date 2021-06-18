.class final Lokio/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# static fields
.field static final SHARE_MINIMUM:I = 0x400

.field static final SIZE:I = 0x2000


# instance fields
.field final data:[B

.field limit:I

.field next:Lokio/Segment;

.field owner:Z

.field pos:I

.field prev:Lokio/Segment;

.field shared:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 61
    new-array v0, v0, [B

    iput-object v0, p0, Lokio/Segment;->data:[B

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lokio/Segment;->owner:Z

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lokio/Segment;->shared:Z

    return-void
.end method

.method constructor <init>(Lokio/Segment;)V
    .locals 3

    .line 67
    iget-object v0, p1, Lokio/Segment;->data:[B

    iget v1, p1, Lokio/Segment;->pos:I

    iget v2, p1, Lokio/Segment;->limit:I

    invoke-direct {p0, v0, v1, v2}, Lokio/Segment;-><init>([BII)V

    const/4 p0, 0x1

    .line 68
    iput-boolean p0, p1, Lokio/Segment;->shared:Z

    return-void
.end method

.method constructor <init>([BII)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lokio/Segment;->data:[B

    .line 73
    iput p2, p0, Lokio/Segment;->pos:I

    .line 74
    iput p3, p0, Lokio/Segment;->limit:I

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lokio/Segment;->owner:Z

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lokio/Segment;->shared:Z

    return-void
.end method


# virtual methods
.method public compact()V
    .locals 3

    .line 139
    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-ne v0, p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 140
    :cond_0
    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;

    iget-boolean v0, v0, Lokio/Segment;->owner:Z

    if-nez v0, :cond_1

    return-void

    .line 141
    :cond_1
    iget v0, p0, Lokio/Segment;->limit:I

    iget v1, p0, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    .line 142
    iget-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    iget-boolean v2, v2, Lokio/Segment;->shared:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    :goto_0
    add-int/2addr v1, v2

    if-le v0, v1, :cond_3

    return-void

    .line 144
    :cond_3
    iget-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {p0, v1, v0}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 145
    invoke-virtual {p0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 146
    invoke-static {p0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    return-void
.end method

.method public pop()Lokio/Segment;
    .locals 4

    .line 84
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 85
    :goto_0
    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    iget-object v3, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 86
    iget-object v2, p0, Lokio/Segment;->next:Lokio/Segment;

    iget-object v3, p0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 87
    iput-object v1, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 88
    iput-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    return-object v0
.end method

.method public push(Lokio/Segment;)Lokio/Segment;
    .locals 1

    .line 97
    iput-object p0, p1, Lokio/Segment;->prev:Lokio/Segment;

    .line 98
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 99
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object p1, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 100
    iput-object p1, p0, Lokio/Segment;->next:Lokio/Segment;

    return-object p1
.end method

.method public split(I)Lokio/Segment;
    .locals 5

    if-lez p1, :cond_2

    .line 113
    iget v0, p0, Lokio/Segment;->limit:I

    iget v1, p0, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x400

    if-lt p1, v0, :cond_1

    .line 122
    new-instance v0, Lokio/Segment;

    invoke-direct {v0, p0}, Lokio/Segment;-><init>(Lokio/Segment;)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lokio/Segment;->data:[B

    iget v2, p0, Lokio/Segment;->pos:I

    iget-object v3, v0, Lokio/Segment;->data:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    :goto_0
    iget v1, v0, Lokio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lokio/Segment;->limit:I

    .line 129
    iget v1, p0, Lokio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lokio/Segment;->pos:I

    .line 130
    iget-object p0, p0, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {p0, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    return-object v0

    .line 113
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public writeTo(Lokio/Segment;I)V
    .locals 5

    .line 151
    iget-boolean v0, p1, Lokio/Segment;->owner:Z

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 152
    :cond_0
    iget v0, p1, Lokio/Segment;->limit:I

    add-int/2addr v0, p2

    const/16 v1, 0x2000

    if-le v0, v1, :cond_3

    .line 154
    iget-boolean v0, p1, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 155
    :cond_1
    iget v0, p1, Lokio/Segment;->limit:I

    add-int/2addr v0, p2

    iget v2, p1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v2

    if-le v0, v1, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 156
    :cond_2
    iget-object v0, p1, Lokio/Segment;->data:[B

    iget v1, p1, Lokio/Segment;->pos:I

    iget-object v2, p1, Lokio/Segment;->data:[B

    iget v3, p1, Lokio/Segment;->limit:I

    iget v4, p1, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget v0, p1, Lokio/Segment;->limit:I

    iget v1, p1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lokio/Segment;->limit:I

    .line 158
    iput v4, p1, Lokio/Segment;->pos:I

    .line 161
    :cond_3
    iget-object v0, p0, Lokio/Segment;->data:[B

    iget v1, p0, Lokio/Segment;->pos:I

    iget-object v2, p1, Lokio/Segment;->data:[B

    iget v3, p1, Lokio/Segment;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget v0, p1, Lokio/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lokio/Segment;->limit:I

    .line 163
    iget p1, p0, Lokio/Segment;->pos:I

    add-int/2addr p1, p2

    iput p1, p0, Lokio/Segment;->pos:I

    return-void
.end method
