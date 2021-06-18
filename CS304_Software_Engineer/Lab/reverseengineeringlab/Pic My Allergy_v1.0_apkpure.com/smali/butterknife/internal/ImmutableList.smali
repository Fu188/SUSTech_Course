.class final Lbutterknife/internal/ImmutableList;
.super Ljava/util/AbstractList;
.source "ImmutableList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final views:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 14
    iput-object p1, p0, Lbutterknife/internal/ImmutableList;->views:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .line 26
    iget-object p0, p0, Lbutterknife/internal/ImmutableList;->views:[Ljava/lang/Object;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 18
    iget-object p0, p0, Lbutterknife/internal/ImmutableList;->views:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 22
    iget-object p0, p0, Lbutterknife/internal/ImmutableList;->views:[Ljava/lang/Object;

    array-length p0, p0

    return p0
.end method
