.class public abstract Ldagger/android/support/AndroidSupportInjectionModule;
.super Ljava/lang/Object;
.source "AndroidSupportInjectionModule.java"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Ldagger/android/AndroidInjectionModule;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract supportFragmentInjectorFactories()Ljava/util/Map;
    .annotation runtime Ldagger/multibindings/Multibinds;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ldagger/android/AndroidInjector$Factory<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end method
