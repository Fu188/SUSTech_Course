.class public Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiSpinner.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field arrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;",
            ">;"
        }
    .end annotation
.end field

.field inflater:Landroid/view/LayoutInflater;

.field mOriginalValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;


# direct methods
.method public constructor <init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;",
            ">;)V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 217
    iput-object p3, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->arrayList:Ljava/util/List;

    .line 218
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->arrayList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 299
    new-instance v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$2;

    invoke-direct {v0, p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$2;-><init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 228
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 243
    invoke-static {}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getView() enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 247
    new-instance p2, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$ViewHolder;

    invoke-direct {p2, p0, v1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$ViewHolder;-><init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$1;)V

    .line 248
    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b002d

    invoke-virtual {v2, v3, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v2, 0x7f09001f

    .line 249
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const v2, 0x7f09001c

    .line 250
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p2, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 252
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$ViewHolder;

    .line 257
    :goto_0
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1

    const v2, 0x7f05003d

    goto :goto_1

    :cond_1
    const v2, 0x7f05003e

    .line 258
    :goto_1
    iget-object v3, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    invoke-virtual {v3}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 260
    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    .line 262
    iget-object v2, p3, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v2, p3, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 264
    iget-object v2, p3, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->isSelected()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 266
    new-instance v2, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$1;-><init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    invoke-virtual {p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 284
    iget-object p1, p3, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 285
    iget-object p1, p3, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    invoke-virtual {v0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f05004f

    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 289
    :cond_2
    iget-object p1, p3, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05001e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    :goto_2
    iget-object p0, p3, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
