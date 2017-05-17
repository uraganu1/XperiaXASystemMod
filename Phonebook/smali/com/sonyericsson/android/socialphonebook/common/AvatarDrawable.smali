.class public final Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AvatarDrawable.java"


# static fields
.field public static final DEFAULT_TINT_COLOR:I = -0x1


# instance fields
.field private final mAvatarBitmap:Landroid/graphics/Bitmap;

.field private final mIsCircle:Z

.field private mOffset:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/Rect;

.field private mScale:F

.field private mTintColor:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "contactGawBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isCircular"    # Z

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mRect:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mPaint:Landroid/graphics/Paint;

    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mScale:F

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mOffset:F

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mTintColor:I

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    iput-boolean p2, p0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mIsCircle:Z

    .line 46
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mAvatarBitmap:Landroid/graphics/Bitmap;

    .line 41
    return-void
.end method

.method private drawBitmap(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 60
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 62
    .local v8, "minDimension":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mIsCircle:Z

    if-eqz v12, :cond_0

    .line 63
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v8

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 68
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mAvatarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 69
    .local v11, "width":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mAvatarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 73
    .local v6, "height":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mScale:F

    int-to-float v13, v8

    mul-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    float-to-int v5, v12

    .line 75
    .local v5, "halfLength":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    sub-int v7, v12, v5

    .line 76
    .local v7, "left":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    add-int v9, v12, v5

    .line 77
    .local v9, "right":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    sub-int/2addr v12, v5

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mOffset:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v10, v12

    .line 78
    .local v10, "top":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    add-int/2addr v12, v5

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mOffset:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v1, v12

    .line 79
    .local v1, "bottom":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v10, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 82
    .local v4, "destRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mRect:Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v11, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 85
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mTintColor:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    .line 86
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    .line 88
    .local v3, "currentColorFilter":Landroid/graphics/ColorFilter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mTintColor:I

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 90
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mAvatarBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v4, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 58
    .end local v3    # "currentColorFilter":Landroid/graphics/ColorFilter;
    :goto_1
    return-void

    .line 65
    .end local v1    # "bottom":I
    .end local v4    # "destRect":Landroid/graphics/Rect;
    .end local v5    # "halfLength":I
    .end local v6    # "height":I
    .end local v7    # "left":I
    .end local v9    # "right":I
    .end local v10    # "top":I
    .end local v11    # "width":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 93
    .restart local v1    # "bottom":I
    .restart local v4    # "destRect":Landroid/graphics/Rect;
    .restart local v5    # "halfLength":I
    .restart local v6    # "height":I
    .restart local v7    # "left":I
    .restart local v9    # "right":I
    .restart local v10    # "top":I
    .restart local v11    # "width":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mAvatarBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v4, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    return-void

    .line 55
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->drawBitmap(Landroid/graphics/Canvas;)V

    .line 50
    return-void
.end method

.method public getAvatarBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mAvatarBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 103
    return-void
.end method

.method public setAvatarColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 108
    return-void
.end method

.method public setOffset(F)V
    .locals 3
    .param p1, "offset"    # F

    .prologue
    .line 160
    const/high16 v0, -0x41000000    # -0.5f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Offset value needs to be between -0.5 and 0.5,f current is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_1
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mOffset:F

    .line 159
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 142
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mScale:F

    .line 141
    return-void
.end method

.method public setTintColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/common/AvatarDrawable;->mTintColor:I

    .line 117
    return-void
.end method
