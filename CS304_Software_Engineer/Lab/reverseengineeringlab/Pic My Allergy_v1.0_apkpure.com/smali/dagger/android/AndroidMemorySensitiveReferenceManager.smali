.class public final Ldagger/android/AndroidMemorySensitiveReferenceManager;
.super Ljava/lang/Object;
.source "AndroidMemorySensitiveReferenceManager.java"


# annotations
.annotation build Ldagger/internal/GwtIncompatible;
.end annotation


# instance fields
.field private final managers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ldagger/releasablereferences/TypedReleasableReferenceManager<",
            "Ldagger/android/ReleaseReferencesAt;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ldagger/releasablereferences/TypedReleasableReferenceManager<",
            "Ldagger/android/ReleaseReferencesAt;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Ldagger/android/AndroidMemorySensitiveReferenceManager;->managers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public onTrimMemory(I)V
    .locals 2

    .line 66
    iget-object p0, p0, Ldagger/android/AndroidMemorySensitiveReferenceManager;->managers:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/releasablereferences/TypedReleasableReferenceManager;

    .line 67
    invoke-interface {v0}, Ldagger/releasablereferences/TypedReleasableReferenceManager;->metadata()Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Ldagger/android/ReleaseReferencesAt;

    invoke-interface {v1}, Ldagger/android/ReleaseReferencesAt;->value()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 68
    invoke-interface {v0}, Ldagger/releasablereferences/TypedReleasableReferenceManager;->releaseStrongReferences()V

    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {v0}, Ldagger/releasablereferences/TypedReleasableReferenceManager;->restoreStrongReferences()V

    goto :goto_0

    :cond_1
    return-void
.end method
