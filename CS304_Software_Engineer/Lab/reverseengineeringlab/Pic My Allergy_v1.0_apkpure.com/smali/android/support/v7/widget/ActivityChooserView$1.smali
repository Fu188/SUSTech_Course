.class Landroid/support/v7/widget/ActivityChooserView$1;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActivityChooserView;)V
    .locals 0

    .line 132
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$1;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 136
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 137
    iget-object p0, p0, Landroid/support/v7/widget/ActivityChooserView$1;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object p0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 141
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 142
    iget-object p0, p0, Landroid/support/v7/widget/ActivityChooserView$1;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object p0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
