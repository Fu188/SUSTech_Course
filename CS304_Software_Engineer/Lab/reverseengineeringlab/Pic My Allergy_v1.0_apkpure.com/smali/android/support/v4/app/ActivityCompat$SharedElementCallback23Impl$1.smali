.class Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;
.super Ljava/lang/Object;
.source "ActivityCompat.java"

# interfaces
.implements Landroid/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;

.field final synthetic val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0

    .line 502
    iput-object p1, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;->this$0:Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;

    iput-object p2, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;->val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .locals 0

    .line 505
    iget-object p0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;->val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-interface {p0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    return-void
.end method
