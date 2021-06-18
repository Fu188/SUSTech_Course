.class public Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Results.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results$ButtonListenerAllergies;,
        Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results$ButtonListenerAnother;
    }
.end annotation


# instance fields
.field allergies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field allergyNums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field dangerFoods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field image:Landroid/graphics/Bitmap;

.field imageURI:Landroid/net/Uri;

.field imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "RESULTS ONCREATE"

    const-string v0, "INSIDE"

    .line 40
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0b001c

    .line 43
    invoke-virtual {p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "allergies"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->allergies:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "allergyNums"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->allergyNums:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 58
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 59
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "LISTING THE EXTRAS: "

    .line 60
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v1, "danger"

    .line 63
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->dangerFoods:Ljava/util/HashMap;

    const v1, 0x7f090086

    .line 64
    invoke-virtual {p0, v1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 68
    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->dangerFoods:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->dangerFoods:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->dangerFoods:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 78
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f050058

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 81
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v4, "<b>"

    .line 82
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move v4, v0

    .line 84
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 85
    iget-object v5, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->dangerFoods:Ljava/util/HashMap;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    .line 87
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v5, "%</b> chance that this food has <b>"

    .line 88
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 89
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v5, "</b>\n<br><b>"

    .line 90
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 92
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "RESULTS ONCREATE"

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HASHMAP"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    :goto_3
    const-string v2, "There is a very high chance that this food is safe!"

    .line 70
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const-string v1, "THIS FOOD IS SAFE"

    const-string v2, "THIS FOOD IS SAFE TO EAT"

    .line 72
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    const v1, 0x7f09005f

    .line 98
    invoke-virtual {p0, v1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->imageView:Landroid/widget/ImageView;

    const-string v1, "imageURI"

    .line 101
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 103
    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "imageURI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->imageURI:Landroid/net/Uri;

    .line 104
    iget-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->imageURI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    const-string p1, "RESULTS ONCREATE"

    const-string v0, "IMAGE IS NOT NULL AND HAS BEEN RECEIVED"

    .line 105
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    const-string v1, "image"

    .line 108
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v0, "image"

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->image:Landroid/graphics/Bitmap;

    .line 111
    iget-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_6
    const-string p1, "We did not get your picture"

    .line 115
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_5
    const p1, 0x7f090022

    .line 120
    invoke-virtual {p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 121
    new-instance v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results$ButtonListenerAllergies;

    invoke-direct {v0, p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results$ButtonListenerAllergies;-><init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;)V

    .line 122
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090025

    .line 124
    invoke-virtual {p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 125
    new-instance v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results$ButtonListenerAnother;

    invoke-direct {v0, p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results$ButtonListenerAnother;-><init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;)V

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
