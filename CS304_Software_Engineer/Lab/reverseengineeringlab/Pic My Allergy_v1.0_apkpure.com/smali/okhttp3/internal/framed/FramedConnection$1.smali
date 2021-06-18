.class Lokhttp3/internal/framed/FramedConnection$1;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/FramedConnection;->writeSynResetLater(ILokhttp3/internal/framed/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/framed/FramedConnection;

.field final synthetic val$errorCode:Lokhttp3/internal/framed/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/framed/ErrorCode;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$1;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iput p4, p0, Lokhttp3/internal/framed/FramedConnection$1;->val$streamId:I

    iput-object p5, p0, Lokhttp3/internal/framed/FramedConnection$1;->val$errorCode:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 327
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$1;->this$0:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedConnection$1;->val$streamId:I

    iget-object p0, p0, Lokhttp3/internal/framed/FramedConnection$1;->val$errorCode:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, v1, p0}, Lokhttp3/internal/framed/FramedConnection;->writeSynReset(ILokhttp3/internal/framed/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
