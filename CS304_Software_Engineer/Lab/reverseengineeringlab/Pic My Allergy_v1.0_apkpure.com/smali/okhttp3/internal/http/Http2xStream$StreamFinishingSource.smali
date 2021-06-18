.class Lokhttp3/internal/http/Http2xStream$StreamFinishingSource;
.super Lokio/ForwardingSource;
.source "Http2xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http/Http2xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFinishingSource"
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/http/Http2xStream;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http/Http2xStream;Lokio/Source;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lokhttp3/internal/http/Http2xStream$StreamFinishingSource;->this$0:Lokhttp3/internal/http/Http2xStream;

    .line 283
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream$StreamFinishingSource;->this$0:Lokhttp3/internal/http/Http2xStream;

    invoke-static {v0}, Lokhttp3/internal/http/Http2xStream;->access$000(Lokhttp3/internal/http/Http2xStream;)Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/Http2xStream$StreamFinishingSource;->this$0:Lokhttp3/internal/http/Http2xStream;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lokhttp3/internal/connection/StreamAllocation;->streamFinished(ZLokhttp3/internal/http/HttpStream;)V

    .line 288
    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    return-void
.end method
