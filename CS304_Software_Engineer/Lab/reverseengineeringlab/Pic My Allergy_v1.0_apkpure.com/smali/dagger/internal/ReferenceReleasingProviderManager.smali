.class public final Ldagger/internal/ReferenceReleasingProviderManager;
.super Ljava/lang/Object;
.source "ReferenceReleasingProviderManager.java"

# interfaces
.implements Ldagger/releasablereferences/ReleasableReferenceManager;


# annotations
.annotation build Ldagger/internal/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/ReferenceReleasingProviderManager$Operation;
    }
.end annotation


# instance fields
.field private final providers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/ref/WeakReference<",
            "Ldagger/internal/ReferenceReleasingProvider<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final scope:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Ldagger/internal/ReferenceReleasingProviderManager;->providers:Ljava/util/Queue;

    .line 42
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Ldagger/internal/ReferenceReleasingProviderManager;->scope:Ljava/lang/Class;

    return-void
.end method

.method private execute(Ldagger/internal/ReferenceReleasingProviderManager$Operation;)V
    .locals 1

    .line 78
    iget-object p0, p0, Ldagger/internal/ReferenceReleasingProviderManager;->providers:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 79
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/ReferenceReleasingProvider;

    if-nez v0, :cond_0

    .line 82
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1, v0}, Ldagger/internal/ReferenceReleasingProviderManager$Operation;->execute(Ldagger/internal/ReferenceReleasingProvider;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addProvider(Ldagger/internal/ReferenceReleasingProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/ReferenceReleasingProvider<",
            "*>;)V"
        }
    .end annotation

    .line 49
    iget-object p0, p0, Ldagger/internal/ReferenceReleasingProviderManager;->providers:Ljava/util/Queue;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public releaseStrongReferences()V
    .locals 1

    .line 64
    sget-object v0, Ldagger/internal/ReferenceReleasingProviderManager$Operation;->RELEASE:Ldagger/internal/ReferenceReleasingProviderManager$Operation;

    invoke-direct {p0, v0}, Ldagger/internal/ReferenceReleasingProviderManager;->execute(Ldagger/internal/ReferenceReleasingProviderManager$Operation;)V

    return-void
.end method

.method public restoreStrongReferences()V
    .locals 1

    .line 74
    sget-object v0, Ldagger/internal/ReferenceReleasingProviderManager$Operation;->RESTORE:Ldagger/internal/ReferenceReleasingProviderManager$Operation;

    invoke-direct {p0, v0}, Ldagger/internal/ReferenceReleasingProviderManager;->execute(Ldagger/internal/ReferenceReleasingProviderManager$Operation;)V

    return-void
.end method

.method public scope()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object p0, p0, Ldagger/internal/ReferenceReleasingProviderManager;->scope:Ljava/lang/Class;

    return-object p0
.end method
