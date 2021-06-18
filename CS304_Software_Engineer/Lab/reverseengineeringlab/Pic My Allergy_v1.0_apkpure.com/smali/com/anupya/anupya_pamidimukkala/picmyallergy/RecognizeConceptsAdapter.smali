.class public Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecognizeConceptsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;",
        ">;"
    }
.end annotation


# instance fields
.field private concepts:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;->concepts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getConcepts()Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;->concepts:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;->concepts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;->onBindViewHolder(Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;I)V
    .locals 1

    .line 32
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;->concepts:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lclarifai2/dto/prediction/Concept;

    .line 33
    iget-object p2, p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;->label:Landroid/widget/TextView;

    invoke-virtual {p0}, Lclarifai2/dto/prediction/Concept;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lclarifai2/dto/prediction/Concept;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lclarifai2/dto/prediction/Concept;->id()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p1, p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;->probability:Landroid/widget/TextView;

    invoke-virtual {p0}, Lclarifai2/dto/prediction/Concept;->value()F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;
    .locals 2

    .line 28
    new-instance p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b002c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter$Holder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public setData(Ljava/util/List;)Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;)",
            "Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;->concepts:Ljava/util/List;

    .line 23
    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;->notifyDataSetChanged()V

    return-object p0
.end method
