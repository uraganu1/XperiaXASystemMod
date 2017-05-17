.class public Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
.super Ljava/lang/Object;
.source "TargetDrawable.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final STATE_ACTIVE:[I

.field public static final STATE_FOCUSED:[I

.field public static final STATE_INACTIVE:[I

.field private static final TAG:Ljava/lang/String; = "TargetDrawable"


# instance fields
.field private mAlpha:F

.field private mBounds:Landroid/graphics/Rect;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnabled:Z

.field private mNumDrawables:I

.field private mPositionX:F

.field private mPositionY:F

.field private final mResourceId:I

.field private mScaleX:F

.field private mScaleY:F

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, -0x10100a2

    const v1, 0x101009e

    .line 32
    const v0, 0x10100a2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    .line 31
    sput-object v0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    .line 34
    filled-new-array {v1, v2}, [I

    move-result-object v0

    .line 33
    sput-object v0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    .line 37
    const v0, 0x101009c

    .line 36
    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    .line 35
    sput-object v0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 40
    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 41
    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionX:F

    .line 42
    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionY:F

    .line 43
    iput v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleX:F

    .line 44
    iput v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleY:F

    .line 45
    iput v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mAlpha:F

    .line 47
    iput-boolean v2, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mEnabled:Z

    .line 49
    iput v2, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mNumDrawables:I

    .line 62
    iput p2, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mResourceId:I

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 64
    iput p3, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mNumDrawables:I

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/widget/multiwaveview/TargetDrawable;)V
    .locals 4
    .param p1, "other"    # Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 40
    iput v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 41
    iput v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionX:F

    .line 42
    iput v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionY:F

    .line 43
    iput v2, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleX:F

    .line 44
    iput v2, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleY:F

    .line 45
    iput v2, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mAlpha:F

    .line 47
    iput-boolean v3, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mEnabled:Z

    .line 49
    iput v3, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mNumDrawables:I

    .line 78
    iget v1, p1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mResourceId:I

    iput v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mResourceId:I

    .line 80
    iget-object v1, p1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->resizeDrawables()V

    .line 82
    sget-object v0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 77
    return-void
.end method

.method private resizeDrawables()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 126
    iget-object v5, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 128
    .local v1, "d":Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x0

    .line 129
    .local v4, "maxWidth":I
    const/4 v3, 0x0

    .line 131
    .local v3, "maxHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mNumDrawables:I

    if-ge v2, v5, :cond_0

    .line 132
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    .line 133
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    .local v0, "childDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 135
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "childDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v1, v8, v8, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 142
    const/4 v2, 0x0

    :goto_1
    iget v5, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mNumDrawables:I

    if-ge v2, v5, :cond_2

    .line 143
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    .line 144
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 147
    .restart local v0    # "childDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 149
    .end local v0    # "childDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "d":Landroid/graphics/drawable/StateListDrawable;
    .end local v2    # "i":I
    .end local v3    # "maxHeight":I
    .end local v4    # "maxWidth":I
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 150
    iget-object v5, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 150
    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 125
    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, -0x41000000    # -0.5f

    .line 231
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 235
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleX:F

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleY:F

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionX:F

    iget v3, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 236
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionY:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 237
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 238
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 239
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 230
    return-void

    .line 232
    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mAlpha:F

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 220
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mBounds:Landroid/graphics/Rect;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionX:F

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v8

    sub-double/2addr v2, v4

    double-to-int v1, v2

    .line 224
    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    iget v3, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionY:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v8

    sub-double/2addr v2, v4

    double-to-int v2, v2

    .line 225
    iget v3, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    iget v4, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionX:F

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    .line 226
    iget v4, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    iget v5, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionY:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    .line 223
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 227
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionX()F
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionX:F

    return v0
.end method

.method public getPositionY()F
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionY:F

    return v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mResourceId:I

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    return v0
.end method

.method public isActive()Z
    .locals 5

    .prologue
    .line 98
    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 100
    .local v0, "d":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v2

    .line 101
    .local v2, "states":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 102
    aget v3, v2, v1

    const v4, 0x101009c

    if-ne v3, v4, :cond_0

    .line 103
    const/4 v3, 0x1

    return v3

    .line 101
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "d":Landroid/graphics/drawable/StateListDrawable;
    .end local v1    # "i":I
    .end local v2    # "states":[I
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mEnabled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 172
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mAlpha:F

    .line 171
    return-void
.end method

.method public setDrawable(Landroid/content/res/Resources;I)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 70
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 72
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->resizeDrawables()V

    .line 74
    sget-object v1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 67
    return-void

    .line 70
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mEnabled:Z

    .line 243
    return-void
.end method

.method public setPositionX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 196
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionX:F

    .line 195
    return-void
.end method

.method public setPositionY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 200
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionY:F

    .line 199
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 164
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleX:F

    .line 163
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 168
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleY:F

    .line 167
    return-void
.end method

.method public setState([I)V
    .locals 2
    .param p1, "state"    # [I

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 88
    .local v0, "d":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 85
    .end local v0    # "d":Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 156
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 155
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 160
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 159
    return-void
.end method
