.class Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$1;
.super Ljava/lang/Object;
.source "MultiSpinner.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 145
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$1;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$1;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->adapter:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method
