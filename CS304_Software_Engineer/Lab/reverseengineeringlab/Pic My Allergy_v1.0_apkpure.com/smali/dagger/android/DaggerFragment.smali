.class public abstract Ldagger/android/DaggerFragment;
.super Landroid/app/Fragment;
.source "DaggerFragment.java"

# interfaces
.implements Ldagger/android/HasFragmentInjector;


# instance fields
.field childFragmentInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public fragmentInjector()Ldagger/android/AndroidInjector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object p0, p0, Ldagger/android/DaggerFragment;->childFragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Fragment;)V

    .line 37
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method
