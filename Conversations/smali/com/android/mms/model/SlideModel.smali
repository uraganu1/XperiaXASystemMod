.class public Lcom/android/mms/model/SlideModel;
.super Lcom/android/mms/model/Model;
.source "SlideModel.java"

# interfaces
.implements Ljava/util/List;
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/MediaModel;",
        ">;",
        "Lorg/w3c/dom/events/EventListener;"
    }
.end annotation


# instance fields
.field private mAttachment:Lcom/android/mms/model/MediaModel;

.field private mAudio:Lcom/android/mms/model/MediaModel;

.field private mCanAddAttachment:Z

.field private mCanAddAudio:Z

.field private mCanAddImage:Z

.field private mCanAddVideo:Z

.field private mDuration:I

.field private mFill:S

.field private final mId:Ljava/lang/String;

.field private mImage:Lcom/android/mms/model/MediaModel;

.field private final mMedia:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Lcom/android/mms/model/SlideshowModel;

.field private mSlideSize:I

.field private mText:Lcom/android/mms/model/MediaModel;

.field private mVideo:Lcom/android/mms/model/MediaModel;

.field private mVisible:Z


# direct methods
.method public constructor <init>(ILcom/android/mms/model/SlideshowModel;)V
    .locals 2
    .param p1, "duration"    # I
    .param p2, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    .line 62
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddAttachment:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 75
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideModel;->mId:Ljava/lang/String;

    .line 82
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 83
    iput-object p2, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    .line 81
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 6
    .param p1, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/model/MediaModel;>;"
    const/4 v5, 0x1

    .line 96
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 54
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    .line 62
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 63
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 64
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 65
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mCanAddAttachment:Z

    .line 68
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 75
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mId:Ljava/lang/String;

    .line 97
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "maxDur":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "media$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 101
    .local v1, "media":Lcom/android/mms/model/MediaModel;
    invoke-direct {p0, v1}, Lcom/android/mms/model/SlideModel;->internalAdd(Lcom/android/mms/model/MediaModel;)V

    .line 103
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v3

    .line 104
    .local v3, "mediaDur":I
    if-le v3, v0, :cond_0

    .line 105
    move v0, v3

    goto :goto_0

    .line 109
    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    .end local v3    # "mediaDur":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/model/SlideshowModel;)V
    .locals 1
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 78
    const/16 v0, 0x1388

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;-><init>(ILcom/android/mms/model/SlideshowModel;)V

    .line 77
    return-void
.end method

.method private internalAdd(Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .param p1, "media"    # Lcom/android/mms/model/MediaModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 117
    if-nez p1, :cond_0

    .line 119
    return-void

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 124
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    iget-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 128
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    .line 129
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    goto :goto_0

    .line 131
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 133
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    iget-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    if-eqz v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 136
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    .line 137
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    goto :goto_0

    .line 139
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 141
    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 142
    iget-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    if-eqz v0, :cond_7

    .line 143
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 144
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    .line 145
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    goto :goto_0

    .line 148
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 150
    :cond_8
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mCanAddAttachment:Z

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAttachment:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 153
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mAttachment:Lcom/android/mms/model/MediaModel;

    .line 154
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddAttachment:Z

    goto :goto_0
.end method

.method private internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V
    .locals 6
    .param p1, "old"    # Lcom/android/mms/model/MediaModel;
    .param p2, "media"    # Lcom/android/mms/model/MediaModel;

    .prologue
    .line 160
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    .line 162
    .local v0, "addSize":I
    if-nez p1, :cond_1

    .line 163
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_0

    .line 164
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 166
    :cond_0
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->increaseSlideSize(I)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->increaseMessageSize(I)V

    .line 185
    :goto_0
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "observer$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/IModelChangedObserver;

    .line 186
    .local v1, "observer":Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v1}, Lcom/android/mms/model/MediaModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_1

    .line 170
    .end local v1    # "observer":Lcom/android/mms/model/IModelChangedObserver;
    .end local v2    # "observer$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v3

    .line 171
    .local v3, "removeSize":I
    if-le v0, v3, :cond_3

    .line 172
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_2

    .line 173
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    sub-int v5, v0, v3

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 175
    :cond_2
    sub-int v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->increaseSlideSize(I)V

    .line 176
    sub-int v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->increaseMessageSize(I)V

    .line 181
    :goto_2
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 178
    :cond_3
    sub-int v4, v3, v0

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->decreaseSlideSize(I)V

    .line 179
    sub-int v4, v3, v0

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->decreaseMessageSize(I)V

    goto :goto_2

    .line 159
    .end local v3    # "removeSize":I
    .restart local v2    # "observer$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private internalRemove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/16 v4, 0x1388

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 191
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 192
    instance-of v1, p1, Lcom/android/mms/model/TextModel;

    if-eqz v1, :cond_1

    .line 193
    iput-object v3, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    :cond_0
    :goto_0
    move-object v1, p1

    .line 210
    check-cast v1, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    .line 211
    .local v0, "decreaseSize":I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->decreaseSlideSize(I)V

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->decreaseMessageSize(I)V

    .line 214
    check-cast p1, Lcom/android/mms/model/Model;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 216
    return v2

    .line 194
    .end local v0    # "decreaseSize":I
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/android/mms/model/ImageModel;

    if-eqz v1, :cond_2

    .line 195
    iput-object v3, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    .line 196
    iput-boolean v2, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    goto :goto_0

    .line 197
    :cond_2
    instance-of v1, p1, Lcom/android/mms/model/AudioModel;

    if-eqz v1, :cond_3

    .line 198
    iput-object v3, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    .line 199
    iput v4, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 200
    iput-boolean v2, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    goto :goto_0

    .line 201
    :cond_3
    instance-of v1, p1, Lcom/android/mms/model/VideoModel;

    if-eqz v1, :cond_4

    .line 202
    iput-object v3, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    .line 203
    iput v4, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 204
    iput-boolean v2, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 205
    iput-boolean v2, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    goto :goto_0

    .line 206
    :cond_4
    instance-of v1, p1, Lcom/sonyericsson/conversations/model/AttachmentModel;

    if-eqz v1, :cond_0

    .line 207
    iput-object v3, p0, Lcom/android/mms/model/SlideModel;->mAttachment:Lcom/android/mms/model/MediaModel;

    .line 208
    iput-boolean v2, p0, Lcom/android/mms/model/SlideModel;->mCanAddAttachment:Z

    goto :goto_0

    .line 219
    :cond_5
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public add(ILcom/android/mms/model/MediaModel;)V
    .locals 2
    .param p1, "location"    # I
    .param p2, "object"    # Lcom/android/mms/model/MediaModel;

    .prologue
    .line 371
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 370
    check-cast p2, Lcom/android/mms/model/MediaModel;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideModel;->add(ILcom/android/mms/model/MediaModel;)V

    return-void
.end method

.method public add(Lcom/android/mms/model/MediaModel;)Z
    .locals 1
    .param p1, "object"    # Lcom/android/mms/model/MediaModel;

    .prologue
    const/4 v0, 0x1

    .line 291
    invoke-direct {p0, p1}, Lcom/android/mms/model/SlideModel;->internalAdd(Lcom/android/mms/model/MediaModel;)V

    .line 292
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 293
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 290
    check-cast p1, Lcom/android/mms/model/MediaModel;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/MediaModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 376
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/mms/model/MediaModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/MediaModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/mms/model/MediaModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 301
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 302
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "media$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 303
    .local v1, "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->unregisterAllModelChangedObservers()V

    .line 304
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    .line 305
    .local v0, "decreaseSize":I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->decreaseSlideSize(I)V

    .line 306
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->decreaseMessageSize(I)V

    goto :goto_0

    .line 308
    .end local v0    # "decreaseSize":I
    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 310
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    .line 311
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    .line 312
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    .line 313
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    .line 314
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mAttachment:Lcom/android/mms/model/MediaModel;

    .line 316
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 317
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 318
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 319
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddAttachment:Z

    .line 321
    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 300
    .end local v2    # "media$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseMessageSize(I)V
    .locals 2
    .param p1, "decreaseSize"    # I

    .prologue
    .line 266
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    .line 268
    .local v0, "size":I
    sub-int/2addr v0, p1

    .line 269
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->setCurrentMessageSize(I)V

    .line 265
    .end local v0    # "size":I
    :cond_0
    return-void
.end method

.method public decreaseSlideSize(I)V
    .locals 1
    .param p1, "decreaseSize"    # I

    .prologue
    .line 248
    if-lez p1, :cond_0

    .line 249
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    .line 247
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/mms/model/MediaModel;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method public getAttachment()Lcom/sonyericsson/conversations/model/AttachmentModel;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAttachment:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/sonyericsson/conversations/model/AttachmentModel;

    return-object v0
.end method

.method public getAudio()Lcom/android/mms/model/AudioModel;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/AudioModel;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/android/mms/model/ImageModel;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/ImageModel;

    return-object v0
.end method

.method public getSlideSize()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    return v0
.end method

.method public getSticker()Lcom/android/mms/model/ImageModel;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 517
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    instance-of v2, v2, Lcom/android/mms/model/ImageModel;

    if-eqz v2, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/ImageModel;

    .line 521
    .local v0, "model":Lcom/android/mms/model/ImageModel;
    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->isSticker()Z

    move-result v2

    if-eqz v2, :cond_1

    .end local v0    # "model":Lcom/android/mms/model/ImageModel;
    :goto_0
    return-object v0

    .line 518
    :cond_0
    return-object v1

    .restart local v0    # "model":Lcom/android/mms/model/ImageModel;
    :cond_1
    move-object v0, v1

    .line 521
    goto :goto_0
.end method

.method public getText()Lcom/android/mms/model/TextModel;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/TextModel;

    return-object v0
.end method

.method public getVideo()Lcom/android/mms/model/VideoModel;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/VideoModel;

    return-object v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 4
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 470
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SmilSlideStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 482
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 469
    return-void

    .line 475
    :cond_1
    iget-short v0, p0, Lcom/android/mms/model/SlideModel;->mFill:S

    if-eq v0, v3, :cond_0

    .line 479
    iput-boolean v2, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    goto :goto_0
.end method

.method public hasAttachment()Z
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAttachment:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCalendarEvent()Z
    .locals 2

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getAttachment()Lcom/sonyericsson/conversations/model/AttachmentModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "text/x-vCalendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getAttachment()Lcom/sonyericsson/conversations/model/AttachmentModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "text/vcalendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 599
    :goto_0
    return v0

    .line 600
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 599
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContactVCard(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 605
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasAttachment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getAttachment()Lcom/sonyericsson/conversations/model/AttachmentModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text/x-vCard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 605
    if-eqz v1, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getAttachment()Lcom/sonyericsson/conversations/model/AttachmentModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonyericsson/conversations/util/VCardUtil;->isVCardLocationObject(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v0

    .line 607
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImageExcludingLocationImage()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 490
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    instance-of v0, v0, Lcom/android/mms/model/ImageModel;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->isLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    return v1

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public hasLocationImage()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    instance-of v0, v0, Lcom/android/mms/model/ImageModel;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->isLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const/4 v0, 0x1

    return v0

    .line 504
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasLocationVCard(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getAttachment()Lcom/sonyericsson/conversations/model/AttachmentModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "text/x-vCard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getAttachment()Lcom/sonyericsson/conversations/model/AttachmentModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/conversations/util/VCardUtil;->isVCardLocationObject(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    const/4 v0, 0x1

    return v0

    .line 595
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVideo()Z
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public increaseMessageSize(I)V
    .locals 2
    .param p1, "increaseSize"    # I

    .prologue
    .line 258
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    .line 260
    .local v0, "size":I
    add-int/2addr v0, p1

    .line 261
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->setCurrentMessageSize(I)V

    .line 257
    .end local v0    # "size":I
    :cond_0
    return-void
.end method

.method public increaseSlideSize(I)V
    .locals 1
    .param p1, "increaseSize"    # I

    .prologue
    .line 242
    if-lez p1, :cond_0

    .line 243
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    .line 241
    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/mms/model/IModelChangedObserver;

    .prologue
    .line 448
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "media$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 449
    .local v0, "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v0, p1}, Lcom/android/mms/model/MediaModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 447
    .end local v0    # "media":Lcom/android/mms/model/MediaModel;
    :cond_0
    return-void
.end method

.method public remove(I)Lcom/android/mms/model/MediaModel;
    .locals 2
    .param p1, "location"    # I

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 401
    .local v0, "media":Lcom/android/mms/model/MediaModel;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideModel;->internalRemove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 404
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideModel;->remove(I)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 342
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    .line 343
    invoke-direct {p0, p1}, Lcom/android/mms/model/SlideModel;->internalRemove(Ljava/lang/Object;)Z

    move-result v0

    .line 342
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 345
    return v1

    .line 347
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAttachment()Z
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAttachment:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAudio()Z
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeImage()Z
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeText()Z
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeVideo()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/MediaModel;)Lcom/android/mms/model/MediaModel;
    .locals 2
    .param p1, "location"    # I
    .param p2, "object"    # Lcom/android/mms/model/MediaModel;

    .prologue
    .line 408
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 407
    check-cast p2, Lcom/android/mms/model/MediaModel;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideModel;->set(ILcom/android/mms/model/MediaModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 233
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 232
    return-void
.end method

.method public setFill(S)V
    .locals 1
    .param p1, "fill"    # S

    .prologue
    .line 441
    iput-short p1, p0, Lcom/android/mms/model/SlideModel;->mFill:S

    .line 442
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 440
    return-void
.end method

.method public setParent(Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    .line 253
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    .prologue
    .line 463
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "media$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 464
    .local v0, "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 462
    .end local v0    # "media":Lcom/android/mms/model/MediaModel;
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/mms/model/IModelChangedObserver;

    .prologue
    .line 456
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "media$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 457
    .local v0, "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v0, p1}, Lcom/android/mms/model/MediaModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 455
    .end local v0    # "media":Lcom/android/mms/model/MediaModel;
    :cond_0
    return-void
.end method

.method public updateDuration(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 577
    if-gtz p1, :cond_0

    .line 578
    return-void

    .line 581
    :cond_0
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    if-gt p1, v0, :cond_1

    .line 582
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    const/16 v1, 0x1388

    if-ne v0, v1, :cond_2

    .line 583
    :cond_1
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 576
    :cond_2
    return-void
.end method
