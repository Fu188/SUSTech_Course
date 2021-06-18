.class final Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecognizeConceptsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Holder"
.end annotation


# instance fields
.field label:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090063
    .end annotation
.end field

.field probability:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090082
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 49
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
