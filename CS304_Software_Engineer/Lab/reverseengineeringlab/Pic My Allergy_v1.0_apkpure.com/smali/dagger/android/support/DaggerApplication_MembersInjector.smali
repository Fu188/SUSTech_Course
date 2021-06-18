.class public final Ldagger/android/support/DaggerApplication_MembersInjector;
.super Ljava/lang/Object;
.source "DaggerApplication_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Ldagger/android/support/DaggerApplication;",
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

.field private final supportFragmentInjectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/support/v4/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/support/v4/app/Fragment;",
            ">;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Ldagger/android/support/DaggerApplication_MembersInjector;->activityInjectorProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p2, p0, Ldagger/android/support/DaggerApplication_MembersInjector;->broadcastReceiverInjectorProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p3, p0, Ldagger/android/support/DaggerApplication_MembersInjector;->fragmentInjectorProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p4, p0, Ldagger/android/support/DaggerApplication_MembersInjector;->serviceInjectorProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p5, p0, Ldagger/android/support/DaggerApplication_MembersInjector;->contentProviderInjectorProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p6, p0, Ldagger/android/support/DaggerApplication_MembersInjector;->supportFragmentInjectorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 8
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
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/support/v4/app/Fragment;",
            ">;>;)",
            "Ldagger/MembersInjector<",
            "Ldagger/android/support/DaggerApplication;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v7, Ldagger/android/support/DaggerApplication_MembersInjector;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ldagger/android/support/DaggerApplication_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static injectSupportFragmentInjector(Ldagger/android/support/DaggerApplication;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/android/support/DaggerApplication;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/support/v4/app/Fragment;",
            ">;>;)V"
        }
    .end annotation

    .line 95
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldagger/android/DispatchingAndroidInjector;

    iput-object p1, p0, Ldagger/android/support/DaggerApplication;->supportFragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method


# virtual methods
.method public injectMembers(Ldagger/android/support/DaggerApplication;)V
    .locals 1

    if-nez p1, :cond_0

    .line 75
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot inject members into a null reference"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_0
    iget-object v0, p0, Ldagger/android/support/DaggerApplication_MembersInjector;->activityInjectorProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Ldagger/android/DaggerApplication_MembersInjector;->injectActivityInjector(Ldagger/android/DaggerApplication;Ljavax/inject/Provider;)V

    .line 79
    iget-object v0, p0, Ldagger/android/support/DaggerApplication_MembersInjector;->broadcastReceiverInjectorProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Ldagger/android/DaggerApplication_MembersInjector;->injectBroadcastReceiverInjector(Ldagger/android/DaggerApplication;Ljavax/inject/Provider;)V

    .line 81
    iget-object v0, p0, Ldagger/android/support/DaggerApplication_MembersInjector;->fragmentInjectorProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Ldagger/android/DaggerApplication_MembersInjector;->injectFragmentInjector(Ldagger/android/DaggerApplication;Ljavax/inject/Provider;)V

    .line 83
    iget-object v0, p0, Ldagger/android/support/DaggerApplication_MembersInjector;->serviceInjectorProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Ldagger/android/DaggerApplication_MembersInjector;->injectServiceInjector(Ldagger/android/DaggerApplication;Ljavax/inject/Provider;)V

    .line 85
    iget-object v0, p0, Ldagger/android/support/DaggerApplication_MembersInjector;->contentProviderInjectorProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Ldagger/android/DaggerApplication_MembersInjector;->injectContentProviderInjector(Ldagger/android/DaggerApplication;Ljavax/inject/Provider;)V

    .line 87
    invoke-static {p1}, Ldagger/android/DaggerApplication_MembersInjector;->injectSetInjected(Ldagger/android/DaggerApplication;)V

    .line 88
    iget-object p0, p0, Ldagger/android/support/DaggerApplication_MembersInjector;->supportFragmentInjectorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldagger/android/DispatchingAndroidInjector;

    iput-object p0, p1, Ldagger/android/support/DaggerApplication;->supportFragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ldagger/android/support/DaggerApplication;

    invoke-virtual {p0, p1}, Ldagger/android/support/DaggerApplication_MembersInjector;->injectMembers(Ldagger/android/support/DaggerApplication;)V

    return-void
.end method
