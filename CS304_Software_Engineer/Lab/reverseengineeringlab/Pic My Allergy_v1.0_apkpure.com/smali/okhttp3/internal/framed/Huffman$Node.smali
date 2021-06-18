.class final Lokhttp3/internal/framed/Huffman$Node;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Huffman;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation


# instance fields
.field private final children:[Lokhttp3/internal/framed/Huffman$Node;

.field private final symbol:I

.field private final terminalBits:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 208
    new-array v0, v0, [Lokhttp3/internal/framed/Huffman$Node;

    iput-object v0, p0, Lokhttp3/internal/framed/Huffman$Node;->children:[Lokhttp3/internal/framed/Huffman$Node;

    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lokhttp3/internal/framed/Huffman$Node;->symbol:I

    .line 210
    iput v0, p0, Lokhttp3/internal/framed/Huffman$Node;->terminalBits:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lokhttp3/internal/framed/Huffman$Node;->children:[Lokhttp3/internal/framed/Huffman$Node;

    .line 221
    iput p1, p0, Lokhttp3/internal/framed/Huffman$Node;->symbol:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 223
    :cond_0
    iput p1, p0, Lokhttp3/internal/framed/Huffman$Node;->terminalBits:I

    return-void
.end method

.method static synthetic access$000(Lokhttp3/internal/framed/Huffman$Node;)[Lokhttp3/internal/framed/Huffman$Node;
    .locals 0

    .line 195
    iget-object p0, p0, Lokhttp3/internal/framed/Huffman$Node;->children:[Lokhttp3/internal/framed/Huffman$Node;

    return-object p0
.end method

.method static synthetic access$100(Lokhttp3/internal/framed/Huffman$Node;)I
    .locals 0

    .line 195
    iget p0, p0, Lokhttp3/internal/framed/Huffman$Node;->symbol:I

    return p0
.end method

.method static synthetic access$200(Lokhttp3/internal/framed/Huffman$Node;)I
    .locals 0

    .line 195
    iget p0, p0, Lokhttp3/internal/framed/Huffman$Node;->terminalBits:I

    return p0
.end method
