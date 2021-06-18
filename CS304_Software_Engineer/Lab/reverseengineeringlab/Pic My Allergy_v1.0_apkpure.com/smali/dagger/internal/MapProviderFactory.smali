.class public final Ldagger/internal/MapProviderFactory;
.super Ljava/lang/Object;
.source "MapProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;
.implements Ldagger/Lazy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/MapProviderFactory$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Map<",
        "TK;",
        "Ljavax/inject/Provider<",
        "TV;>;>;>;",
        "Ldagger/Lazy<",
        "Ljava/util/Map<",
        "TK;",
        "Ljavax/inject/Provider<",
        "TV;>;>;>;"
    }
.end annotation


# static fields
.field private static final EMPTY:Ldagger/internal/MapProviderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/MapProviderFactory<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final contributingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljavax/inject/Provider<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ldagger/internal/MapProviderFactory;

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ldagger/internal/MapProviderFactory;-><init>(Ljava/util/Map;)V

    sput-object v0, Ldagger/internal/MapProviderFactory;->EMPTY:Ldagger/internal/MapProviderFactory;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljavax/inject/Provider<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ldagger/internal/MapProviderFactory;->contributingMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ldagger/internal/MapProviderFactory$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Ldagger/internal/MapProviderFactory;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static builder(I)Ldagger/internal/MapProviderFactory$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ldagger/internal/MapProviderFactory$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Ldagger/internal/MapProviderFactory$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldagger/internal/MapProviderFactory$Builder;-><init>(ILdagger/internal/MapProviderFactory$1;)V

    return-object v0
.end method

.method public static empty()Ldagger/internal/MapProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ldagger/internal/MapProviderFactory<",
            "TK;TV;>;"
        }
    .end annotation

    .line 54
    sget-object v0, Ldagger/internal/MapProviderFactory;->EMPTY:Ldagger/internal/MapProviderFactory;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0}, Ldagger/internal/MapProviderFactory;->get()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljavax/inject/Provider<",
            "TV;>;>;"
        }
    .end annotation

    .line 68
    iget-object p0, p0, Ldagger/internal/MapProviderFactory;->contributingMap:Ljava/util/Map;

    return-object p0
.end method
