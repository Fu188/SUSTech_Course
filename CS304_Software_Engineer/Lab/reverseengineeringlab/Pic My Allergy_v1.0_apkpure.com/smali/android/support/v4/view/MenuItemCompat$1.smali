.class final Landroid/support/v4/view/MenuItemCompat$1;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;


# direct methods
.method constructor <init>(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)V
    .locals 0

    .line 464
    iput-object p1, p0, Landroid/support/v4/view/MenuItemCompat$1;->val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 0

    .line 472
    iget-object p0, p0, Landroid/support/v4/view/MenuItemCompat$1;->val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    invoke-interface {p0, p1}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 0

    .line 467
    iget-object p0, p0, Landroid/support/v4/view/MenuItemCompat$1;->val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    invoke-interface {p0, p1}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
