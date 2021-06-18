.class final enum Ldagger/internal/ReferenceReleasingProviderManager$Operation$1;
.super Ldagger/internal/ReferenceReleasingProviderManager$Operation;
.source "ReferenceReleasingProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/ReferenceReleasingProviderManager$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, v0}, Ldagger/internal/ReferenceReleasingProviderManager$Operation;-><init>(Ljava/lang/String;ILdagger/internal/ReferenceReleasingProviderManager$1;)V

    return-void
.end method


# virtual methods
.method execute(Ldagger/internal/ReferenceReleasingProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/ReferenceReleasingProvider<",
            "*>;)V"
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Ldagger/internal/ReferenceReleasingProvider;->releaseStrongReference()V

    return-void
.end method
