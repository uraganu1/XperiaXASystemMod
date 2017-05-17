.class public Lcom/android/mms/ui/SlideshowPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "SlideshowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowPresenter$1;
    }
.end annotation


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field protected mHeightTransformRatio:F

.field protected mLocation:I

.field protected final mSlideNumber:I

.field private final mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field protected mWidthTransformRatio:F


# direct methods
.method static synthetic -wrap0(Lcom/android/mms/ui/SlideshowPresenter;II)F
    .locals 1
    .param p1, "height"    # I
    .param p2, "layoutHeight"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->getHeightTransformRatio(II)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/SlideshowPresenter;II)F
    .locals 1
    .param p1, "width"    # I
    .param p2, "layoutWidth"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->getWidthTransformRatio(II)F

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/mms/ui/ViewInterface;
    .param p3, "model"    # Lcom/android/mms/model/Model;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/android/mms/ui/SlideshowPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowPresenter$1;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    .line 69
    instance-of v0, p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_0

    .line 70
    check-cast p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .line 71
    .end local p2    # "view":Lcom/android/mms/ui/ViewInterface;
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 70
    invoke-interface {p2, v0}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V

    .line 64
    :cond_0
    return-void
.end method

.method private getHeightTransformRatio(II)F
    .locals 2
    .param p1, "height"    # I
    .param p2, "layoutHeight"    # I

    .prologue
    .line 95
    if-lez p1, :cond_0

    .line 96
    int-to-float v1, p2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideView;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideView;->getAudioInfoHeight()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0

    .line 98
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private getWidthTransformRatio(II)F
    .locals 2
    .param p1, "width"    # I
    .param p2, "layoutWidth"    # I

    .prologue
    .line 88
    if-lez p1, :cond_0

    .line 89
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    return v0

    .line 91
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private transformHeight(I)I
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 106
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private transformWidth(I)I
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 102
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getLocation()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    return v0
.end method

.method public goBackward()V
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    if-lez v0, :cond_0

    .line 253
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 251
    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 2

    .prologue
    .line 258
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 259
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 257
    :cond_0
    return-void
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 3
    .param p1, "model"    # Lcom/android/mms/model/Model;
    .param p2, "dataChanged"    # Z

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    .line 267
    .local v0, "view":Lcom/android/mms/ui/SlideViewInterface;
    instance-of v1, p1, Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    instance-of v1, p1, Lcom/android/mms/model/SlideModel;

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 270
    check-cast v1, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/SlideshowPresenter$2;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 277
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideshowPresenter$3;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 283
    :cond_3
    instance-of v1, p1, Lcom/android/mms/model/MediaModel;

    if-eqz v1, :cond_5

    .line 284
    instance-of v1, p1, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v1, :cond_4

    .line 285
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$4;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$4;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    move-object v1, p1

    .line 290
    check-cast v1, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$5;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$5;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 297
    :cond_5
    instance-of v1, p1, Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public present()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    if-gt v0, v1, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 110
    return-void
.end method

.method protected presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V
    .locals 4
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "audio"    # Lcom/android/mms/model/AudioModel;
    .param p3, "dataChanged"    # Z

    .prologue
    .line 153
    if-eqz p3, :cond_0

    .line 154
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    .line 157
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 158
    .local v0, "action":Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_2

    .line 159
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startAudio()V

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_3

    .line 161
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseAudio()V

    goto :goto_0

    .line 162
    :cond_3
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_4

    .line 163
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopAudio()V

    goto :goto_0

    .line 164
    :cond_4
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_1

    .line 165
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSeekTo()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->seekAudio(I)V

    goto :goto_0
.end method

.method protected presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 5
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "image"    # Lcom/android/mms/model/ImageModel;
    .param p3, "r"    # Lcom/android/mms/model/RegionModel;
    .param p4, "dataChanged"    # Z

    .prologue
    .line 192
    if-eqz p4, :cond_0

    .line 193
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->createThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 196
    :cond_0
    instance-of v0, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 197
    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .line 198
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v1

    .line 199
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v2

    .line 200
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v3

    .line 201
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v4

    .line 197
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setImageRegion(IIII)V

    .line 203
    :cond_1
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/mms/ui/SlideViewInterface;->setImageRegionFit(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->isVisible()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/mms/ui/SlideViewInterface;->setImageVisibility(Z)V

    .line 205
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    .line 191
    :cond_2
    return-void
.end method

.method protected presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V
    .locals 2
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "rMedia"    # Lcom/android/mms/model/RegionMediaModel;
    .param p3, "dataChanged"    # Z

    .prologue
    .line 140
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v0

    .line 141
    .local v0, "r":Lcom/android/mms/model/RegionModel;
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    check-cast p2, Lcom/android/mms/model/TextModel;

    .end local p2    # "rMedia":Lcom/android/mms/model/RegionMediaModel;
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 143
    .restart local p2    # "rMedia":Lcom/android/mms/model/RegionMediaModel;
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    check-cast p2, Lcom/android/mms/model/ImageModel;

    .end local p2    # "rMedia":Lcom/android/mms/model/RegionMediaModel;
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_0

    .line 145
    .restart local p2    # "rMedia":Lcom/android/mms/model/RegionMediaModel;
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    check-cast p2, Lcom/android/mms/model/VideoModel;

    .end local p2    # "rMedia":Lcom/android/mms/model/RegionMediaModel;
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_0
.end method

.method protected presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .locals 4
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "model"    # Lcom/android/mms/model/SlideModel;

    .prologue
    const/4 v3, 0x1

    .line 124
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 126
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "media$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 127
    .local v0, "media":Lcom/android/mms/model/MediaModel;
    instance-of v2, v0, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v2, :cond_1

    .line 128
    check-cast v0, Lcom/android/mms/model/RegionMediaModel;

    .end local v0    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V

    goto :goto_0

    .line 129
    .restart local v0    # "media":Lcom/android/mms/model/MediaModel;
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    check-cast v0, Lcom/android/mms/model/AudioModel;

    .end local v0    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V

    goto :goto_0

    .line 123
    :cond_2
    return-void
.end method

.method protected presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 5
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "text"    # Lcom/android/mms/model/TextModel;
    .param p3, "r"    # Lcom/android/mms/model/RegionModel;
    .param p4, "dataChanged"    # Z

    .prologue
    .line 171
    if-eqz p4, :cond_0

    .line 172
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/mms/ui/SlideViewInterface;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    instance-of v0, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 176
    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .line 177
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v1

    .line 178
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v2

    .line 179
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v3

    .line 180
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v4

    .line 176
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setTextRegion(IIII)V

    .line 182
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->isVisible()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/mms/ui/SlideViewInterface;->setTextVisibility(Z)V

    .line 170
    return-void
.end method

.method protected presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 6
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "video"    # Lcom/android/mms/model/VideoModel;
    .param p3, "r"    # Lcom/android/mms/model/RegionModel;
    .param p4, "dataChanged"    # Z

    .prologue
    .line 218
    if-eqz p4, :cond_0

    .line 219
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setVideo(Ljava/lang/String;Landroid/net/Uri;)V

    .line 222
    :cond_0
    instance-of v1, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 223
    check-cast v1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .line 224
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v2

    .line 225
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v3

    .line 226
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v4

    .line 227
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v5

    .line 223
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setVideoRegion(IIII)V

    .line 229
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->isVisible()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->setVideoVisibility(Z)V

    .line 231
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 232
    .local v0, "action":Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_3

    .line 233
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startVideo()V

    .line 217
    :cond_2
    :goto_0
    return-void

    .line 234
    :cond_3
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_4

    .line 235
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseVideo()V

    goto :goto_0

    .line 236
    :cond_4
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_5

    .line 237
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopVideo()V

    goto :goto_0

    .line 238
    :cond_5
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_2

    .line 239
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSeekTo()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->seekVideo(I)V

    goto :goto_0
.end method

.method public setLocation(I)V
    .locals 0
    .param p1, "location"    # I

    .prologue
    .line 244
    iput p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 243
    return-void
.end method
