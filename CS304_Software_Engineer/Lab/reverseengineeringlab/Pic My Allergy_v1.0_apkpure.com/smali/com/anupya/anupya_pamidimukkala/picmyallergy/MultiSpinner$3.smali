.class Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$3;
.super Ljava/lang/Object;
.source "MultiSpinner.java"

# interfaces
.implements Lcom/anupya/anupya_pamidimukkala/picmyallergy/SpinnerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->setItems(Ljava/util/List;ILcom/anupya/anupya_pamidimukkala/picmyallergy/SpinnerListener;)V
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

    .line 181
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$3;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemsSelected(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
