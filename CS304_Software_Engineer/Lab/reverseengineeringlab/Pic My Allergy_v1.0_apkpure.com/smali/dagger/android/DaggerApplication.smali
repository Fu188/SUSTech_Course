.class public abstract Ldagger/android/DaggerApplication;
.super Landroid/app/Application;
.source "DaggerApplication.java"

# interfaces
.implements Ldagger/android/HasActivityInjector;
.implements Ldagger/android/HasFragmentInjector;
.implements Ldagger/android/HasServiceInjector;
.implements Ldagger/android/HasBroadcastReceiverInjector;
.implements Ldagger/android/HasContentProviderInjector;


# instance fields
.field activityInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field broadcastReceiverInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field contentProviderInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/content/ContentProvider;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field fragmentInjector:Ldagger/android/DispatchingAndroidInjector;
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

.field private volatile needToInject:Z

.field serviceInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Ldagger/android/DaggerApplication;->needToInject:Z

    return-void
.end method

.method private injectIfNecessary()V
    .locals 2

    .line 72
    iget-boolean v0, p0, Ldagger/android/DaggerApplication;->needToInject:Z

    if-eqz v0, :cond_1

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v0, p0, Ldagger/android/DaggerApplication;->needToInject:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Ldagger/android/DaggerApplication;->applicationInjector()Ldagger/android/AndroidInjector;

    move-result-object v0

    .line 78
    invoke-interface {v0, p0}, Ldagger/android/AndroidInjector;->inject(Ljava/lang/Object;)V

    .line 79
    iget-boolean v0, p0, Ldagger/android/DaggerApplication;->needToInject:Z

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The AndroidInjector returned from applicationInjector() did not inject the DaggerApplication"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic activityInjector()Ldagger/android/AndroidInjector;
    .locals 0

    .line 35
    invoke-virtual {p0}, Ldagger/android/DaggerApplication;->activityInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object p0

    return-object p0
.end method

.method public activityInjector()Ldagger/android/DispatchingAndroidInjector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object p0, p0, Ldagger/android/DaggerApplication;->activityInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object p0
.end method

.method protected abstract applicationInjector()Ldagger/android/AndroidInjector;
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "+",
            "Ldagger/android/DaggerApplication;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic broadcastReceiverInjector()Ldagger/android/AndroidInjector;
    .locals 0

    .line 35
    invoke-virtual {p0}, Ldagger/android/DaggerApplication;->broadcastReceiverInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object p0

    return-object p0
.end method

.method public broadcastReceiverInjector()Ldagger/android/DispatchingAndroidInjector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object p0, p0, Ldagger/android/DaggerApplication;->broadcastReceiverInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object p0
.end method

.method public contentProviderInjector()Ldagger/android/AndroidInjector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroid/content/ContentProvider;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ldagger/android/DaggerApplication;->injectIfNecessary()V

    .line 120
    iget-object p0, p0, Ldagger/android/DaggerApplication;->contentProviderInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object p0
.end method

.method public bridge synthetic fragmentInjector()Ldagger/android/AndroidInjector;
    .locals 0

    .line 35
    invoke-virtual {p0}, Ldagger/android/DaggerApplication;->fragmentInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object p0

    return-object p0
.end method

.method public fragmentInjector()Ldagger/android/DispatchingAndroidInjector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object p0, p0, Ldagger/android/DaggerApplication;->fragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    .line 52
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 53
    invoke-direct {p0}, Ldagger/android/DaggerApplication;->injectIfNecessary()V

    return-void
.end method

.method public bridge synthetic serviceInjector()Ldagger/android/AndroidInjector;
    .locals 0

    .line 35
    invoke-virtual {p0}, Ldagger/android/DaggerApplication;->serviceInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object p0

    return-object p0
.end method

.method public serviceInjector()Ldagger/android/DispatchingAndroidInjector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object p0, p0, Ldagger/android/DaggerApplication;->serviceInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object p0
.end method

.method setInjected()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Ldagger/android/DaggerApplication;->needToInject:Z

    return-void
.end method
