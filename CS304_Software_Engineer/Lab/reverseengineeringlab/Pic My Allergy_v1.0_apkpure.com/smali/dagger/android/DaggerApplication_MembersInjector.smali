.class public final Ldagger/android/DaggerApplication_MembersInjector;
.super Ljava/lang/Object;
.source "DaggerApplication_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Ldagger/android/DaggerApplication;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final activityInjectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private final broadcastReceiverInjectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final contentProviderInjectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/content/ContentProvider;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fragmentInjectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private final serviceInjectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Service;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Service;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/content/ContentProvider;",
            ">;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Ldagger/android/DaggerApplication_MembersInjector;->activityInjectorProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Ldagger/android/DaggerApplication_MembersInjector;->broadcastReceiverInjectorProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Ldagger/android/DaggerApplication_MembersInjector;->fragmentInjectorProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Ldagger/android/DaggerApplication_MembersInjector;->serviceInjectorProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p5, p0, Ldagger/android/DaggerApplication_MembersInjector;->contentProviderInjectorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Service;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/content/ContentProvider;",
            ">;>;)",
            "Ldagger/MembersInjector<",
            "Ldagger/android/DaggerApplication;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v6, Ldagger/android/DaggerApplication_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ldagger/android/DaggerApplication_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectActivityInjector(Ldagger/android/DaggerApplication;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/android/DaggerApplication;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;>;)V"
        }
    .end annotation

    .line 77
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldagger/android/DispatchingAndroidInjector;

    iput-object p1, p0, Ldagger/android/DaggerApplication;->activityInjector:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method

.method public static injectBroadcastReceiverInjector(Ldagger/android/DaggerApplication;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/android/DaggerApplication;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;)V"
        }
    .end annotation

    .line 83
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldagger/android/DispatchingAndroidInjector;

    iput-object p1, p0, Ldagger/android/DaggerApplication;->broadcastReceiverInjector:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method

.method public static injectContentProviderInjector(Ldagger/android/DaggerApplication;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/android/DaggerApplication;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/content/ContentProvider;",
            ">;>;)V"
        }
    .end annotation

    .line 101
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldagger/android/DispatchingAndroidInjector;

    iput-object p1, p0, Ldagger/android/DaggerApplication;->contentProviderInjector:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method

.method public static injectFragmentInjector(Ldagger/android/DaggerApplication;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/android/DaggerApplication;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;>;)V"
        }
    .end annotation

    .line 89
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldagger/android/DispatchingAndroidInjector;

    iput-object p1, p0, Ldagger/android/DaggerApplication;->fragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method

.method public static injectServiceInjector(Ldagger/android/DaggerApplication;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/android/DaggerApplication;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Service;",
            ">;>;)V"
        }
    .end annotation

    .line 95
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldagger/android/DispatchingAndroidInjector;

    iput-object p1, p0, Ldagger/android/DaggerApplication;->serviceInjector:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method

.method public static injectSetInjected(Ldagger/android/DaggerApplication;)V
    .locals 0

    .line 105
    invoke-virtual {p0}, Ldagger/android/DaggerApplication;->setInjected()V

    return-void
.end method


# virtual methods
.method public injectMembers(Ldagger/android/DaggerApplication;)V
    .locals 1

    if-nez p1, :cond_0

    .line 64
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot inject members into a null reference"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_0
    iget-object v0, p0, Ldagger/android/DaggerApplication_MembersInjector;->activityInjectorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/android/DispatchingAndroidInjector;

    iput-object v0, p1, Ldagger/android/DaggerApplication;->activityInjector:Ldagger/android/DispatchingAndroidInjector;

    .line 67
    iget-object v0, p0, Ldagger/android/DaggerApplication_MembersInjector;->broadcastReceiverInjectorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/android/DispatchingAndroidInjector;

    iput-object v0, p1, Ldagger/android/DaggerApplication;->broadcastReceiverInjector:Ldagger/android/DispatchingAndroidInjector;

    .line 68
    iget-object v0, p0, Ldagger/android/DaggerApplication_MembersInjector;->fragmentInjectorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/android/DispatchingAndroidInjector;

    iput-object v0, p1, Ldagger/android/DaggerApplication;->fragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    .line 69
    iget-object v0, p0, Ldagger/android/DaggerApplication_MembersInjector;->serviceInjectorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/android/DispatchingAndroidInjector;

    iput-object v0, p1, Ldagger/android/DaggerApplication;->serviceInjector:Ldagger/android/DispatchingAndroidInjector;

    .line 70
    iget-object p0, p0, Ldagger/android/DaggerApplication_MembersInjector;->contentProviderInjectorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldagger/android/DispatchingAndroidInjector;

    iput-object p0, p1, Ldagger/android/DaggerApplication;->contentProviderInjector:Ldagger/android/DispatchingAndroidInjector;

    .line 71
    invoke-virtual {p1}, Ldagger/android/DaggerApplication;->setInjected()V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Ldagger/android/DaggerApplication;

    invoke-virtual {p0, p1}, Ldagger/android/DaggerApplication_MembersInjector;->injectMembers(Ldagger/android/DaggerApplication;)V

    return-void
.end method
