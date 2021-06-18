.class Lclarifai2/dto/model/DefaultModels$1;
.super Ljava/lang/Object;
.source "DefaultModels.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/model/DefaultModels;->create(Lclarifai2/dto/model/ModelType;Lclarifai2/api/BaseClarifaiClient;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/model/DefaultModels;

.field final synthetic val$client:Lclarifai2/api/BaseClarifaiClient;

.field final synthetic val$model:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lclarifai2/dto/model/DefaultModels;Lclarifai2/api/BaseClarifaiClient;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lclarifai2/dto/model/DefaultModels$1;->this$0:Lclarifai2/dto/model/DefaultModels;

    iput-object p2, p0, Lclarifai2/dto/model/DefaultModels$1;->val$client:Lclarifai2/api/BaseClarifaiClient;

    iput-object p3, p0, Lclarifai2/dto/model/DefaultModels$1;->val$model:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 73
    iget-object v0, p0, Lclarifai2/dto/model/DefaultModels$1;->this$0:Lclarifai2/dto/model/DefaultModels;

    iget-object v1, p0, Lclarifai2/dto/model/DefaultModels$1;->val$client:Lclarifai2/api/BaseClarifaiClient;

    iget-object v2, p0, Lclarifai2/dto/model/DefaultModels$1;->val$model:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lclarifai2/dto/model/Model;

    invoke-static {v0, v1, v2}, Lclarifai2/dto/model/DefaultModels;->access$000(Lclarifai2/dto/model/DefaultModels;Lclarifai2/api/BaseClarifaiClient;Lclarifai2/dto/model/Model;)Lclarifai2/dto/model/Model;

    move-result-object v0

    .line 74
    iget-object p0, p0, Lclarifai2/dto/model/DefaultModels$1;->val$model:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
