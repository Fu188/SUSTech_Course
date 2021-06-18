.class Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$2;
.super Landroid/widget/Filter;
.source "MultiSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;


# direct methods
.method constructor <init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$2;->this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .line 311
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$2;->this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    iget-object v2, v2, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->mOriginalValues:Ljava/util/List;

    if-nez v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$2;->this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$2;->this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    iget-object v4, v4, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->arrayList:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->mOriginalValues:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_4

    .line 324
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 330
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 331
    :goto_0
    iget-object v3, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$2;->this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    iget-object v3, v3, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 332
    invoke-static {}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filter : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$2;->this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    iget-object v5, v5, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    invoke-virtual {v5}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$2;->this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    iget-object v5, v5, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    invoke-virtual {v5}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->isSelected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v3, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$2;->this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    iget-object v3, v3, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    invoke-virtual {v3}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->getName()Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 335
    iget-object v3, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$2;->this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    iget-object v3, v3, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    iput p0, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 340
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_2

    .line 327
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$2;->this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    iget-object p1, p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 328
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$2;->this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->mOriginalValues:Ljava/util/List;

    iput-object p0, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_2
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 305
    iget-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$2;->this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iput-object p2, p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->arrayList:Ljava/util/List;

    .line 306
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$2;->this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->notifyDataSetChanged()V

    return-void
.end method
