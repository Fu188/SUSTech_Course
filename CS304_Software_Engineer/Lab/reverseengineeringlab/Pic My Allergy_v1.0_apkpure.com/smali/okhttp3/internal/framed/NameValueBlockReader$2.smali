.class Lokhttp3/internal/framed/NameValueBlockReader$2;
.super Ljava/util/zip/Inflater;
.source "NameValueBlockReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/NameValueBlockReader;-><init>(Lokio/BufferedSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/framed/NameValueBlockReader;


# direct methods
.method constructor <init>(Lokhttp3/internal/framed/NameValueBlockReader;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lokhttp3/internal/framed/NameValueBlockReader$2;->this$0:Lokhttp3/internal/framed/NameValueBlockReader;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public inflate([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 67
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lokhttp3/internal/framed/NameValueBlockReader$2;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    sget-object v0, Lokhttp3/internal/framed/Spdy3;->DICTIONARY:[B

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/NameValueBlockReader$2;->setDictionary([B)V

    .line 70
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    :cond_0
    return v0
.end method
