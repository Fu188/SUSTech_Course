.class Lclarifai2/dto/feedback/RegionFeedback$Adapter$1;
.super Ljava/lang/Object;
.source "RegionFeedback.java"

# interfaces
.implements Lclarifai2/internal/JSONAdapterFactory$Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclarifai2/dto/feedback/RegionFeedback$Adapter;->serializer()Lclarifai2/internal/JSONAdapterFactory$Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lclarifai2/internal/JSONAdapterFactory$Serializer<",
        "Lclarifai2/dto/feedback/RegionFeedback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lclarifai2/dto/feedback/RegionFeedback$Adapter;


# direct methods
.method constructor <init>(Lclarifai2/dto/feedback/RegionFeedback$Adapter;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lclarifai2/dto/feedback/RegionFeedback$Adapter$1;->this$0:Lclarifai2/dto/feedback/RegionFeedback$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lclarifai2/dto/feedback/RegionFeedback;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 7
    .param p1    # Lclarifai2/dto/feedback/RegionFeedback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    .line 63
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0

    .line 65
    :cond_0
    new-instance v0, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v0}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v1, "region_info"

    .line 66
    new-instance v2, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v2}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v3, "bounding_box"

    new-instance v4, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v4}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v5, "top_row"

    .line 69
    invoke-virtual {p1}, Lclarifai2/dto/feedback/RegionFeedback;->crop()Lclarifai2/dto/input/Crop;

    move-result-object v6

    invoke-virtual {v6}, Lclarifai2/dto/input/Crop;->top()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Number;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v4

    const-string v5, "left_col"

    .line 70
    invoke-virtual {p1}, Lclarifai2/dto/feedback/RegionFeedback;->crop()Lclarifai2/dto/input/Crop;

    move-result-object v6

    invoke-virtual {v6}, Lclarifai2/dto/input/Crop;->left()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Number;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v4

    const-string v5, "bottom_row"

    .line 71
    invoke-virtual {p1}, Lclarifai2/dto/feedback/RegionFeedback;->crop()Lclarifai2/dto/input/Crop;

    move-result-object v6

    invoke-virtual {v6}, Lclarifai2/dto/input/Crop;->bottom()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Number;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v4

    const-string v5, "right_col"

    .line 72
    invoke-virtual {p1}, Lclarifai2/dto/feedback/RegionFeedback;->crop()Lclarifai2/dto/input/Crop;

    move-result-object v6

    invoke-virtual {v6}, Lclarifai2/dto/input/Crop;->right()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/Number;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v4

    .line 68
    invoke-virtual {v2, v3, v4}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v2

    const-string v3, "feedback"

    .line 73
    invoke-virtual {p1}, Lclarifai2/dto/feedback/RegionFeedback;->feedback()Lclarifai2/api/request/feedback/Feedback;

    move-result-object v4

    invoke-virtual {v4}, Lclarifai2/api/request/feedback/Feedback;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v2

    .line 67
    invoke-virtual {v0, v1, v2}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 75
    invoke-static {p1}, Lclarifai2/dto/feedback/RegionFeedback;->access$000(Lclarifai2/dto/feedback/RegionFeedback;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-static {p1}, Lclarifai2/dto/feedback/RegionFeedback;->access$100(Lclarifai2/dto/feedback/RegionFeedback;)Lclarifai2/dto/feedback/FaceFeedback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 76
    :cond_1
    new-instance v1, Lclarifai2/internal/JSONObjectBuilder;

    invoke-direct {v1}, Lclarifai2/internal/JSONObjectBuilder;-><init>()V

    const-string v2, "data"

    .line 77
    invoke-virtual {v0, v2, v1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONObjectBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    .line 79
    :cond_2
    invoke-static {p1}, Lclarifai2/dto/feedback/RegionFeedback;->access$000(Lclarifai2/dto/feedback/RegionFeedback;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "concepts"

    .line 80
    new-instance v3, Lclarifai2/internal/JSONArrayBuilder;

    invoke-direct {v3}, Lclarifai2/internal/JSONArrayBuilder;-><init>()V

    .line 82
    invoke-static {p1}, Lclarifai2/dto/feedback/RegionFeedback;->access$000(Lclarifai2/dto/feedback/RegionFeedback;)Ljava/util/Collection;

    move-result-object v4

    new-instance v5, Lclarifai2/dto/feedback/RegionFeedback$Adapter$1$1;

    invoke-direct {v5, p0, p2}, Lclarifai2/dto/feedback/RegionFeedback$Adapter$1$1;-><init>(Lclarifai2/dto/feedback/RegionFeedback$Adapter$1;Lcom/google/gson/Gson;)V

    invoke-virtual {v3, v4, v5}, Lclarifai2/internal/JSONArrayBuilder;->addAll(Ljava/lang/Iterable;Lclarifai2/Func1;)Lclarifai2/internal/JSONArrayBuilder;

    move-result-object p0

    .line 81
    invoke-virtual {v1, v2, p0}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lclarifai2/internal/JSONArrayBuilder;)Lclarifai2/internal/JSONObjectBuilder;

    .line 89
    :cond_3
    invoke-static {p1}, Lclarifai2/dto/feedback/RegionFeedback;->access$100(Lclarifai2/dto/feedback/RegionFeedback;)Lclarifai2/dto/feedback/FaceFeedback;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p0, "face"

    .line 90
    invoke-static {p1}, Lclarifai2/dto/feedback/RegionFeedback;->access$100(Lclarifai2/dto/feedback/RegionFeedback;)Lclarifai2/dto/feedback/FaceFeedback;

    move-result-object p1

    const-class v2, Lclarifai2/dto/feedback/FaceFeedback;

    invoke-static {p2, p1, v2}, Lclarifai2/internal/InternalUtil;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lclarifai2/internal/JSONObjectBuilder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lclarifai2/internal/JSONObjectBuilder;

    .line 92
    :cond_4
    invoke-virtual {v0}, Lclarifai2/internal/JSONObjectBuilder;->build()Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/Gson;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 60
    check-cast p1, Lclarifai2/dto/feedback/RegionFeedback;

    invoke-virtual {p0, p1, p2}, Lclarifai2/dto/feedback/RegionFeedback$Adapter$1;->serialize(Lclarifai2/dto/feedback/RegionFeedback;Lcom/google/gson/Gson;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
