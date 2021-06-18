.class public abstract Ldagger/android/support/DaggerFragment;
.super Landroid/support/v4/app/Fragment;
.source "DaggerFragment.java"

# interfaces
.implements Ldagger/android/support/HasSupportFragmentInjector;


# instance fields
.field childFragmentInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroid/support/v4/app/Fragment;)V

    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public supportFragmentInjector()Ldagger/android/AndroidInjector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Ldagger/android/support/DaggerFragment;->childFragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object p0
.end method
