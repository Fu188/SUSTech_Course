.class public abstract Lokhttp3/internal/framed/FramedConnection$Listener;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# static fields
.field public static final REFUSE_INCOMING_STREAMS:Lokhttp3/internal/framed/FramedConnection$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 899
    new-instance v0, Lokhttp3/internal/framed/FramedConnection$Listener$1;

    invoke-direct {v0}, Lokhttp3/internal/framed/FramedConnection$Listener$1;-><init>()V

    sput-object v0, Lokhttp3/internal/framed/FramedConnection$Listener;->REFUSE_INCOMING_STREAMS:Lokhttp3/internal/framed/FramedConnection$Listener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettings(Lokhttp3/internal/framed/FramedConnection;)V
    .locals 0

    return-void
.end method

.method public abstract onStream(Lokhttp3/internal/framed/FramedStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
