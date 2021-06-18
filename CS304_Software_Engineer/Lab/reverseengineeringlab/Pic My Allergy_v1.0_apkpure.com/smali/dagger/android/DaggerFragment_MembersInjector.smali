.class public final Ldagger/android/DaggerFragment_MembersInjector;
.super Ljava/lang/Object;
.source "DaggerFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Ldagger/android/DaggerFragment;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final childFragmentInjectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Ldagger/android/DaggerFragment_MembersInjector;->childFragmentInjectorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;>;)",
            "Ldagger/MembersInjector<",
            "Ldagger/android/DaggerFragment;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ldagger/android/DaggerFragment_MembersInjector;

    invoke-direct {v0, p0}, Ldagger/android/DaggerFragment_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectChildFragmentInjector(Ldagger/android/DaggerFragment;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/android/DaggerFragment;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;>;)V"
        }
    .end annotation

    .line 37
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldagger/android/DispatchingAndroidInjector;

    iput-object p1, p0, Ldagger/android/DaggerFragment;->childFragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method


# virtual methods
.method public injectMembers(Ldagger/android/DaggerFragment;)V
    .locals 0

    if-nez p1, :cond_0

    .line 29
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot inject members into a null reference"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_0
    iget-object p0, p0, Ldagger/android/DaggerFragment_MembersInjector;->childFragmentInjectorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldagger/android/DispatchingAndroidInjector;

    iput-object p0, p1, Ldagger/android/DaggerFragment;->childFragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Ldagger/android/DaggerFragment;

    invoke-virtual {p0, p1}, Ldagger/android/DaggerFragment_MembersInjector;->injectMembers(Ldagger/android/DaggerFragment;)V

    return-void
.end method
