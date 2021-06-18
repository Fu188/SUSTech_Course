.class Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListenerUpload;
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
    name = "ButtonListenerUpload"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;


# direct methods
.method constructor <init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListenerUpload;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "CLICKED"

    const-string v0, "UPLOAD PHOTO FROM GALLERY"

    .line 321
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$ButtonListenerUpload;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
