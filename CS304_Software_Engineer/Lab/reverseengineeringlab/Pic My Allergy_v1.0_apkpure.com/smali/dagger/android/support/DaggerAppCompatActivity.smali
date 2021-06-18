.class public abstract Ldagger/android/support/DaggerAppCompatActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DaggerAppCompatActivity.java"

# interfaces
.implements Ldagger/android/HasFragmentInjector;
.implements Ldagger/android/support/HasSupportFragmentInjector;


# instance fields
.field frameworkFragmentInjector:Ldagger/android/DispatchingAndroidInjector;
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

.field supportFragmentInjector:Ldagger/android/DispatchingAndroidInjector;
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

    .line 34
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

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

    .line 53
    iget-object p0, p0, Ldagger/android/support/DaggerAppCompatActivity;->frameworkFragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Activity;)V

    .line 43
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

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

    .line 48
    iget-object p0, p0, Ldagger/android/support/DaggerAppCompatActivity;->supportFragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object p0
.end method
