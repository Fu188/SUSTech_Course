.class public interface abstract annotation Ldagger/android/ReleaseReferencesAt;
.super Ljava/lang/Object;
.source "ReleaseReferencesAt.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Ldagger/internal/GwtIncompatible;
.end annotation

.annotation build Ldagger/releasablereferences/CanReleaseReferences;
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()I
.end method
