.class public Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;
.super Landroid/widget/TextClock;
.source "ClippingSourceTextClock.java"

# interfaces
.implements Lcom/sonymobile/keyguard/themedanimation/ClippingSource;


# instance fields
.field private mAlternativeStartDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mAlternativeStartDrawableBounds:Landroid/graphics/Rect;

.field private mClipDrawing:Z

.field private mClipEnabled:Z

.field private mDimmerColor:I

.field private mOldStartDrawableAlpha:I

.field private mScalingParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTextColorBackup:Landroid/content/res/ColorStateList;

.field private mXfermodeClear:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-boolean v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mClipEnabled:Z

    .line 36
    iput-boolean v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mClipDrawing:Z

    .line 37
    iput-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mScalingParent:Ljava/lang/ref/WeakReference;

    .line 38
    iput-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mXfermodeClear:Landroid/graphics/Xfermode;

    .line 39
    iput-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mAlternativeStartDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mAlternativeStartDrawableBounds:Landroid/graphics/Rect;

    .line 41
    iput v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mOldStartDrawableAlpha:I

    .line 42
    iput-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mTextColorBackup:Landroid/content/res/ColorStateList;

    .line 43
    iput v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mDimmerColor:I

    .line 63
    invoke-direct {p0, p2}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->init(Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    iput-boolean v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mClipEnabled:Z

    .line 36
    iput-boolean v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mClipDrawing:Z

    .line 37
    iput-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mScalingParent:Ljava/lang/ref/WeakReference;

    .line 38
    iput-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mXfermodeClear:Landroid/graphics/Xfermode;

    .line 39
    iput-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mAlternativeStartDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mAlternativeStartDrawableBounds:Landroid/graphics/Rect;

    .line 41
    iput v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mOldStartDrawableAlpha:I

    .line 42
    iput-object v2, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mTextColorBackup:Landroid/content/res/ColorStateList;

    .line 43
    iput v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mDimmerColor:I

    .line 88
    invoke-direct {p0, p2}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->init(Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method private applyClippingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 146
    if-eqz p1, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mTextColorBackup:Landroid/content/res/ColorStateList;

    .line 148
    iget v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mDimmerColor:I

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->setTextColorInternal(I)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mTextColorBackup:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mTextColorBackup:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->setTextColorInternal(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private calculateBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p1, "startDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->getRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->getLeft()I

    move-result v10

    sub-int v8, v9, v10

    .line 245
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->getTop()I

    move-result v10

    sub-int v3, v9, v10

    .line 246
    .local v3, "height":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    .line 247
    .local v2, "drawableWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    .line 248
    .local v1, "drawableHeight":I
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->getLayoutDirection()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    const/4 v4, 0x1

    .line 250
    .local v4, "isLayoutRtl":Z
    :goto_0
    if-eqz v4, :cond_1

    sub-int v5, v8, v2

    .line 251
    .local v5, "left":I
    :goto_1
    sub-int v9, v3, v1

    div-int/lit8 v7, v9, 0x2

    .line 252
    .local v7, "top":I
    add-int v6, v5, v2

    .line 253
    .local v6, "right":I
    add-int v0, v7, v1

    .line 254
    .local v0, "bottom":I
    iget-object v9, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mAlternativeStartDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v5, v7, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 243
    return-void

    .line 248
    .end local v0    # "bottom":I
    .end local v4    # "isLayoutRtl":Z
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v7    # "top":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "isLayoutRtl":Z
    goto :goto_0

    .line 250
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "left":I
    goto :goto_1
.end method

.method private drawAlternativeStartDrawable(Landroid/graphics/Canvas;Z)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "withDimmer"    # Z

    .prologue
    .line 217
    const/4 v2, 0x0

    .line 218
    .local v2, "startDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mAlternativeStartDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->getStartDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 220
    .local v2, "startDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    iput v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mOldStartDrawableAlpha:I

    .line 222
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 224
    invoke-direct {p0, v2}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->calculateBounds(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mAlternativeStartDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mAlternativeStartDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 228
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mAlternativeStartDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 229
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    .line 230
    .local v0, "oldXfermode":Landroid/graphics/Xfermode;
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mXfermodeClear:Landroid/graphics/Xfermode;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 231
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mAlternativeStartDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 232
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 235
    if-eqz p2, :cond_0

    .line 236
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mAlternativeStartDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 240
    .end local v0    # "oldXfermode":Landroid/graphics/Xfermode;
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v2    # "startDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v2
.end method

.method private getStartDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 265
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mXfermodeClear:Landroid/graphics/Xfermode;

    .line 93
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->setupAttributes(Landroid/util/AttributeSet;)V

    .line 94
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mClipEnabled:Z

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->applyClippingEnabled(Z)V

    .line 91
    return-void
.end method

.method private restoreStartDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "startDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 258
    if-eqz p1, :cond_0

    .line 259
    iget v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mOldStartDrawableAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 257
    :cond_0
    return-void
.end method

.method private setTextColorInternal(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 278
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->setTextColorInternal(Landroid/content/res/ColorStateList;)V

    .line 277
    return-void
.end method

.method private setTextColorInternal(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/widget/TextClock;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 281
    return-void
.end method

.method private setupAlarmAttributes(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 111
    sget v1, Lcom/android/keyguard/R$styleable;->ClippingSourceTextView_alternativeBitmapDrawableStart:I

    .line 110
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mAlternativeStartDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 115
    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mAlternativeStartDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget v2, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mDimmerColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 116
    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mAlternativeStartDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 117
    iget v2, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mDimmerColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 118
    iget v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mDimmerColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 119
    iget v4, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mDimmerColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 116
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    .line 120
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 116
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 109
    :cond_0
    return-void
.end method

.method private setupAttributes(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 99
    sget-object v2, Lcom/android/keyguard/R$styleable;->ClippingSourceTextView:[I

    .line 98
    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, "typedAttributes":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcom/android/keyguard/R$styleable;->ClippingSourceTextView_dimmerColor:I

    const/4 v2, 0x0

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mDimmerColor:I

    .line 103
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->setupAlarmAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-void

    .line 104
    :catchall_0
    move-exception v1

    .line 105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    throw v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mClipEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mClipDrawing:Z

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextClock;->draw(Landroid/graphics/Canvas;)V

    .line 128
    :cond_1
    return-void
.end method

.method public drawToClip(Landroid/graphics/Canvas;Z)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "withDimmer"    # Z

    .prologue
    .line 191
    iget-boolean v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mClipEnabled:Z

    if-eqz v3, :cond_1

    .line 192
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mClipDrawing:Z

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->drawAlternativeStartDrawable(Landroid/graphics/Canvas;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 198
    .local v2, "startDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 199
    .local v1, "paint":Landroid/text/TextPaint;
    invoke-virtual {v1}, Landroid/text/TextPaint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    .line 200
    .local v0, "oldXfermode":Landroid/graphics/Xfermode;
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mXfermodeClear:Landroid/graphics/Xfermode;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 201
    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->draw(Landroid/graphics/Canvas;)V

    .line 202
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 205
    if-eqz p2, :cond_0

    .line 206
    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->draw(Landroid/graphics/Canvas;)V

    .line 210
    :cond_0
    invoke-direct {p0, v2}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->restoreStartDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mClipDrawing:Z

    .line 190
    .end local v0    # "oldXfermode":Landroid/graphics/Xfermode;
    .end local v1    # "paint":Landroid/text/TextPaint;
    .end local v2    # "startDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public getScalingParent()Landroid/view/View;
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "parent":Landroid/view/View;
    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mScalingParent:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mScalingParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "parent":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 183
    :cond_0
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 161
    return-object p0
.end method

.method public setClippingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mClipEnabled:Z

    if-eq v0, p1, :cond_0

    .line 140
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->applyClippingEnabled(Z)V

    .line 142
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mClipEnabled:Z

    .line 138
    return-void
.end method

.method public setScalingParent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mScalingParent:Ljava/lang/ref/WeakReference;

    .line 168
    :cond_0
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->mTextColorBackup:Landroid/content/res/ColorStateList;

    .line 274
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingSourceTextClock;->setTextColorInternal(Landroid/content/res/ColorStateList;)V

    .line 272
    return-void
.end method
