.class public Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Upload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListenerUpload;,
        Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListenerAnother;,
        Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListener;
    }
.end annotation


# static fields
.field private static final CAMERA_REQUEST:I = 0x1

.field public static final GET_FROM_GALLERY:I = 0x3


# instance fields
.field private final adapter:Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

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

.field cameraIntent:Landroid/content/Intent;

.field danger:Ljava/util/HashMap;
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
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->imageView:Landroid/widget/ImageView;

    .line 50
    new-instance v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;

    invoke-direct {v0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;-><init>()V

    iput-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->adapter:Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;)Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->adapter:Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;

    return-object p0
.end method

.method private onImagePicked([B)V
    .locals 2
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ONIMAGEPICKED"

    const-string v1, "inside onImagePicked"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->adapter:Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;->setData(Ljava/util/List;)Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;

    .line 254
    :try_start_0
    new-instance v0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;

    invoke-direct {v0, p0, p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;-><init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;[B)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 257
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "ONACTIVITYRESULT"

    const-string v1, "INSIDE"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f090075

    .line 84
    invoke-virtual {p0, v0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_6

    const/4 p2, 0x4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p1, "ONACTIVITYRESULT"

    const-string v3, "GETTING FROM GALLERY"

    .line 110
    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {p0, p3, v1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/ClarifaiUtil;->retrieveSelectedImage(Landroid/content/Context;Landroid/content/Intent;Z)[B

    move-result-object p1

    const-string v1, "ONACTIVITYRESULT"

    const-string v3, "BEFORE PERMISSIONS"

    .line 113
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 116
    invoke-virtual {p0, v1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, "ONACTIVITYRESULT"

    const-string p3, "PERMISSIONS ARE ABOUT TO BE GRANTED"

    .line 118
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 120
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v2}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->requestPermissions([Ljava/lang/String;I)V

    const-string p2, "ONACTIVITYRESULT"

    const-string p3, "PERMISSIONS HAVE BEEN SUCCESSFULLY GRANTED"

    .line 122
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_1
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    iput-object p3, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->imageURI:Landroid/net/Uri;

    .line 130
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p2, "ONACTIVITYRESULT"

    const-string p3, "SUCCESSFULLY PUT IMAGE IN image"

    .line 132
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->imageView:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 136
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    :goto_0
    iget-object p2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->image:Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    const-string p2, "ONACTIVITYRESULT"

    const-string p3, "IMAGE IS NULL"

    .line 141
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_3

    .line 145
    invoke-direct {p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->onImagePicked([B)V

    :cond_3
    const-string p1, "ONACTIVITYRESULT"

    const-string p2, "REACHED THE END OF THE ONACTIVITYRESULT"

    .line 148
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 90
    invoke-static {p0, p3, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/ClarifaiUtil;->retrieveSelectedImage(Landroid/content/Context;Landroid/content/Intent;Z)[B

    move-result-object p1

    .line 93
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->image:Landroid/graphics/Bitmap;

    .line 94
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p2, 0x0

    .line 97
    iput-object p2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->imageURI:Landroid/net/Uri;

    .line 98
    iget-object p2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->image:Landroid/graphics/Bitmap;

    if-nez p2, :cond_5

    const-string p2, "ONACTIVITYRESULT"

    const-string v0, "IMAGE IS NULL"

    .line 99
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_5
    iget-object p2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_6

    .line 104
    invoke-direct {p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->onImagePicked([B)V

    :cond_6
    :goto_1
    const p1, 0x7f090024

    .line 156
    invoke-virtual {p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 157
    new-instance p2, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListener;

    invoke-direct {p2, p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListener;-><init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;)V

    .line 158
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090025

    .line 160
    invoke-virtual {p0, p2}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 161
    new-instance p3, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListenerAnother;

    invoke-direct {p3, p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListenerAnother;-><init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;)V

    .line 162
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900c8

    .line 164
    invoke-virtual {p0, p2}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 165
    new-instance p3, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListenerUpload;

    invoke-direct {p3, p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListenerUpload;-><init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;)V

    .line 166
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p0, "ONACTIVITYRESULT"

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DOES BTN NEXT SCREEN HAVE ONCLICK LISTENERS"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/Button;->hasOnClickListeners()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    .line 56
    invoke-virtual {p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->setContentView(I)V

    const p1, 0x7f09005f

    .line 57
    invoke-virtual {p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->imageView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->imageURI:Landroid/net/Uri;

    .line 60
    invoke-virtual {p0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :try_start_0
    const-string v0, "allergies"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->allergies:Ljava/util/ArrayList;

    const-string v0, "allergyNums"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->allergyNums:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->danger:Ljava/util/HashMap;

    const-string p1, "UPLOAD"

    const-string v0, "CAMERAINTENT IS INTIIALIZED"

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->cameraIntent:Landroid/content/Intent;

    .line 73
    iget-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->cameraIntent:Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
