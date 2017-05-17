.class Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;
.super Landroid/os/AsyncTask;
.source "InlineCameraFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShootTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCenterY:I

.field private final mHeight:I

.field private final mMediaActionSound:Landroid/media/MediaActionSound;

.field private final mRotation:I

.field private final mTextureViewBitmap:Landroid/graphics/Bitmap;

.field private final mTextureViewHeight:I

.field private final mTextureViewWidth:I

.field private mUri:Landroid/net/Uri;

.field private final mViewFrameLayoutHeight:I

.field private final mViewFrameLayoutWidth:I

.field private mWidth:I

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Landroid/graphics/Bitmap;IIIIIILandroid/net/Uri;Landroid/media/MediaActionSound;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "textureViewWidth"    # I
    .param p6, "textureViewHeight"    # I
    .param p7, "centerY"    # I
    .param p8, "rotation"    # I
    .param p9, "uri"    # Landroid/net/Uri;
    .param p10, "mediaActionSound"    # Landroid/media/MediaActionSound;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 266
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mTextureViewBitmap:Landroid/graphics/Bitmap;

    .line 267
    iput p3, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mViewFrameLayoutWidth:I

    .line 268
    iput p4, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mViewFrameLayoutHeight:I

    .line 269
    iput p5, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mTextureViewWidth:I

    .line 270
    iput p6, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mTextureViewHeight:I

    .line 271
    iput p3, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mWidth:I

    .line 272
    iput p4, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mHeight:I

    .line 273
    iput p7, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mCenterY:I

    .line 274
    iput p8, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mRotation:I

    .line 275
    iput-object p9, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mUri:Landroid/net/Uri;

    .line 276
    iput-object p10, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 265
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 15
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mMediaActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 285
    iget v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mWidth:I

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mTextureViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mTextureViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mWidth:I

    .line 290
    :cond_0
    iget v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mRotation:I

    if-nez v0, :cond_2

    .line 293
    iget v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mCenterY:I

    iget v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mHeight:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mTextureViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mTextureViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v9, v0, 0x2

    .line 299
    .local v9, "centerY":I
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mTextureViewBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mWidth:I

    iget v2, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mHeight:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v9, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 346
    .local v8, "bgBitmap":Landroid/graphics/Bitmap;
    :goto_1
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->publishProgress([Ljava/lang/Object;)V

    .line 349
    if-eqz v8, :cond_7

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_7

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mUri:Landroid/net/Uri;

    invoke-static {v8, v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->saveBitmapToFile(Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mUri:Landroid/net/Uri;

    .line 357
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mUri:Landroid/net/Uri;

    return-object v0

    .line 296
    .end local v8    # "bgBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "centerY":I
    :cond_1
    iget v9, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mCenterY:I

    .restart local v9    # "centerY":I
    goto :goto_0

    .line 301
    .end local v9    # "centerY":I
    :cond_2
    const/4 v14, 0x0

    .line 302
    .local v14, "rotationAmount":I
    iget v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mRotation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 304
    const/16 v14, -0x5a

    .line 310
    :cond_3
    :goto_3
    iget v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mTextureViewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mTextureViewHeight:I

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 311
    .local v7, "aspectRatio":F
    iget v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mTextureViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mViewFrameLayoutHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int v9, v0, v1

    .line 312
    .restart local v9    # "centerY":I
    int-to-float v0, v9

    mul-float/2addr v0, v7

    float-to-int v9, v0

    .line 319
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 320
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, v14

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mTextureViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 321
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mTextureViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 320
    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mTextureViewBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mTextureViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 325
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mTextureViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 324
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 325
    const/4 v6, 0x1

    .line 323
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 328
    .local v13, "rotatedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v11, v0

    .line 329
    .local v11, "croppedHeight":I
    add-int v0, v9, v11

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 330
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, v11

    div-int/lit8 v12, v0, 0x2

    .line 331
    .local v12, "newCenterY":I
    if-lez v12, :cond_6

    move v9, v12

    .line 335
    .end local v12    # "newCenterY":I
    :cond_4
    :goto_4
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 336
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 335
    const/4 v2, 0x0

    .line 334
    invoke-static {v13, v2, v9, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 338
    .local v10, "croppedBitmap":Landroid/graphics/Bitmap;
    iget v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mViewFrameLayoutWidth:I

    .line 339
    iget v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mViewFrameLayoutHeight:I

    const/4 v2, 0x1

    .line 338
    invoke-static {v10, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 341
    .restart local v8    # "bgBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 342
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    .line 305
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "aspectRatio":F
    .end local v8    # "bgBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "centerY":I
    .end local v10    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "croppedHeight":I
    .end local v13    # "rotatedBitmap":Landroid/graphics/Bitmap;
    :cond_5
    iget v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mRotation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 307
    const/16 v14, 0x5a

    goto/16 :goto_3

    .line 331
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    .restart local v7    # "aspectRatio":F
    .restart local v9    # "centerY":I
    .restart local v11    # "croppedHeight":I
    .restart local v12    # "newCenterY":I
    .restart local v13    # "rotatedBitmap":Landroid/graphics/Bitmap;
    :cond_6
    const/4 v9, 0x0

    goto :goto_4

    .line 352
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "aspectRatio":F
    .end local v11    # "croppedHeight":I
    .end local v12    # "newCenterY":I
    .end local v13    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "rotationAmount":I
    .restart local v8    # "bgBitmap":Landroid/graphics/Bitmap;
    :cond_7
    const-string/jumbo v0, "Could not save picture"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->mUri:Landroid/net/Uri;

    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 280
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    .line 374
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-set4(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 375
    if-nez p1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->TAKING_PICTURE:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-wrap2(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;)V

    .line 383
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get2(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 384
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get7(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get12(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/view/TextureView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get3(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get6(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->setRepeatingRequest(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 373
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->ACCEPT_PICTURE:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-wrap2(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/Object;

    .prologue
    .line 373
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "uri":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 362
    if-eqz p1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    aget-object v1, p1, v2

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-set0(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 364
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get9(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get0(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get9(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get2(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get7(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 361
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "bitmap"    # [Ljava/lang/Object;

    .prologue
    .line 361
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1    # "bitmap":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->onProgressUpdate([Landroid/graphics/Bitmap;)V

    return-void
.end method
