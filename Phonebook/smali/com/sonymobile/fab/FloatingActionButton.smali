.class public Lcom/sonymobile/fab/FloatingActionButton;
.super Lcom/sonymobile/fab/CheckableFrameLayout;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/fab/FloatingActionButton$1;,
        Lcom/sonymobile/fab/FloatingActionButton$2;
    }
.end annotation


# static fields
.field private static final COLOR_ATTRS:[I

.field private static final OVAL:Landroid/view/ViewOutlineProvider;

.field private static final STATE_PRESSED:[I

.field private static final TRANSLATION_Z:Ljava/lang/String; = "translationZ"


# instance fields
.field private mCheckedBackground:Landroid/graphics/drawable/Drawable;

.field private final mListener:Landroid/animation/Animator$AnimatorListener;

.field private mNormalBackground:Landroid/graphics/drawable/Drawable;

.field private mRevealAnimator:Landroid/animation/Animator;

.field private final mRevealChecked:Landroid/graphics/drawable/Drawable;

.field private final mRevealNormal:Landroid/graphics/drawable/Drawable;

.field private final mRevealView:Landroid/view/View;

.field private mRevealX:I

.field private mRevealY:I


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/fab/FloatingActionButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/fab/FloatingActionButton;->hideReveal()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/sonymobile/fab/FloatingActionButton;->STATE_PRESSED:[I

    .line 49
    const v0, 0x1010435

    .line 50
    const v1, 0x101042c

    .line 49
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sonymobile/fab/FloatingActionButton;->COLOR_ATTRS:[I

    .line 55
    new-instance v0, Lcom/sonymobile/fab/FloatingActionButton$1;

    invoke-direct {v0}, Lcom/sonymobile/fab/FloatingActionButton$1;-><init>()V

    sput-object v0, Lcom/sonymobile/fab/FloatingActionButton;->OVAL:Landroid/view/ViewOutlineProvider;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/sonymobile/fab/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sonymobile/fab/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/fab/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 159
    invoke-direct/range {p0 .. p4}, Lcom/sonymobile/fab/CheckableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    new-instance v15, Lcom/sonymobile/fab/FloatingActionButton$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sonymobile/fab/FloatingActionButton$2;-><init>(Lcom/sonymobile/fab/FloatingActionButton;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sonymobile/fab/FloatingActionButton;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 165
    .local v13, "resources":Landroid/content/res/Resources;
    sget-object v15, Lcom/sonymobile/fab/FloatingActionButton;->OVAL:Landroid/view/ViewOutlineProvider;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sonymobile/fab/FloatingActionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 166
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sonymobile/fab/FloatingActionButton;->setClipToOutline(Z)V

    .line 169
    new-instance v15, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealView:Landroid/view/View;

    .line 170
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealView:Landroid/view/View;

    .line 171
    new-instance v16, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    invoke-direct/range {v16 .. v18}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 170
    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealView:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 173
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealView:Landroid/view/View;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/sonymobile/fab/FloatingActionButton;->addView(Landroid/view/View;I)V

    .line 176
    sget-object v15, Lcom/sonymobile/fab/FloatingActionButton;->COLOR_ATTRS:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 178
    .local v9, "colorArray":Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 179
    .local v8, "colorAccent":Landroid/content/res/ColorStateList;
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 180
    .local v10, "colorControlHighlight":Landroid/content/res/ColorStateList;
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    sget-object v15, Lcom/sonyericsson/android/socialphonebook/R$styleable;->DefaultFloatingActionButton:[I

    .line 183
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 186
    .local v4, "attrArray":Landroid/content/res/TypedArray;
    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v15

    .line 185
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 188
    .local v7, "color":I
    const/4 v15, 0x1

    const/16 v16, -0x1

    .line 187
    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 192
    .local v6, "checkedColor":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sonymobile/fab/FloatingActionButton;->createReveal(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealChecked:Landroid/graphics/drawable/Drawable;

    .line 193
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sonymobile/fab/FloatingActionButton;->createReveal(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealNormal:Landroid/graphics/drawable/Drawable;

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/fab/FloatingActionButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 196
    .local v5, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/fab/FloatingActionButton;->isChecked()Z

    move-result v15

    if-nez v15, :cond_1

    if-eqz v5, :cond_1

    move-object v15, v5

    :goto_0
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sonymobile/fab/FloatingActionButton;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/fab/FloatingActionButton;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_2

    if-eqz v5, :cond_2

    .end local v5    # "background":Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sonymobile/fab/FloatingActionButton;->mCheckedBackground:Landroid/graphics/drawable/Drawable;

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/fab/FloatingActionButton;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/fab/FloatingActionButton;->mCheckedBackground:Landroid/graphics/drawable/Drawable;

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sonymobile/fab/FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/fab/FloatingActionButton;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object v15

    if-nez v15, :cond_0

    .line 205
    const/high16 v15, 0x40000000    # 2.0f

    .line 206
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    .line 205
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    .line 208
    .local v11, "elevation":F
    const/4 v15, 0x2

    .line 207
    invoke-virtual {v4, v15, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    .line 210
    const/4 v15, 0x0

    cmpl-float v15, v11, v15

    if-eqz v15, :cond_0

    .line 211
    const/high16 v15, 0x10e0000

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 212
    .local v14, "shortAnim":I
    new-instance v12, Landroid/animation/StateListAnimator;

    invoke-direct {v12}, Landroid/animation/StateListAnimator;-><init>()V

    .line 213
    .local v12, "pressed":Landroid/animation/StateListAnimator;
    sget-object v15, Lcom/sonymobile/fab/FloatingActionButton;->STATE_PRESSED:[I

    .line 214
    const-string/jumbo v16, "translationZ"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v11, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 215
    int-to-long v0, v14

    move-wide/from16 v18, v0

    .line 214
    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 213
    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 216
    const/4 v15, 0x0

    new-array v15, v15, [I

    .line 217
    const-string/jumbo v16, "translationZ"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v18, v17, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 218
    int-to-long v0, v14

    move-wide/from16 v18, v0

    .line 217
    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 216
    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 219
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sonymobile/fab/FloatingActionButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 223
    .end local v11    # "elevation":F
    .end local v12    # "pressed":Landroid/animation/StateListAnimator;
    .end local v14    # "shortAnim":I
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    return-void

    .line 197
    .restart local v5    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v15, Landroid/graphics/drawable/RippleDrawable;

    new-instance v16, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v15, v10, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 199
    :cond_2
    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    .end local v5    # "background":Landroid/graphics/drawable/Drawable;
    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v15, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v5, v10, v15, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 201
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/fab/FloatingActionButton;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2
.end method

.method private createReveal(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 282
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 283
    .local v0, "reveal":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 284
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 285
    return-object v0
.end method

.method private hideReveal()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    invoke-virtual {p0}, Lcom/sonymobile/fab/FloatingActionButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/fab/FloatingActionButton;->mCheckedBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/fab/FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 270
    invoke-virtual {p0}, Lcom/sonymobile/fab/FloatingActionButton;->refreshDrawableState()V

    .line 267
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/fab/FloatingActionButton;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method protected onCheckedChanged(ZZ)V
    .locals 5
    .param p1, "checked"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/sonymobile/fab/FloatingActionButton;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    iget-object v0, p0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/fab/FloatingActionButton;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 253
    iget-object v0, p0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v1, p0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealNormal:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 256
    iget-object v0, p0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealView:Landroid/view/View;

    iget v1, p0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealX:I

    iget v2, p0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealY:I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/fab/FloatingActionButton;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 255
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealAnimator:Landroid/animation/Animator;

    .line 257
    iget-object v0, p0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/sonymobile/fab/FloatingActionButton;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 258
    iget-object v0, p0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 244
    :goto_1
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealChecked:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 260
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/fab/FloatingActionButton;->hideReveal()V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealX:I

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonymobile/fab/FloatingActionButton;->mRevealY:I

    .line 237
    :cond_0
    invoke-super {p0, p1}, Lcom/sonymobile/fab/CheckableFrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
