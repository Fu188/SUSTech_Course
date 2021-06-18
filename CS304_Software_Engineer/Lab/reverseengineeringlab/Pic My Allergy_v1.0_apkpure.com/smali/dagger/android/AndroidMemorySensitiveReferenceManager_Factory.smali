.class public final Ldagger/android/AndroidMemorySensitiveReferenceManager_Factory;
.super Ljava/lang/Object;
.source "AndroidMemorySensitiveReferenceManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ldagger/android/AndroidMemorySensitiveReferenceManager;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final managersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Ldagger/releasablereferences/TypedReleasableReferenceManager<",
            "Ldagger/android/ReleaseReferencesAt;",
            ">;>;>;"
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
            "Ljava/util/Set<",
            "Ldagger/releasablereferences/TypedReleasableReferenceManager<",
            "Ldagger/android/ReleaseReferencesAt;",
            ">;>;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Ldagger/android/AndroidMemorySensitiveReferenceManager_Factory;->managersProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Ldagger/releasablereferences/TypedReleasableReferenceManager<",
            "Ldagger/android/ReleaseReferencesAt;",
            ">;>;>;)",
            "Ldagger/internal/Factory<",
            "Ldagger/android/AndroidMemorySensitiveReferenceManager;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Ldagger/android/AndroidMemorySensitiveReferenceManager_Factory;

    invoke-direct {v0, p0}, Ldagger/android/AndroidMemorySensitiveReferenceManager_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newAndroidMemorySensitiveReferenceManager(Ljava/util/Set;)Ldagger/android/AndroidMemorySensitiveReferenceManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ldagger/releasablereferences/TypedReleasableReferenceManager<",
            "Ldagger/android/ReleaseReferencesAt;",
            ">;>;)",
            "Ldagger/android/AndroidMemorySensitiveReferenceManager;"
        }
    .end annotation

    .line 40
    new-instance v0, Ldagger/android/AndroidMemorySensitiveReferenceManager;

    invoke-direct {v0, p0}, Ldagger/android/AndroidMemorySensitiveReferenceManager;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public get()Ldagger/android/AndroidMemorySensitiveReferenceManager;
    .locals 1

    .line 26
    new-instance v0, Ldagger/android/AndroidMemorySensitiveReferenceManager;

    iget-object p0, p0, Ldagger/android/AndroidMemorySensitiveReferenceManager_Factory;->managersProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-direct {v0, p0}, Ldagger/android/AndroidMemorySensitiveReferenceManager;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Ldagger/android/AndroidMemorySensitiveReferenceManager_Factory;->get()Ldagger/android/AndroidMemorySensitiveReferenceManager;

    move-result-object p0

    return-object p0
.end method
