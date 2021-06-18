.class Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$1;
.super Ljava/lang/Object;
.source "MultiSpinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

.field final synthetic val$data:Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;


# direct methods
.method constructor <init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$1;->this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    iput-object p2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$1;->val$data:Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$1;->val$data:Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    invoke-virtual {v0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$1;->this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    iget-object v0, v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    invoke-static {v0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->access$310(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;)I

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$1;->this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    iget-object v0, v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    invoke-static {v0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->access$308(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;)I

    .line 274
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$ViewHolder;

    .line 275
    iget-object v0, p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object p1, p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 278
    iget-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$1;->val$data:Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$1;->val$data:Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    invoke-virtual {v0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->setSelected(Z)V

    .line 279
    invoke-static {}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On Click Selected Item : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$1;->val$data:Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    invoke-virtual {v1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$1;->val$data:Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    invoke-virtual {v1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$1;->this$1:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->notifyDataSetChanged()V

    return-void
.end method
