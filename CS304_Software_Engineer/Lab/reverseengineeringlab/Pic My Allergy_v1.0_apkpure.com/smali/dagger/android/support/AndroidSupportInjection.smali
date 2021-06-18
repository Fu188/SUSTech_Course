.class public final Ldagger/android/support/AndroidSupportInjection;
.super Ljava/lang/Object;
.source "AndroidSupportInjection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "dagger.android.support"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findHasFragmentInjector(Landroid/support/v4/app/Fragment;)Ldagger/android/support/HasSupportFragmentInjector;
    .locals 4

    move-object v0, p0

    .line 76
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    instance-of v1, v0, Ldagger/android/support/HasSupportFragmentInjector;

    if-eqz v1, :cond_0

    .line 78
    check-cast v0, Ldagger/android/support/HasSupportFragmentInjector;

    return-object v0

    .line 81
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 82
    instance-of v1, v0, Ldagger/android/support/HasSupportFragmentInjector;

    if-eqz v1, :cond_2

    .line 83
    check-cast v0, Ldagger/android/support/HasSupportFragmentInjector;

    return-object v0

    .line 85
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    instance-of v1, v1, Ldagger/android/support/HasSupportFragmentInjector;

    if-eqz v1, :cond_3

    .line 86
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Ldagger/android/support/HasSupportFragmentInjector;

    return-object p0

    .line 88
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No injector was found for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inject(Landroid/support/v4/app/Fragment;)V
    .locals 6

    const-string v0, "fragment"

    .line 55
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->findHasFragmentInjector(Landroid/support/v4/app/Fragment;)Ldagger/android/support/HasSupportFragmentInjector;

    move-result-object v0

    const-string v1, "dagger.android.support"

    const-string v2, "An injector for %s was found in %s"

    const/4 v3, 0x2

    .line 57
    new-array v3, v3, [Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 59
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-interface {v0}, Ldagger/android/support/HasSupportFragmentInjector;->supportFragmentInjector()Ldagger/android/AndroidInjector;

    move-result-object v1

    const-string v2, "%s.supportFragmentInjector() returned null"

    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v1, v2, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-interface {v1, p0}, Ldagger/android/AndroidInjector;->inject(Ljava/lang/Object;)V

    return-void
.end method
