.class Lokhttp3/internal/framed/NameValueBlockReader$1;
.super Lokio/ForwardingSource;
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
.method constructor <init>(Lokhttp3/internal/framed/NameValueBlockReader;Lokio/Source;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lokhttp3/internal/framed/NameValueBlockReader$1;->this$0:Lokhttp3/internal/framed/NameValueBlockReader;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/NameValueBlockReader$1;->this$0:Lokhttp3/internal/framed/NameValueBlockReader;

    invoke-static {v0}, Lokhttp3/internal/framed/NameValueBlockReader;->access$000(Lokhttp3/internal/framed/NameValueBlockReader;)I

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 56
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/NameValueBlockReader$1;->this$0:Lokhttp3/internal/framed/NameValueBlockReader;

    invoke-static {v0}, Lokhttp3/internal/framed/NameValueBlockReader;->access$000(Lokhttp3/internal/framed/NameValueBlockReader;)I

    move-result v0

    int-to-long v3, v0

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_1

    return-wide v1

    .line 58
    :cond_1
    iget-object p3, p0, Lokhttp3/internal/framed/NameValueBlockReader$1;->this$0:Lokhttp3/internal/framed/NameValueBlockReader;

    iget-object p0, p0, Lokhttp3/internal/framed/NameValueBlockReader$1;->this$0:Lokhttp3/internal/framed/NameValueBlockReader;

    invoke-static {p0}, Lokhttp3/internal/framed/NameValueBlockReader;->access$000(Lokhttp3/internal/framed/NameValueBlockReader;)I

    move-result p0

    int-to-long v0, p0

    sub-long/2addr v0, p1

    long-to-int p0, v0

    invoke-static {p3, p0}, Lokhttp3/internal/framed/NameValueBlockReader;->access$002(Lokhttp3/internal/framed/NameValueBlockReader;I)I

    return-wide p1
.end method
