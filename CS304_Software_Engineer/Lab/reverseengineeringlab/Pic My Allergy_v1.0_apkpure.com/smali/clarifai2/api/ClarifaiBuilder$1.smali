.class Lclarifai2/api/ClarifaiBuilder$1;
.super Ljava/lang/Object;
.source "ClarifaiBuilder.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/ClarifaiBuilder;->build()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lclarifai2/api/ClarifaiClient;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/ClarifaiBuilder;


# direct methods
.method constructor <init>(Lclarifai2/api/ClarifaiBuilder;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lclarifai2/api/ClarifaiBuilder$1;->this$0:Lclarifai2/api/ClarifaiBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lclarifai2/api/ClarifaiClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    new-instance v0, Lclarifai2/api/ClarifaiClientImpl;

    iget-object p0, p0, Lclarifai2/api/ClarifaiBuilder$1;->this$0:Lclarifai2/api/ClarifaiBuilder;

    invoke-direct {v0, p0}, Lclarifai2/api/ClarifaiClientImpl;-><init>(Lclarifai2/api/ClarifaiBuilder;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lclarifai2/api/ClarifaiBuilder$1;->call()Lclarifai2/api/ClarifaiClient;

    move-result-object p0

    return-object p0
.end method
