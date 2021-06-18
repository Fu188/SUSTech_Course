.class public Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;
.super Landroid/support/v7/widget/AppCompatSpinner;
.source "MultiSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiSpinner"

.field public static ad:Landroid/app/AlertDialog;

.field public static builder:Landroid/app/AlertDialog$Builder;


# instance fields
.field adapter:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

.field private defaultText:Ljava/lang/String;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/anupya/anupya_pamidimukkala/picmyallergy/SpinnerListener;

.field private selected:I

.field private spinnerTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 36
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->defaultText:Ljava/lang/String;

    const-string p1, ""

    .line 37
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->spinnerTitle:Ljava/lang/String;

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->selected:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->defaultText:Ljava/lang/String;

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->spinnerTitle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->selected:I

    .line 51
    sget-object v1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/R$styleable;->MultiSpinner:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 52
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    if-ge v0, p2, :cond_1

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p2

    if-nez p2, :cond_0

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->spinnerTitle:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    :goto_1
    sget-object p2, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spinnerTitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->spinnerTitle:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 36
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->defaultText:Ljava/lang/String;

    const-string p1, ""

    .line 37
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->spinnerTitle:Ljava/lang/String;

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->selected:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->items:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$308(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;)I
    .locals 2

    .line 33
    iget v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->selected:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->selected:I

    return v0
.end method

.method static synthetic access$310(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;)I
    .locals 2

    .line 33
    iget v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->selected:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->selected:I

    return v0
.end method


# virtual methods
.method public getSelectedIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->items:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    .line 82
    invoke-virtual {v1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {v1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSelectedItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;",
            ">;"
        }
    .end annotation

    const-string v0, "GETSELECTEDITEMS"

    const-string v1, "GETTING SELECTED ITEMS"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->items:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    .line 72
    invoke-virtual {v1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5

    const-string p1, "ONCANCEL"

    const-string v0, "REFRESHED TEXT ON SPINNER"

    .line 93
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    invoke-virtual {v2}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    invoke-virtual {v2}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 99
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ONCANCEL"

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spinnerText"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "Select an allergy"

    .line 112
    :goto_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0042

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0, v1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 115
    iget-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->adapter:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    if-eqz p1, :cond_3

    .line 116
    iget-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->adapter:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    invoke-virtual {p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->notifyDataSetChanged()V

    .line 118
    :cond_3
    iget-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->listener:Lcom/anupya/anupya_pamidimukkala/picmyallergy/SpinnerListener;

    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->items:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/SpinnerListener;->onItemsSelected(Ljava/util/List;)V

    return-void
.end method

.method public performClick()Z
    .locals 5

    const-string v0, "PERFORMCLICK"

    const-string v1, "INSIDE"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0197

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->builder:Landroid/app/AlertDialog$Builder;

    .line 126
    sget-object v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->spinnerTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 128
    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0b002e

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09001e

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const/4 v2, 0x2

    .line 134
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    const/4 v2, 0x0

    .line 135
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 137
    new-instance v2, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->items:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;-><init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->adapter:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    .line 138
    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->adapter:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v2, "PERFORMCLICK"

    const-string v3, "ADAPTER HAS BEEN SET"

    .line 140
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f090049

    .line 141
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 142
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    const v1, 0x7f09001d

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 145
    new-instance v1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$1;

    invoke-direct {v1, p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$1;-><init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 161
    sget-object v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->builder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$2;

    invoke-direct {v1, p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$2;-><init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 172
    sget-object v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    sget-object p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->ad:Landroid/app/AlertDialog;

    const-string p0, "PERFORMCLICK"

    const-string v0, "BUILDER IS SHOWING"

    .line 174
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public setItems(Ljava/util/List;ILcom/anupya/anupya_pamidimukkala/picmyallergy/SpinnerListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;",
            ">;I",
            "Lcom/anupya/anupya_pamidimukkala/picmyallergy/SpinnerListener;",
            ")V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->items:Ljava/util/List;

    .line 181
    new-instance p3, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$3;

    invoke-direct {p3, p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$3;-><init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;)V

    iput-object p3, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->listener:Lcom/anupya/anupya_pamidimukkala/picmyallergy/SpinnerListener;

    .line 188
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 190
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 191
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    invoke-virtual {v2}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    invoke-virtual {v2}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 193
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 197
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-virtual {v1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->defaultText:Ljava/lang/String;

    .line 199
    :cond_2
    new-instance p3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0042

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    iget-object v5, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->defaultText:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-direct {p3, v1, v2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p0, p3}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 p3, -0x1

    if-eq p2, p3, :cond_3

    .line 203
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    invoke-virtual {p1, v3}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->setSelected(Z)V

    const/4 p1, 0x0

    .line 205
    invoke-virtual {p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->onCancel(Landroid/content/DialogInterface;)V

    :cond_3
    return-void
.end method
