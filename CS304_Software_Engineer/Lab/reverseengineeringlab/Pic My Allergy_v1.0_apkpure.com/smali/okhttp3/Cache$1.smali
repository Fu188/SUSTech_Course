.class Lokhttp3/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lokhttp3/internal/cache/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/Cache;


# direct methods
.method constructor <init>(Lokhttp3/Cache;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object p0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-virtual {p0, p1}, Lokhttp3/Cache;->get(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object p0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-static {p0, p1}, Lokhttp3/Cache;->access$000(Lokhttp3/Cache;Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;

    move-result-object p0

    return-object p0
.end method

.method public remove(Lokhttp3/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object p0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-static {p0, p1}, Lokhttp3/Cache;->access$100(Lokhttp3/Cache;Lokhttp3/Request;)V

    return-void
.end method

.method public trackConditionalCacheHit()V
    .locals 0

    .line 160
    iget-object p0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-static {p0}, Lokhttp3/Cache;->access$300(Lokhttp3/Cache;)V

    return-void
.end method

.method public trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V
    .locals 0

    .line 164
    iget-object p0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-static {p0, p1}, Lokhttp3/Cache;->access$400(Lokhttp3/Cache;Lokhttp3/internal/cache/CacheStrategy;)V

    return-void
.end method

.method public update(Lokhttp3/Response;Lokhttp3/Response;)V
    .locals 0

    .line 156
    iget-object p0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-static {p0, p1, p2}, Lokhttp3/Cache;->access$200(Lokhttp3/Cache;Lokhttp3/Response;Lokhttp3/Response;)V

    return-void
.end method
