.class Landroid/support/v4/graphics/drawable/DrawableWrapperApi19;
.super Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;
.source "DrawableWrapperApi19.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/DrawableWrapperApi19$DrawableWrapperStateKitKat;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public isAutoMirrored()Z
    .locals 0

    .line 43
    iget-object p0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi19;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result p0

    return p0
.end method

.method mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 49
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi19$DrawableWrapperStateKitKat;

    iget-object p0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi19;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi19$DrawableWrapperStateKitKat;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public setAutoMirrored(Z)V
    .locals 0

    .line 38
    iget-object p0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi19;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void
.end method
