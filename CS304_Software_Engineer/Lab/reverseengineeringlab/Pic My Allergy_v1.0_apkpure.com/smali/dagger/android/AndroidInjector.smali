.class public interface abstract Ldagger/android/AndroidInjector;
.super Ljava/lang/Object;
.source "AndroidInjector.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
    value = "Faked versions of AndroidInjector are much clearer than a mock. See https://google.github.io/dagger/testing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/android/AndroidInjector$Builder;,
        Ldagger/android/AndroidInjector$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract inject(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
