.class Lokhttp3/internal/framed/FramedConnection$Reader$3;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/FramedConnection$Reader;->applyAndAckSettings(Lokhttp3/internal/framed/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lokhttp3/internal/framed/FramedConnection$Reader;

.field final synthetic val$peerSettings:Lokhttp3/internal/framed/Settings;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/Settings;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Reader$3;->this$1:Lokhttp3/internal/framed/FramedConnection$Reader;

    iput-object p4, p0, Lokhttp3/internal/framed/FramedConnection$Reader$3;->val$peerSettings:Lokhttp3/internal/framed/Settings;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 735
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader$3;->this$1:Lokhttp3/internal/framed/FramedConnection$Reader;

    iget-object v0, v0, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget-object v0, v0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection$Reader$3;->val$peerSettings:Lokhttp3/internal/framed/Settings;

    invoke-interface {v0, p0}, Lokhttp3/internal/framed/FrameWriter;->applyAndAckSettings(Lokhttp3/internal/framed/Settings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
