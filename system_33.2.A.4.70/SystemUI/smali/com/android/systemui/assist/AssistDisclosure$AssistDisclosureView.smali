.class Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;
.super Landroid/view/View;
.source "AssistDisclosure.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistDisclosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssistDisclosureView"
.end annotation


# instance fields
.field private mAlpha:I

.field private final mAlphaInAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaOutAnimator:Landroid/animation/ValueAnimator;

.field private final mAnimator:Landroid/animation/AnimatorSet;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mShadowPaint:Landroid/graphics/Paint;

.field private mShadowThickness:F

.field private mThickness:F

.field private final mTracingAnimator:Landroid/animation/ValueAnimator;

.field private mTracingProgress:F

.field final synthetic this$0:Lcom/android/systemui/assist/AssistDisclosure;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistDisclosure;Landroid/content/Context;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/systemui/assist/AssistDisclosure;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0xff

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 114
    iput-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->this$0:Lcom/android/systemui/assist/AssistDisclosure;

    .line 115
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    .line 104
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    .line 111
    iput v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingProgress:F

    .line 112
    iput v4, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    .line 117
    const/4 v1, 0x2

    new-array v1, v1, [F

    aput v2, v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingAnimator:Landroid/animation/ValueAnimator;

    .line 118
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 119
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mContext:Landroid/content/Context;

    .line 120
    const/high16 v3, 0x7f060000

    .line 119
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 121
    filled-new-array {v4, v5}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1c2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    .line 122
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 123
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mContext:Landroid/content/Context;

    .line 124
    const v3, 0x10c000d

    .line 123
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 125
    filled-new-array {v5, v4}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 126
    const-wide/16 v2, 0x190

    .line 125
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    .line 127
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 128
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mContext:Landroid/content/Context;

    .line 129
    const v3, 0x10c000f

    .line 128
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 130
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 131
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 132
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 133
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;-><init>(Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 154
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 155
    .local v0, "srcMode":Landroid/graphics/PorterDuffXfermode;
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 157
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mThickness:F

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 162
    const v2, 0x7f0a00d6

    .line 161
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowThickness:F

    .line 114
    return-void
.end method

.method private drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;
    .param p7, "padding"    # F

    .prologue
    .line 244
    sub-float v1, p2, p7

    .line 245
    sub-float v2, p3, p7

    .line 246
    add-float v3, p4, p7

    .line 247
    add-float v4, p5, p7

    move-object v0, p1

    move-object v5, p6

    .line 244
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 243
    return-void
.end method

.method private drawGeometry(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "padding"    # F

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getWidth()I

    move-result v14

    .line 199
    .local v14, "width":I
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getHeight()I

    move-result v9

    .line 200
    .local v9, "height":I
    iget v12, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mThickness:F

    .line 201
    .local v12, "thickness":F
    iget v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingProgress:F

    add-int v1, v14, v9

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v12

    sub-float/2addr v1, v2

    mul-float v10, v0, v1

    .line 203
    .local v10, "pixelProgress":F
    int-to-float v0, v14

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 204
    .local v8, "bottomProgress":F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_0

    .line 206
    int-to-float v0, v14

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v2, v0, v8

    .line 207
    int-to-float v0, v9

    sub-float v3, v0, v12

    .line 208
    int-to-float v0, v14

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float v4, v0, v8

    .line 209
    int-to-float v5, v9

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    .line 205
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    .line 212
    :cond_0
    sub-float v0, v10, v8

    int-to-float v1, v9

    sub-float/2addr v1, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 213
    .local v11, "sideProgress":F
    const/4 v0, 0x0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_1

    .line 215
    const/4 v2, 0x0

    .line 216
    int-to-float v0, v9

    sub-float/2addr v0, v12

    sub-float v3, v0, v11

    .line 218
    int-to-float v0, v9

    sub-float v5, v0, v12

    move-object v0, p0

    move-object/from16 v1, p1

    move v4, v12

    move-object/from16 v6, p2

    move/from16 v7, p3

    .line 214
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    .line 220
    int-to-float v0, v14

    sub-float v2, v0, v12

    .line 221
    int-to-float v0, v9

    sub-float/2addr v0, v12

    sub-float v3, v0, v11

    .line 222
    int-to-float v4, v14

    .line 223
    int-to-float v0, v9

    sub-float v5, v0, v12

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    .line 219
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    .line 226
    :cond_1
    sub-float v0, v10, v8

    sub-float/2addr v0, v11

    .line 227
    div-int/lit8 v1, v14, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, v12

    .line 226
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 228
    .local v13, "topProgress":F
    const/4 v0, 0x0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_2

    .line 231
    const/4 v3, 0x0

    .line 232
    add-float v4, v12, v13

    move-object v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v5, v12

    move-object/from16 v6, p2

    move/from16 v7, p3

    .line 229
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    .line 235
    int-to-float v0, v14

    sub-float/2addr v0, v12

    sub-float v2, v0, v13

    .line 236
    const/4 v3, 0x0

    .line 237
    int-to-float v0, v14

    sub-float v4, v0, v12

    move-object v0, p0

    move-object/from16 v1, p1

    move v5, v12

    move-object/from16 v6, p2

    move/from16 v7, p3

    .line 234
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    .line 197
    :cond_2
    return-void
.end method

.method private startAnimation()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 183
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    .line 260
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->invalidate()V

    .line 252
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    goto :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingProgress:F

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->startAnimation()V

    .line 170
    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->sendAccessibilityEvent(I)V

    .line 166
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingProgress:F

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    .line 174
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowThickness:F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawGeometry(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawGeometry(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 189
    return-void
.end method