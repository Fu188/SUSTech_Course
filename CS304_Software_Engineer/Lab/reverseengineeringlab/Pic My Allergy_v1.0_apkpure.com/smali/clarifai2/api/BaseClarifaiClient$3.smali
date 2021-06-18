.class Lclarifai2/api/BaseClarifaiClient$3;
.super Ljava/lang/Object;
.source "BaseClarifaiClient.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/api/BaseClarifaiClient;->vendGson()Lcom/google/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lclarifai2/api/ClarifaiClient;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/api/BaseClarifaiClient;


# direct methods
.method constructor <init>(Lclarifai2/api/BaseClarifaiClient;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lclarifai2/api/BaseClarifaiClient$3;->this$0:Lclarifai2/api/BaseClarifaiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lclarifai2/api/ClarifaiClient;
    .locals 0

    .line 190
    iget-object p0, p0, Lclarifai2/api/BaseClarifaiClient$3;->this$0:Lclarifai2/api/BaseClarifaiClient;

    return-object p0
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 186
    invoke-virtual {p0, p1, p2, p3}, Lclarifai2/api/BaseClarifaiClient$3;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lclarifai2/api/ClarifaiClient;

    move-result-object p0

    return-object p0
.end method
