.class public Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;
.super Ljava/lang/Object;
.source "KeyPairBoolData.java"


# instance fields
.field index:I

.field isSelected:Z

.field name:Ljava/lang/String;

.field object:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->index:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->object:Ljava/lang/Object;

    return-object p0
.end method

.method public isSelected()Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->isSelected:Z

    return p0
.end method

.method public setIndex(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->index:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->name:Ljava/lang/String;

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->object:Ljava/lang/Object;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->isSelected:Z

    return-void
.end method
