.class Lcom/anupya/anupya_pamidimukkala/picmyallergy/App$1;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lokhttp3/logging/HttpLoggingInterceptor$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;


# direct methods
.method constructor <init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/App$1;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    .line 46
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1, p0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
