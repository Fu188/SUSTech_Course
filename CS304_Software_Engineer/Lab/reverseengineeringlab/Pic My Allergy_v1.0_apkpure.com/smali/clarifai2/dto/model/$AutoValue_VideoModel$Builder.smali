.class final Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;
.super Ljava/lang/Object;
.source "$AutoValue_VideoModel.java"

# interfaces
.implements Lclarifai2/dto/model/VideoModel$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclarifai2/dto/model/$AutoValue_VideoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private _outputInfo:Lclarifai2/dto/model/output_info/OutputInfo;

.field private appID:Ljava/lang/String;

.field private client:Lclarifai2/api/ClarifaiClient;

.field private createdAt:Ljava/util/Date;

.field private id:Ljava/lang/String;

.field private modelVersion:Lclarifai2/dto/model/ModelVersion;

.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lclarifai2/dto/model/VideoModel;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-virtual {p1}, Lclarifai2/dto/model/VideoModel;->id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->id:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Lclarifai2/dto/model/VideoModel;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->name:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Lclarifai2/dto/model/VideoModel;->createdAt()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->createdAt:Ljava/util/Date;

    .line 155
    invoke-virtual {p1}, Lclarifai2/dto/model/VideoModel;->appID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->appID:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Lclarifai2/dto/model/VideoModel;->modelVersion()Lclarifai2/dto/model/ModelVersion;

    move-result-object v0

    iput-object v0, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->modelVersion:Lclarifai2/dto/model/ModelVersion;

    .line 157
    invoke-virtual {p1}, Lclarifai2/dto/model/VideoModel;->_outputInfo()Lclarifai2/dto/model/output_info/OutputInfo;

    move-result-object v0

    iput-object v0, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->_outputInfo:Lclarifai2/dto/model/output_info/OutputInfo;

    .line 158
    invoke-virtual {p1}, Lclarifai2/dto/model/VideoModel;->client()Lclarifai2/api/ClarifaiClient;

    move-result-object p1

    iput-object p1, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->client:Lclarifai2/api/ClarifaiClient;

    return-void
.end method


# virtual methods
.method public bridge synthetic _outputInfo(Lclarifai2/dto/model/output_info/OutputInfo;)Lclarifai2/dto/model/Model$Builder;
    .locals 0
    .param p1    # Lclarifai2/dto/model/output_info/OutputInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 141
    invoke-virtual {p0, p1}, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->_outputInfo(Lclarifai2/dto/model/output_info/OutputInfo;)Lclarifai2/dto/model/VideoModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public _outputInfo(Lclarifai2/dto/model/output_info/OutputInfo;)Lclarifai2/dto/model/VideoModel$Builder;
    .locals 0
    .param p1    # Lclarifai2/dto/model/output_info/OutputInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 187
    iput-object p1, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->_outputInfo:Lclarifai2/dto/model/output_info/OutputInfo;

    return-object p0
.end method

.method public bridge synthetic appID(Ljava/lang/String;)Lclarifai2/dto/model/Model$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 141
    invoke-virtual {p0, p1}, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->appID(Ljava/lang/String;)Lclarifai2/dto/model/VideoModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public appID(Ljava/lang/String;)Lclarifai2/dto/model/VideoModel$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 177
    iput-object p1, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->appID:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lclarifai2/dto/model/Model;
    .locals 0

    .line 141
    invoke-virtual {p0}, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->build()Lclarifai2/dto/model/VideoModel;

    move-result-object p0

    return-object p0
.end method

.method public build()Lclarifai2/dto/model/VideoModel;
    .locals 9

    const-string v0, ""

    .line 198
    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->id:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " id"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_0
    iget-object v1, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->client:Lclarifai2/api/ClarifaiClient;

    if-nez v1, :cond_1

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " client"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing required properties:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_2
    new-instance v0, Lclarifai2/dto/model/AutoValue_VideoModel;

    iget-object v2, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->id:Ljava/lang/String;

    iget-object v3, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->name:Ljava/lang/String;

    iget-object v4, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->createdAt:Ljava/util/Date;

    iget-object v5, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->appID:Ljava/lang/String;

    iget-object v6, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->modelVersion:Lclarifai2/dto/model/ModelVersion;

    iget-object v7, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->_outputInfo:Lclarifai2/dto/model/output_info/OutputInfo;

    iget-object v8, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->client:Lclarifai2/api/ClarifaiClient;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lclarifai2/dto/model/AutoValue_VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lclarifai2/dto/model/ModelVersion;Lclarifai2/dto/model/output_info/OutputInfo;Lclarifai2/api/ClarifaiClient;)V

    return-object v0
.end method

.method public bridge synthetic client(Lclarifai2/api/ClarifaiClient;)Lclarifai2/dto/model/Model$Builder;
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->client(Lclarifai2/api/ClarifaiClient;)Lclarifai2/dto/model/VideoModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public client(Lclarifai2/api/ClarifaiClient;)Lclarifai2/dto/model/VideoModel$Builder;
    .locals 0

    .line 192
    iput-object p1, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->client:Lclarifai2/api/ClarifaiClient;

    return-object p0
.end method

.method public bridge synthetic createdAt(Ljava/util/Date;)Lclarifai2/dto/model/Model$Builder;
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 141
    invoke-virtual {p0, p1}, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->createdAt(Ljava/util/Date;)Lclarifai2/dto/model/VideoModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public createdAt(Ljava/util/Date;)Lclarifai2/dto/model/VideoModel$Builder;
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 172
    iput-object p1, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->createdAt:Ljava/util/Date;

    return-object p0
.end method

.method public bridge synthetic id(Ljava/lang/String;)Lclarifai2/dto/model/Model$Builder;
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->id(Ljava/lang/String;)Lclarifai2/dto/model/VideoModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public id(Ljava/lang/String;)Lclarifai2/dto/model/VideoModel$Builder;
    .locals 0

    .line 162
    iput-object p1, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic modelVersion(Lclarifai2/dto/model/ModelVersion;)Lclarifai2/dto/model/Model$Builder;
    .locals 0
    .param p1    # Lclarifai2/dto/model/ModelVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 141
    invoke-virtual {p0, p1}, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->modelVersion(Lclarifai2/dto/model/ModelVersion;)Lclarifai2/dto/model/VideoModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public modelVersion(Lclarifai2/dto/model/ModelVersion;)Lclarifai2/dto/model/VideoModel$Builder;
    .locals 0
    .param p1    # Lclarifai2/dto/model/ModelVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 182
    iput-object p1, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->modelVersion:Lclarifai2/dto/model/ModelVersion;

    return-object p0
.end method

.method public bridge synthetic name(Ljava/lang/String;)Lclarifai2/dto/model/Model$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 141
    invoke-virtual {p0, p1}, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->name(Ljava/lang/String;)Lclarifai2/dto/model/VideoModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lclarifai2/dto/model/VideoModel$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 167
    iput-object p1, p0, Lclarifai2/dto/model/$AutoValue_VideoModel$Builder;->name:Ljava/lang/String;

    return-object p0
.end method
