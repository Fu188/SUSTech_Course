.class Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;
.super Landroid/app/SharedElementCallback;
.source "ActivityCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedElementCallback21Impl"
.end annotation


# instance fields
.field protected mCallback:Landroid/support/v4/app/SharedElementCallback;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/SharedElementCallback;)V
    .locals 0

    .line 451
    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    .line 452
    iput-object p1, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroid/support/v4/app/SharedElementCallback;

    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 0

    .line 482
    iget-object p0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroid/support/v4/app/SharedElementCallback;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 0

    .line 488
    iget-object p0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroid/support/v4/app/SharedElementCallback;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 476
    iget-object p0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroid/support/v4/app/SharedElementCallback;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 471
    iget-object p0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroid/support/v4/app/SharedElementCallback;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/SharedElementCallback;->onRejectSharedElements(Ljava/util/List;)V

    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 465
    iget-object p0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroid/support/v4/app/SharedElementCallback;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 458
    iget-object p0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroid/support/v4/app/SharedElementCallback;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
