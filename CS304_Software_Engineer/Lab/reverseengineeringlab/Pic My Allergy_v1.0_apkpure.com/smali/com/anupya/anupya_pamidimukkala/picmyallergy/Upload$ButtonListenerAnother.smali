.class Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListenerAnother;
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
    name = "ButtonListenerAnother"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;


# direct methods
.method constructor <init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListenerAnother;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "CLICKED"

    const-string v1, "ANOTHER"

    .line 305
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 309
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "allergies"

    .line 311
    iget-object v1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListenerAnother;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object v1, v1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->allergies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 313
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListenerAnother;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    invoke-virtual {p0, v0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
