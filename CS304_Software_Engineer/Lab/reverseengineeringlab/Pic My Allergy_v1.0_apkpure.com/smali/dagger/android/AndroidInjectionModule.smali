.class public abstract Ldagger/android/AndroidInjectionModule;
.super Ljava/lang/Object;
.source "AndroidInjectionModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract activityInjectorFactories()Ljava/util/Map;
    .annotation runtime Ldagger/multibindings/Multibinds;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ldagger/android/AndroidInjector$Factory<",
            "+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end method

.method abstract broadcastReceiverInjectorFactories()Ljava/util/Map;
    .annotation runtime Ldagger/multibindings/Multibinds;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/content/BroadcastReceiver;",
            ">;",
            "Ldagger/android/AndroidInjector$Factory<",
            "+",
            "Landroid/content/BroadcastReceiver;",
            ">;>;"
        }
    .end annotation
.end method

.method abstract contentProviderInjectorFactories()Ljava/util/Map;
    .annotation runtime Ldagger/multibindings/Multibinds;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/content/ContentProvider;",
            ">;",
            "Ldagger/android/AndroidInjector$Factory<",
            "+",
            "Landroid/content/ContentProvider;",
            ">;>;"
        }
    .end annotation
.end method

.method abstract fragmentInjectorFactories()Ljava/util/Map;
    .annotation runtime Ldagger/multibindings/Multibinds;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Ldagger/android/AndroidInjector$Factory<",
            "+",
            "Landroid/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end method

.method abstract serviceInjectorFactories()Ljava/util/Map;
    .annotation runtime Ldagger/multibindings/Multibinds;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;",
            "Ldagger/android/AndroidInjector$Factory<",
            "+",
            "Landroid/app/Service;",
            ">;>;"
        }
    .end annotation
.end method
