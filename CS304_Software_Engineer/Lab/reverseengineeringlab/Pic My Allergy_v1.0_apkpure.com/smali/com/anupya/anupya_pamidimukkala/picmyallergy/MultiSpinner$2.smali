.class Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$2;
.super Ljava/lang/Object;
.source "MultiSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->performClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;


# direct methods
.method constructor <init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$2;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .line 167
    invoke-static {}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ITEMS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$2;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    invoke-static {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->access$100(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
