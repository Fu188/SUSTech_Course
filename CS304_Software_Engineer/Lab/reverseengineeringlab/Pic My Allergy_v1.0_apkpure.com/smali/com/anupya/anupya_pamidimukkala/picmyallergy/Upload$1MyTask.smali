.class Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;
.super Landroid/os/AsyncTask;
.source "Upload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->onImagePicked([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lclarifai2/api/ClarifaiResponse<",
        "Ljava/util/List<",
        "Lclarifai2/dto/model/output/ClarifaiOutput<",
        "Lclarifai2/dto/prediction/Concept;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field private activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

.field final synthetic val$imageBytes:[B


# direct methods
.method constructor <init>(Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;",
            ")V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iput-object p3, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->val$imageBytes:[B

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 181
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->activityReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lclarifai2/api/ClarifaiResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lclarifai2/api/ClarifaiResponse<",
            "Ljava/util/List<",
            "Lclarifai2/dto/model/output/ClarifaiOutput<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;>;>;"
        }
    .end annotation

    .line 187
    new-instance p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;

    invoke-direct {p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;-><init>()V

    .line 188
    invoke-static {}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;->get()Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/App;->clarifaiClient()Lclarifai2/api/ClarifaiClient;

    move-result-object p1

    invoke-interface {p1}, Lclarifai2/api/ClarifaiClient;->getDefaultModels()Lclarifai2/dto/model/DefaultModels;

    move-result-object p1

    invoke-virtual {p1}, Lclarifai2/dto/model/DefaultModels;->foodModel()Lclarifai2/dto/model/ConceptModel;

    move-result-object p1

    const-string v0, "ONIMAGEPICKED"

    const-string v1, "FOOD MODEL DAWG"

    .line 189
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p1}, Lclarifai2/dto/model/ConceptModel;->predict()Lclarifai2/api/request/model/PredictRequest;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lclarifai2/dto/input/ClarifaiInput;

    iget-object p0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->val$imageBytes:[B

    .line 192
    invoke-static {p0}, Lclarifai2/dto/input/ClarifaiImage;->of([B)Lclarifai2/dto/input/ClarifaiFileImage;

    move-result-object p0

    invoke-static {p0}, Lclarifai2/dto/input/ClarifaiInput;->forImage(Lclarifai2/dto/input/ClarifaiImage;)Lclarifai2/dto/input/ClarifaiInput;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lclarifai2/api/request/model/PredictRequest;->withInputs([Lclarifai2/dto/input/ClarifaiInput;)Lclarifai2/api/request/model/PredictRequest;

    move-result-object p0

    .line 193
    invoke-virtual {p0}, Lclarifai2/api/request/model/PredictRequest;->executeSync()Lclarifai2/api/ClarifaiResponse;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 177
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->doInBackground([Ljava/lang/Void;)Lclarifai2/api/ClarifaiResponse;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lclarifai2/api/ClarifaiResponse;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclarifai2/api/ClarifaiResponse<",
            "Ljava/util/List<",
            "Lclarifai2/dto/model/output/ClarifaiOutput<",
            "Lclarifai2/dto/prediction/Concept;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "ONIMAGEPICKED"

    const-string v1, "inside onPostExecute"

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p1}, Lclarifai2/api/ClarifaiResponse;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "ONIMAGEPICKED"

    const-string v2, "RESPONSE IS NOT SUCCESSFUL"

    .line 200
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    const-string v2, "Permission denied to read your external storage"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 204
    :cond_0
    invoke-virtual {p1}, Lclarifai2/api/ClarifaiResponse;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const-string v0, "ONIMAGEPICKED"

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PREDICTIONS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "ONIMAGEPICKED"

    const-string v2, "predictions are not empty"

    .line 210
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ONIMAGEPICKED"

    const-string v2, "response is successful"

    .line 211
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    invoke-static {v0}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->access$000(Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;)Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lclarifai2/dto/model/output/ClarifaiOutput;

    invoke-virtual {v2}, Lclarifai2/dto/model/output/ClarifaiOutput;->data()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;->setData(Ljava/util/List;)Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;

    const-string v0, "ONIMAGEPICKED"

    const-string v2, "adapter.setData has run"

    .line 215
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ONIMAGEPICKED"

    .line 216
    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    invoke-static {v2}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->access$000(Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;)Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lclarifai2/dto/model/output/ClarifaiOutput;

    invoke-virtual {p1}, Lclarifai2/dto/model/output/ClarifaiOutput;->data()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;->setData(Ljava/util/List;)Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object p1, p1, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->val$imageBytes:[B

    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->val$imageBytes:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string p1, "ONIMAGEPICKED"

    const-string v0, "imageView.setImageBitmap has run"

    .line 218
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p1, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    invoke-static {p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->access$000(Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;)Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;->getConcepts()Ljava/util/List;

    move-result-object p1

    move v0, v1

    .line 221
    :goto_0
    iget-object v2, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    invoke-static {v2}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->access$000(Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;)Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/RecognizeConceptsAdapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    const-string v2, "ONIMAGEPICKED"

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADAPTER ITEM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ONIMAGEPICKED"

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADAPTER ITEM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lclarifai2/dto/prediction/Concept;

    invoke-virtual {v4}, Lclarifai2/dto/prediction/Concept;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x14

    .line 227
    new-array v2, v0, [Ljava/lang/String;

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_3

    .line 229
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lclarifai2/dto/prediction/Concept;

    invoke-virtual {v4}, Lclarifai2/dto/prediction/Concept;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v0, "ONIMAGEPICKED"

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALLERGIES LENGTH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object v4, v4, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->allergies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ONIMAGEPICKED"

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAG LENGTH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 238
    :goto_2
    iget-object v3, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object v3, v3, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->allergies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    const-string v3, "ONIMAGEPICKED"

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALLERGIES "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object v5, v5, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->allergies:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 240
    :goto_3
    array-length v4, v2

    if-ge v3, v4, :cond_5

    const-string v4, "ONIMAGEPICKED"

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TAGS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v4, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object v4, v4, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->allergies:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 243
    iget-object v4, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object v4, v4, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->danger:Ljava/util/HashMap;

    aget-object v5, v2, v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lclarifai2/dto/prediction/Concept;

    invoke-virtual {v6}, Lclarifai2/dto/prediction/Concept;->value()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ONIMAGEPICKED"

    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DANGER ENTRY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v3

    .line 245
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->this$0:Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;

    iget-object v6, v6, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload;->danger:Ljava/util/HashMap;

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 244
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_6
    const-string p0, "ONIMAGEPICKED"

    const-string p1, "TAG AND ALLERGY ARRAYS HAVE BEEN CREATED"

    .line 249
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 177
    check-cast p1, Lclarifai2/api/ClarifaiResponse;

    invoke-virtual {p0, p1}, Lcom/anupya/anupya_pamidimukkala/picmyallergy/Upload$1MyTask;->onPostExecute(Lclarifai2/api/ClarifaiResponse;)V

    return-void
.end method
