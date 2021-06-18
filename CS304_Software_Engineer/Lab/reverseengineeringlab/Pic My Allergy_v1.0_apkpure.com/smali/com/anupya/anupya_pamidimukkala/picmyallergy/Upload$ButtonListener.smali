.class Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListener;
.super Ljava/lang/Object;
.source "Upload.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;


# direct methods
.method constructor <init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "CLICKED"

    const-string v1, "AM I ALLERGIC"

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    const v1, 0x7f090075

    invoke-virtual {v0, v1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 270
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Results;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    iget-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object p1, p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->imageURI:Landroid/net/Uri;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object p1, p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->image:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 274
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object p1, p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->imageURI:Landroid/net/Uri;

    const/4 v2, 0x4

    if-nez p1, :cond_1

    .line 280
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "image"

    .line 281
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object v0, v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "danger"

    .line 282
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object v0, v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->danger:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "allergies"

    .line 283
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object v0, v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->allergies:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "allergyNums"

    .line 284
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object v0, v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->allergyNums:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "imageURI"

    .line 290
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object v0, v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->imageURI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "danger"

    .line 291
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object v0, v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->danger:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "allergies"

    .line 292
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object v0, v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->allergies:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "allergyNums"

    .line 293
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object v0, v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->allergyNums:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 296
    :goto_0
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListener;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    invoke-virtual {p0, v1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
