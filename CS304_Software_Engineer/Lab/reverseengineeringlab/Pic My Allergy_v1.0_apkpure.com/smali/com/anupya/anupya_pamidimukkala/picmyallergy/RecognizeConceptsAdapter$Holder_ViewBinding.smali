.class public final Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder_ViewBinding;
.super Ljava/lang/Object;
.source "RecognizeConceptsAdapter$Holder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder_ViewBinding;->target:Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;

    const-string p0, "field \'label\'"

    .line 20
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090063

    invoke-static {p2, v1, p0, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;->label:Landroid/widget/TextView;

    const-string p0, "field \'probability\'"

    .line 21
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090082

    invoke-static {p2, v1, p0, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;->probability:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder_ViewBinding;->target:Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;

    if-nez v0, :cond_0

    .line 27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Bindings already cleared."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder_ViewBinding;->target:Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;

    .line 30
    iput-object v1, v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;->label:Landroid/widget/TextView;

    .line 31
    iput-object v1, v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;->probability:Landroid/widget/TextView;

    return-void
.end method
