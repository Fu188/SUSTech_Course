.class public final Ldagger/internal/TypedReleasableReferenceManagerDecorator;
.super Ljava/lang/Object;
.source "TypedReleasableReferenceManagerDecorator.java"

# interfaces
.implements Ldagger/releasablereferences/TypedReleasableReferenceManager;


# annotations
.annotation build Ldagger/internal/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/releasablereferences/TypedReleasableReferenceManager<",
        "TM;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ldagger/releasablereferences/ReleasableReferenceManager;

.field private final metadata:Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldagger/releasablereferences/ReleasableReferenceManager;Ljava/lang/annotation/Annotation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/releasablereferences/ReleasableReferenceManager;",
            "TM;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldagger/releasablereferences/ReleasableReferenceManager;

    iput-object p1, p0, Ldagger/internal/TypedReleasableReferenceManagerDecorator;->delegate:Ldagger/releasablereferences/ReleasableReferenceManager;

    .line 49
    invoke-static {p2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    iput-object p1, p0, Ldagger/internal/TypedReleasableReferenceManagerDecorator;->metadata:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public metadata()Ljava/lang/annotation/Annotation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Ldagger/internal/TypedReleasableReferenceManagerDecorator;->metadata:Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public releaseStrongReferences()V
    .locals 0

    .line 64
    iget-object p0, p0, Ldagger/internal/TypedReleasableReferenceManagerDecorator;->delegate:Ldagger/releasablereferences/ReleasableReferenceManager;

    invoke-interface {p0}, Ldagger/releasablereferences/ReleasableReferenceManager;->releaseStrongReferences()V

    return-void
.end method

.method public restoreStrongReferences()V
    .locals 0

    .line 69
    iget-object p0, p0, Ldagger/internal/TypedReleasableReferenceManagerDecorator;->delegate:Ldagger/releasablereferences/ReleasableReferenceManager;

    invoke-interface {p0}, Ldagger/releasablereferences/ReleasableReferenceManager;->restoreStrongReferences()V

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
    iget-object p0, p0, Ldagger/internal/TypedReleasableReferenceManagerDecorator;->delegate:Ldagger/releasablereferences/ReleasableReferenceManager;

    invoke-interface {p0}, Ldagger/releasablereferences/ReleasableReferenceManager;->scope()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
