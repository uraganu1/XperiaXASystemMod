.class Lcom/android/incallui/VideoCallFragment$VideoCallSurface;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoCallSurface"
.end annotation


# instance fields
.field private mHeight:I

.field private mIsDoneWithSurface:Z

.field private mPresenter:Lcom/android/incallui/VideoCallPresenter;

.field private mSavedSurface:Landroid/view/Surface;

.field private mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceId:I

.field private mTextureView:Landroid/view/TextureView;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/VideoCallPresenter;ILandroid/view/TextureView;)V
    .locals 6
    .param p1, "presenter"    # Lcom/android/incallui/VideoCallPresenter;
    .param p2, "surfaceId"    # I
    .param p3, "textureView"    # Landroid/view/TextureView;

    .prologue
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    .line 233
    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;-><init>(Lcom/android/incallui/VideoCallPresenter;ILandroid/view/TextureView;II)V

    .line 232
    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/VideoCallPresenter;ILandroid/view/TextureView;II)V
    .locals 2
    .param p1, "presenter"    # Lcom/android/incallui/VideoCallPresenter;
    .param p2, "surfaceId"    # I
    .param p3, "textureView"    # Landroid/view/TextureView;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v0, -0x1

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mWidth:I

    .line 223
    iput v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mHeight:I

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VideoCallSurface: surfaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    const-string/jumbo v1, " width="

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    const-string/jumbo v1, " height="

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    .line 249
    iput p4, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mWidth:I

    .line 250
    iput p5, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mHeight:I

    .line 251
    iput p2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    .line 253
    invoke-virtual {p0, p3}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->recreateView(Landroid/view/TextureView;)V

    .line 245
    return-void
.end method

.method private createSurface(II)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, -0x1

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "createSurface mSavedSurfaceTexture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 485
    const-string/jumbo v1, " mSurfaceId ="

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 485
    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 485
    const-string/jumbo v1, " mWidth "

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 485
    const-string/jumbo v1, " mHeight="

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    if-eq p1, v2, :cond_0

    if-eq p2, v2, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 489
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    .line 490
    const/4 v0, 0x1

    return v0

    .line 492
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onSurfaceCreated()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceCreated(I)V

    .line 332
    :goto_0
    return-void

    .line 336
    :cond_0
    const-string/jumbo v0, "onSurfaceTextureAvailable: Presenter is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSurfaceDestroyed()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceDestroyed(I)V

    .line 382
    :goto_0
    return-void

    .line 386
    :cond_0
    const-string/jumbo v0, "onSurfaceTextureDestroyed: Presenter is null."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSurfaceReleased()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceReleased(I)V

    .line 444
    :goto_0
    return-void

    .line 448
    :cond_0
    const-string/jumbo v0, "setDoneWithSurface: Presenter is null."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceDimensions()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 516
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mWidth:I

    iget v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceClick(I)V

    .line 502
    :goto_0
    return-void

    .line 506
    :cond_0
    const-string/jumbo v0, "onClick: Presenter is null."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onSurfaceTextureAvailable mSurfaceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " surfaceTexture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    const-string/jumbo v2, " width="

    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    const-string/jumbo v2, " height="

    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    const-string/jumbo v2, " mSavedSurfaceTexture="

    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onSurfaceTextureAvailable VideoCallPresenter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_1

    .line 317
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 318
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->createSurface(II)Z

    move-result v0

    .line 327
    :goto_0
    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->onSurfaceCreated()V

    .line 304
    :cond_0
    return-void

    .line 321
    :cond_1
    const-string/jumbo v1, " onSurfaceTextureAvailable: Replacing with cached surface..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 323
    const/4 v0, 0x1

    .local v0, "surfaceCreated":Z
    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " onSurfaceTextureDestroyed mSurfaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " surfaceTexture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 365
    const-string/jumbo v1, " SavedSurfaceTexture="

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 366
    const-string/jumbo v1, " SavedSurface="

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " onSurfaceTextureDestroyed VideoCallPresenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->onSurfaceDestroyed()V

    .line 372
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mIsDoneWithSurface:Z

    if-eqz v0, :cond_0

    .line 373
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->onSurfaceReleased()V

    .line 374
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 376
    iput-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    .line 379
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mIsDoneWithSurface:Z

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 349
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 395
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 400
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 410
    return-void
.end method

.method public recreateView(Landroid/view/TextureView;)V
    .locals 3
    .param p1, "view"    # Landroid/view/TextureView;

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    if-ne v1, p1, :cond_0

    .line 268
    return-void

    .line 271
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    .line 272
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 273
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 277
    .local v0, "areSameSurfaces":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recreateView: SavedSurfaceTexture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 278
    const-string/jumbo v2, " areSameSurfaces="

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 285
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mIsDoneWithSurface:Z

    .line 262
    return-void

    .line 280
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 281
    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mWidth:I

    iget v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mHeight:I

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->createSurface(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->onSurfaceCreated()V

    goto :goto_0
.end method

.method public resetPresenter(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 2
    .param p1, "presenter"    # Lcom/android/incallui/VideoCallPresenter;

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetPresenter: CurrentPresenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " NewPresenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    .line 288
    return-void
.end method

.method public setDoneWithSurface()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDoneWithSurface: SavedSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 427
    const-string/jumbo v1, " SavedSurfaceTexture="

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mIsDoneWithSurface:Z

    .line 429
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 434
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->onSurfaceReleased()V

    .line 435
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 436
    iput-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 440
    iput-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 425
    :cond_2
    return-void
.end method

.method public setSurfaceDimensions(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSurfaceDimensions, width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    iput p1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mWidth:I

    .line 470
    iput p2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mHeight:I

    .line 472
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 473
    const-string/jumbo v0, "setSurfaceDimensions, mSavedSurfaceTexture is NOT equal to null."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->createSurface(II)Z

    .line 467
    :cond_0
    return-void
.end method
