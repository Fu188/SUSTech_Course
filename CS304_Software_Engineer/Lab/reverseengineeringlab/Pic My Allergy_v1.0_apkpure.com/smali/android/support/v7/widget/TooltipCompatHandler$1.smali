.class Landroid/support/v7/widget/TooltipCompatHandler$1;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/TooltipCompatHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/TooltipCompatHandler;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/TooltipCompatHandler;)V
    .locals 0

    .line 50
    iput-object p1, p0, Landroid/support/v7/widget/TooltipCompatHandler$1;->this$0:Landroid/support/v7/widget/TooltipCompatHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 53
    iget-object p0, p0, Landroid/support/v7/widget/TooltipCompatHandler$1;->this$0:Landroid/support/v7/widget/TooltipCompatHandler;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v7/widget/TooltipCompatHandler;->access$000(Landroid/support/v7/widget/TooltipCompatHandler;Z)V

    return-void
.end method
