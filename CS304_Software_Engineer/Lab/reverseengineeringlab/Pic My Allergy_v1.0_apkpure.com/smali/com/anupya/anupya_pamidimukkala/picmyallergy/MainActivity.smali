.class public Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity$ButtonListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

.field private allergies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allergyNums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;",
            ">;"
        }
    .end annotation
.end field

.field private spinner:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;)Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->spinner:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    return-object p0
.end method

.method static synthetic access$100(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->allergies:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->allergies:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->allergyNums:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->allergyNums:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;)Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->adapter:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 35
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001b

    .line 37
    invoke-virtual {p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->setContentView(I)V

    const p1, 0x7f090029

    .line 40
    invoke-virtual {p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x4

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f09002f

    .line 44
    invoke-virtual {p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 45
    new-instance v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity$ButtonListener;

    invoke-direct {v0, p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity$ButtonListener;-><init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;)V

    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900a7

    .line 49
    invoke-virtual {p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->spinner:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    .line 52
    new-instance p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->spinner:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0, p0, v1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;-><init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->adapter:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    .line 53
    iget-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->spinner:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->adapter:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    invoke-virtual {p1, v0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 p1, 0x0

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "foods.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 60
    new-array v1, v1, [B

    .line 61
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 62
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 63
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, p1

    .line 68
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->items:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 70
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v0, "MAINACTIVITY"

    const-string v3, "JSON ARRAY CREATED"

    .line 71
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 72
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 73
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 74
    new-instance v4, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;

    invoke-direct {v4}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;-><init>()V

    const-string v5, "foods"

    .line 75
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->setName(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v4, v0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->setIndex(I)V

    .line 77
    invoke-virtual {v4, v1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/KeyPairBoolData;->setSelected(Z)V

    .line 79
    iget-object v3, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 83
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :try_start_2
    const-string v0, "MAIN ACTIVITY"

    const-string v2, "TRYING ALLERGYNUMS"

    .line 89
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "allergyNums"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->allergyNums:Ljava/util/ArrayList;

    const-string v0, "MAIN ACTIVITY"

    const-string v2, "ALLERGYNUMS HAVE BEEN RECEIVED"

    .line 91
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 92
    :goto_2
    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->allergyNums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    const-string v2, "MAIN ACTIVITY"

    .line 93
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->spinner:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    iget-object v3, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->items:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->allergyNums:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->setItems(Ljava/util/List;ILcom/anupya/anupya_pamidimukkala/picmyallergy/SpinnerListener;)V

    const-string v2, "MAIN ACTIVITY"

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALLERGYNUM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_2
    const-string v0, "MAINACTIVITY"

    const-string v2, "ALLERGY NUMS IS EMPTY"

    .line 99
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->allergyNums:Ljava/util/ArrayList;

    .line 101
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->spinner:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->setItems(Ljava/util/List;ILcom/anupya/anupya_pamidimukkala/picmyallergy/SpinnerListener;)V

    .line 102
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->spinner:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;

    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->items:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner;->setItems(Ljava/util/List;ILcom/anupya/anupya_pamidimukkala/picmyallergy/SpinnerListener;)V

    .line 103
    iget-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->allergyNums:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->allergyNums:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "MAINACTIVITY"

    const-string v0, "SET DEFAULTS TO ACORN SQUASH AND ALMONDS"

    .line 105
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MainActivity;->adapter:Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;

    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/MultiSpinner$MyAdapter;->notifyDataSetChanged()V

    return-void
.end method
