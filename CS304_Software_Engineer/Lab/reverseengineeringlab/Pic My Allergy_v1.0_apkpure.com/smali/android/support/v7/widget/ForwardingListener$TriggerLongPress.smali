.class Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ForwardingListener;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ForwardingListener;)V
    .locals 0

    .line 328
    iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;->this$0:Landroid/support/v7/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 333
    iget-object p0, p0, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;->this$0:Landroid/support/v7/widget/ForwardingListener;

    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->onLongPress()V

    return-void
.end method
