.class Landroid/support/v4/util/ArraySet$1;
.super Landroid/support/v4/util/MapCollections;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/util/ArraySet;->getCollection()Landroid/support/v4/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/MapCollections<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/util/ArraySet;


# direct methods
.method constructor <init>(Landroid/support/v4/util/ArraySet;)V
    .locals 0

    .line 666
    iput-object p1, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;

    invoke-direct {p0}, Landroid/support/v4/util/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 0

    .line 709
    iget-object p0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;

    invoke-virtual {p0}, Landroid/support/v4/util/ArraySet;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 0

    .line 674
    iget-object p0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;

    iget-object p0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    .line 689
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not a map"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected colGetSize()I
    .locals 0

    .line 669
    iget-object p0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;

    iget p0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    return p0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 0

    .line 679
    iget-object p0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 0

    .line 684
    iget-object p0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 694
    iget-object p0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 0

    .line 704
    iget-object p0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 699
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not a map"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
