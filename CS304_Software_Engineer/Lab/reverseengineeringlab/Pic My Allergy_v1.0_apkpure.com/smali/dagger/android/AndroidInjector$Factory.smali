.class public interface abstract Ldagger/android/AndroidInjector$Factory;
.super Ljava/lang/Object;
.source "AndroidInjector.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/android/AndroidInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
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
.method public abstract create(Ljava/lang/Object;)Ldagger/android/AndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ldagger/android/AndroidInjector<",
            "TT;>;"
        }
    .end annotation
.end method
