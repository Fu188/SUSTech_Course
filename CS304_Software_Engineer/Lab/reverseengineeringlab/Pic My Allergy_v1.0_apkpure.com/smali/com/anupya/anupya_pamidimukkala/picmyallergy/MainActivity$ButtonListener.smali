.class Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity$ButtonListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;


# direct methods
.method constructor <init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 117
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;

    invoke-static {v0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->access$000(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;)Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->access$102(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 120
    iget-object v1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->access$202(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 125
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    const-string v4, "MAINACTIVITY"

    const-string v5, "CHECKED[I] IS TRUE"

    .line 127
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v4, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;

    invoke-static {v4}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->access$100(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    invoke-virtual {v5}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v4, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;

    invoke-static {v4}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->access$200(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    invoke-virtual {v5}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->getIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "ENTRY #"

    .line 131
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ENTRY IN CHECKED: "

    .line 132
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ENTRY IN CHECKED: "

    .line 133
    iget-object v5, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;

    invoke-static {v5}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->access$300(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;)Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ENTRY IN ALLERGIES: "

    .line 134
    iget-object v5, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;

    invoke-static {v5}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->access$100(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "INDEX IN ALLERGIES: "

    .line 135
    iget-object v5, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;

    invoke-static {v5}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->access$200(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;

    invoke-static {v0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->access$100(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;

    const p1, 0x7f090029

    invoke-virtual {p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 142
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 147
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "allergies"

    .line 148
    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;

    invoke-static {v2}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->access$100(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "allergyNums"

    .line 149
    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;

    invoke-static {v2}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->access$200(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 151
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 153
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;

    invoke-virtual {p0, v1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
