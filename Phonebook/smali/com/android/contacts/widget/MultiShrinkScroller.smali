.class public Lcom/android/contacts/widget/MultiShrinkScroller;
.super Landroid/widget/FrameLayout;
.source "MultiShrinkScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;,
        Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;,
        Lcom/android/contacts/widget/MultiShrinkScroller$1;,
        Lcom/android/contacts/widget/MultiShrinkScroller$2;
    }
.end annotation


# static fields
.field private static final COMPOUND_DRAWABLE_END:I = 0x2

.field private static final EXIT_FLING_ANIMATION_DURATION_MS:I = 0x12c

.field private static final INTERMEDIATE_HEADER_HEIGHT_RATIO:F = 0.5f

.field private static final MAXIMUM_FLING_VELOCITY:F = 2000.0f

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActionBarGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mActionBarGradientView:Landroid/view/View;

.field private final mActionBarSize:I

.field private final mAlphaMatrixValues:[F

.field private mAvatarView:Landroid/widget/ImageView;

.field private mCollapsedTitleBottomMargin:I

.field private mCollapsedTitleStartMargin:I

.field private final mColorMatrix:Landroid/graphics/ColorMatrix;

.field private final mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mExtraInfoTextView:Landroid/widget/TextView;

.field private final mExtraInfoTextWhiteBlendingInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mGradientColors:[I

.field private mHasEverTouchedTheTop:Z

.field private mHeaderTintColor:I

.field private mIntermediateHeaderHeight:I

.field private mInvisiblePlaceholderTextView:Landroid/widget/TextView;

.field private mIsBeingDragged:Z

.field private mIsOpenContactSquare:Z

.field private final mIsTwoPanel:Z

.field private mLargeTextView:Landroid/widget/TextView;

.field private mLastEventPosition:[F

.field private mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

.field private mMaximumHeaderHeight:I

.field private mMaximumHeaderTextSize:I

.field private mMaximumHeaderViewSize:I

.field private mMaximumPortraitHeaderHeight:I

.field private final mMaximumTitleMargin:I

.field private final mMaximumVelocity:I

.field private mMinimumHeaderHeight:I

.field private mMinimumPortraitHeaderHeight:I

.field private final mMinimumVelocity:I

.field private final mMultiplyBlendMatrix:Landroid/graphics/ColorMatrix;

.field private final mMultiplyBlendMatrixValues:[F

.field private mPhotoTouchInterceptOverlay:Landroid/view/View;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mReceivedDown:Z

.field private mScrollView:Landroid/widget/ScrollView;

.field private mScrollViewChild:Landroid/view/View;

.field private final mScroller:Landroid/widget/Scroller;

.field private final mSnapToBottomListener:Landroid/animation/Animator$AnimatorListener;

.field private mStartColumn:Landroid/view/View;

.field private final mStatusBarHeight:I

.field private final mTextSizePathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mTitleContentView:Landroid/widget/LinearLayout;

.field private mTitleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mTitleGradientView:Landroid/view/View;

.field private final mToolbarElevation:F

.field private mToolbarWrapper:Landroid/view/View;

.field private final mTouchSlop:I

.field private final mTransparentStartHeight:I

.field private mTransparentView:Landroid/view/View;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mWhiteBlendingPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mWhitenessColorMatrix:Landroid/graphics/ColorMatrix;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mExtraInfoTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/widget/MultiShrinkScroller;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/contacts/widget/MultiShrinkScroller;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/contacts/widget/MultiShrinkScroller;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/contacts/widget/MultiShrinkScroller;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumTitleMargin:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/contacts/widget/MultiShrinkScroller;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleContentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/contacts/widget/MultiShrinkScroller;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIntermediateHeaderHeight:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/contacts/widget/MultiShrinkScroller;Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/contacts/widget/MultiShrinkScroller;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/contacts/widget/MultiShrinkScroller;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderTextSize:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/contacts/widget/MultiShrinkScroller;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderViewSize:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/contacts/widget/MultiShrinkScroller;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumPortraitHeaderHeight:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/contacts/widget/MultiShrinkScroller;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/contacts/widget/MultiShrinkScroller;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/contacts/widget/MultiShrinkScroller;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollUntilOffBottom()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/contacts/widget/MultiShrinkScroller;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->calculateCollapsedLargeTitlePadding()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/contacts/widget/MultiShrinkScroller;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->configureGradientViewHeights()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/contacts/widget/MultiShrinkScroller;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->expandHeader()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/contacts/widget/MultiShrinkScroller;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateHeaderTextSizeAndMargin()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/android/contacts/widget/MultiShrinkScroller$2;

    invoke-direct {v0}, Lcom/android/contacts/widget/MultiShrinkScroller$2;-><init>()V

    sput-object v0, Lcom/android/contacts/widget/MultiShrinkScroller;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 256
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v3, 0x14

    const/4 v9, 0x1

    const v8, 0x3ecccccd    # 0.4f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 265
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    .line 118
    iput-boolean v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    .line 119
    iput-boolean v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mReceivedDown:Z

    .line 178
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mWhitenessColorMatrix:Landroid/graphics/ColorMatrix;

    .line 179
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 180
    new-array v2, v3, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    .line 186
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrix:Landroid/graphics/ColorMatrix;

    .line 187
    new-array v2, v3, [F

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrixValues:[F

    .line 195
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e23d70a    # 0.16f

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v2, v3, v8, v4, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 194
    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTextSizePathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 197
    new-instance v2, Landroid/view/animation/PathInterpolator;

    .line 198
    const v3, 0x3ebd70a4    # 0.37f

    const/4 v4, 0x0

    const v5, 0x3e8a3d71    # 0.27f

    .line 197
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mExtraInfoTextWhiteBlendingInterpolator:Landroid/view/animation/PathInterpolator;

    .line 205
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f666666    # 0.9f

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v7, v8, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 204
    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mWhiteBlendingPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 207
    const/high16 v2, -0x56000000

    filled-new-array {v6, v2}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mGradientColors:[I

    .line 208
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 209
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mGradientColors:[I

    .line 208
    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 210
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 211
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mGradientColors:[I

    .line 210
    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 227
    new-instance v2, Lcom/android/contacts/widget/MultiShrinkScroller$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/widget/MultiShrinkScroller$1;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mSnapToBottomListener:Landroid/animation/Animator$AnimatorListener;

    .line 267
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 268
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p0, v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->setFocusable(Z)V

    .line 270
    invoke-virtual {p0, v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->setWillNotDraw(Z)V

    .line 272
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 273
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/android/contacts/widget/MultiShrinkScroller;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    .line 274
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTouchSlop:I

    .line 275
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumVelocity:I

    .line 278
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 277
    const/high16 v3, 0x44fa0000    # 2000.0f

    .line 276
    invoke-static {v9, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumVelocity:I

    .line 279
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 280
    const v3, 0x7f0d014f

    .line 279
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    .line 281
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 282
    const v3, 0x7f0d0131

    .line 281
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarElevation:F

    .line 283
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    .line 284
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getStatusBarHeight(Landroid/content/res/Resources;)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mStatusBarHeight:I

    .line 285
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 286
    const v3, 0x7f0d0152

    .line 285
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 286
    iget v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mStatusBarHeight:I

    .line 285
    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumTitleMargin:I

    .line 289
    new-array v2, v9, [I

    const v3, 0x10102eb

    aput v3, v2, v6

    .line 288
    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 290
    .local v0, "attributeArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarSize:I

    .line 291
    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarSize:I

    iget v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mStatusBarHeight:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    .line 294
    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumPortraitHeaderHeight:I

    .line 295
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 264
    return-void

    .line 116
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 180
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 187
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private alphaMatrix(FI)Landroid/graphics/ColorMatrix;
    .locals 5
    .param p1, "alpha"    # F
    .param p2, "color"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x437f0000    # 255.0f

    .line 1210
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v3

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1211
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v3

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 1212
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v3

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 1213
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    sub-float v1, v4, p1

    mul-float/2addr v1, v3

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 1214
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    sub-float v1, v4, p1

    mul-float/2addr v1, v3

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 1215
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    sub-float v1, v4, p1

    mul-float/2addr v1, v3

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 1216
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mWhitenessColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 1217
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mWhitenessColorMatrix:Landroid/graphics/ColorMatrix;

    return-object v0
.end method

.method private calculateCollapsedLargeTitlePadding()V
    .locals 5

    .prologue
    .line 1071
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1072
    .local v2, "largeTextViewRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1073
    .local v1, "invisiblePlaceholderTextViewRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 1074
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mInvisiblePlaceholderTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 1075
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1076
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 1077
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 1076
    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mCollapsedTitleStartMargin:I

    .line 1085
    :goto_0
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 1084
    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 1086
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 1084
    sub-int v0, v3, v4

    .line 1089
    .local v0, "desiredTopToCenter":I
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    iput v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mCollapsedTitleBottomMargin:I

    .line 1070
    return-void

    .line 1079
    .end local v0    # "desiredTopToCenter":I
    :cond_0
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 1080
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 1079
    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mCollapsedTitleStartMargin:I

    goto :goto_0
.end method

.method private calculateHeightRatio(I)F
    .locals 3
    .param p1, "height"    # I

    .prologue
    .line 1202
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumPortraitHeaderHeight:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    .line 1203
    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumPortraitHeaderHeight:I

    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumPortraitHeaderHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 1202
    div-float/2addr v0, v1

    return v0
.end method

.method private configureGradientViewHeights()V
    .locals 7

    .prologue
    const/high16 v6, 0x3fa00000    # 1.25f

    .line 401
    const/high16 v0, 0x3fa00000    # 1.25f

    .line 403
    .local v0, "GRADIENT_SIZE_COEFFICIENT":F
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 405
    .local v1, "actionBarGradientLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarSize:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 404
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 406
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 410
    .local v3, "titleGradientLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 411
    .local v2, "titleContentLayoutParms":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    .line 412
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 411
    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 413
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    return-void
.end method

.method private expandHeader()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 554
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeaderHeight()I

    move-result v1

    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    if-eq v1, v2, :cond_0

    .line 555
    const-string/jumbo v1, "headerHeight"

    new-array v2, v4, [I

    .line 556
    iget v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    aput v3, v2, v5

    .line 555
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 557
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 558
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 560
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    const-string/jumbo v2, "scrollY"

    new-array v3, v4, [I

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    neg-int v4, v4

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 553
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method private fling(F)V
    .locals 9
    .param p1, "velocity"    # F

    .prologue
    const/4 v1, 0x0

    .line 894
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumVelocity:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 895
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumVelocity:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float p1, v0, v2

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v2

    float-to-int v4, p1

    const v7, -0x7fffffff

    .line 900
    const v8, 0x7fffffff

    move v3, v1

    move v5, v1

    move v6, v1

    .line 899
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 901
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->invalidate()V

    .line 893
    return-void
.end method

.method private getCurrentVelocity()F
    .locals 3

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 887
    const/4 v0, 0x0

    return v0

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumVelocity:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 890
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0
.end method

.method private getFullyCompressedHeaderHeight()I
    .locals 2

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getOverflowingChildViewSize()I

    move-result v1

    sub-int/2addr v0, v1

    .line 954
    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    .line 953
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 954
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v1

    .line 953
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getMaximumScrollUpwards()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 905
    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-nez v0, :cond_0

    .line 906
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    .line 908
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v1

    .line 906
    add-int/2addr v0, v1

    .line 908
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getFullyCompressedHeaderHeight()I

    move-result v1

    .line 906
    sub-int/2addr v0, v1

    .line 910
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollViewChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 911
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getFullyCompressedHeaderHeight()I

    move-result v2

    .line 910
    add-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 906
    add-int/2addr v0, v1

    return v0

    .line 913
    :cond_0
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    .line 915
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollViewChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 913
    add-int/2addr v0, v1

    return v0
.end method

.method private getMaximumScrollableHeaderHeight()I
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsOpenContactSquare:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIntermediateHeaderHeight:I

    goto :goto_0
.end method

.method private getOverflowingChildViewSize()I
    .locals 3

    .prologue
    .line 961
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollViewChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 962
    .local v0, "usedScrollViewSpace":I
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v1

    neg-int v1, v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getScrollUntilOffBottom()I
    .locals 2

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll_ignoreOversizedHeaderForSnapping()I

    move-result v1

    add-int/2addr v0, v1

    .line 827
    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    .line 826
    sub-int/2addr v0, v1

    return v0
.end method

.method private getScroll_ignoreOversizedHeaderForSnapping()I
    .locals 3

    .prologue
    .line 809
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 810
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getToolbarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 809
    add-int/2addr v0, v1

    .line 811
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 809
    add-int/2addr v0, v1

    return v0
.end method

.method private getTransparentHeightRatio(I)F
    .locals 4
    .param p1, "transparentHeight"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 664
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 666
    .local v0, "heightRatio":F
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float v1, v3, v1

    return v1
.end method

.method private getTransparentViewHeight()I
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method private motionShouldStartDrag(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    aget v7, v7, v4

    sub-float v0, v6, v7

    .line 1244
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    aget v7, v7, v5

    sub-float v1, v6, v7

    .line 1245
    .local v1, "deltaY":F
    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTouchSlop:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 1246
    .local v2, "draggedX":Z
    :goto_0
    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-gtz v6, :cond_1

    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTouchSlop:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gez v6, :cond_4

    :cond_1
    const/4 v3, 0x1

    .line 1247
    .local v3, "draggedY":Z
    :goto_1
    if-eqz v3, :cond_2

    if-eqz v2, :cond_5

    :cond_2
    :goto_2
    return v4

    .line 1245
    .end local v2    # "draggedX":Z
    .end local v3    # "draggedY":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "draggedX":Z
    goto :goto_0

    .line 1246
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "draggedY":Z
    goto :goto_1

    :cond_5
    move v4, v5

    .line 1247
    goto :goto_2
.end method

.method private multiplyBlend(IF)F
    .locals 2
    .param p1, "color"    # I
    .param p2, "alpha"    # F

    .prologue
    .line 1234
    int-to-float v0, p1

    mul-float/2addr v0, p2

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private multiplyBlendMatrix(IF)Landroid/graphics/ColorMatrix;
    .locals 3
    .param p1, "color"    # I
    .param p2, "alpha"    # F

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrixValues:[F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/android/contacts/widget/MultiShrinkScroller;->multiplyBlend(IF)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1227
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrixValues:[F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/android/contacts/widget/MultiShrinkScroller;->multiplyBlend(IF)F

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 1228
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrixValues:[F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/android/contacts/widget/MultiShrinkScroller;->multiplyBlend(IF)F

    move-result v1

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 1229
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrix:Landroid/graphics/ColorMatrix;

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 1230
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrix:Landroid/graphics/ColorMatrix;

    return-object v0
.end method

.method private onDragFinished(I)V
    .locals 1
    .param p1, "flingDelta"    # I

    .prologue
    .line 594
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->snapToTop(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->snapToBottom(I)V

    .line 593
    :cond_0
    return-void
.end method

.method private scrollDown(I)V
    .locals 4
    .param p1, "delta"    # I

    .prologue
    const/4 v3, 0x0

    .line 966
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    if-lez v2, :cond_0

    .line 967
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 968
    .local v0, "originalValue":I
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v3, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 969
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr p1, v2

    .line 971
    .end local v0    # "originalValue":I
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 972
    .local v1, "toolbarLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 973
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 974
    .restart local v0    # "originalValue":I
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v2, p1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 975
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 976
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v3

    .line 975
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 977
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 978
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v2, v0, v2

    sub-int/2addr p1, v2

    .line 980
    .end local v0    # "originalValue":I
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->setTransparentViewHeight(I)V

    .line 982
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollUntilOffBottom()I

    move-result v2

    if-gtz v2, :cond_2

    .line 983
    new-instance v2, Lcom/android/contacts/widget/MultiShrinkScroller$9;

    invoke-direct {v2, p0}, Lcom/android/contacts/widget/MultiShrinkScroller$9;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->post(Ljava/lang/Runnable;)Z

    .line 965
    :cond_2
    return-void
.end method

.method private scrollUp(I)V
    .locals 5
    .param p1, "delta"    # I

    .prologue
    const/4 v4, 0x0

    .line 929
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v2

    if-eqz v2, :cond_0

    .line 930
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v0

    .line 931
    .local v0, "originalValue":I
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->setTransparentViewHeight(I)V

    .line 932
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->setTransparentViewHeight(I)V

    .line 933
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v2

    sub-int v2, v0, v2

    sub-int/2addr p1, v2

    .line 936
    .end local v0    # "originalValue":I
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 937
    .local v1, "toolbarLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getFullyCompressedHeaderHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 938
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 939
    .restart local v0    # "originalValue":I
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v2, p1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 940
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 941
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getFullyCompressedHeaderHeight()I

    move-result v3

    .line 940
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 942
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 943
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v2, v0, v2

    sub-int/2addr p1, v2

    .line 945
    .end local v0    # "originalValue":I
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 928
    return-void
.end method

.method private setInterpolatedTitleMargins(F)V
    .locals 10
    .param p1, "x"    # F

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1098
    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1100
    .local v4, "titleLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1103
    .local v5, "toolbarLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mStartColumn:Landroid/view/View;

    if-nez v6, :cond_1

    const/4 v3, 0x0

    .line 1106
    .local v3, "startColumnWidth":I
    :goto_0
    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumTitleMargin:I

    iget v7, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mStatusBarHeight:I

    sub-int v1, v6, v7

    .line 1107
    .local v1, "maximumTitleMarginStart":I
    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mCollapsedTitleStartMargin:I

    int-to-float v6, v6

    sub-float v7, v8, p1

    mul-float/2addr v6, v7

    .line 1108
    int-to-float v7, v1

    mul-float/2addr v7, p1

    .line 1107
    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 1110
    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mCollapsedTitleBottomMargin:I

    int-to-float v6, v6

    sub-float v7, v8, p1

    mul-float/2addr v6, v7

    .line 1111
    iget v7, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumTitleMargin:I

    int-to-float v7, v7

    mul-float/2addr v7, p1

    .line 1110
    add-float/2addr v6, v7

    float-to-int v2, v6

    .line 1116
    .local v2, "pretendBottomMargin":I
    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mExtraInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 1117
    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mExtraInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 1118
    .local v0, "extraInfoHeight":I
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v6

    .line 1119
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1118
    add-int/2addr v6, v7

    sub-int/2addr v6, v2

    .line 1120
    iget v7, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderViewSize:I

    .line 1118
    sub-int/2addr v6, v7

    .line 1120
    int-to-float v7, v0

    mul-float/2addr v7, p1

    float-to-int v7, v7

    .line 1118
    sub-int/2addr v6, v7

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1121
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1122
    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1124
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->configureGradientViewHeights()V

    .line 1096
    :cond_0
    return-void

    .line 1103
    .end local v0    # "extraInfoHeight":I
    .end local v1    # "maximumTitleMarginStart":I
    .end local v2    # "pretendBottomMargin":I
    .end local v3    # "startColumnWidth":I
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mStartColumn:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .restart local v3    # "startColumnWidth":I
    goto :goto_0

    .line 1117
    .restart local v1    # "maximumTitleMarginStart":I
    .restart local v2    # "pretendBottomMargin":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "extraInfoHeight":I
    goto :goto_1
.end method

.method private setTransparentViewHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 925
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 923
    return-void
.end method

.method private shouldStartDrag(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 453
    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    .line 454
    iput-boolean v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    .line 455
    return v1

    .line 458
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 485
    :cond_1
    :goto_0
    :pswitch_0
    return v1

    .line 462
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateLastEventPosition(Landroid/view/MotionEvent;)V

    .line 463
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 464
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->startDrag()V

    .line 465
    return v2

    .line 467
    :cond_2
    iput-boolean v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mReceivedDown:Z

    goto :goto_0

    .line 474
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->motionShouldStartDrag(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateLastEventPosition(Landroid/view/MotionEvent;)V

    .line 476
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->startDrag()V

    .line 477
    return v2

    .line 458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private smoothScrollBy(I)V
    .locals 3
    .param p1, "delta"    # I

    .prologue
    const/4 v2, 0x0

    .line 1258
    if-nez p1, :cond_0

    .line 1261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Smooth scrolling by delta=0 is pointless and harmful"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, p1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1265
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->invalidate()V

    .line 1257
    return-void
.end method

.method private snapToBottom(I)V
    .locals 5
    .param p1, "flingDelta"    # I

    .prologue
    .line 628
    iget-boolean v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHasEverTouchedTheTop:Z

    if-eqz v3, :cond_3

    .line 631
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v3

    neg-int v3, v3

    iget v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    add-int/2addr v3, v4

    sub-int/2addr v3, p1

    int-to-float v2, v3

    .line 633
    .local v2, "predictedScrollPastTop":F
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 634
    const/4 v4, 0x2

    .line 633
    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 635
    .local v1, "isLandscape":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 638
    iget v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollOffBottom()V

    .line 649
    :cond_0
    :goto_1
    return-void

    .line 633
    .end local v1    # "isLandscape":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isLandscape":Z
    goto :goto_0

    .line 644
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIntermediateHeaderHeight:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    .line 645
    .local v0, "heightMinusHeader":F
    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollOffBottom()V

    goto :goto_1

    .line 651
    .end local v0    # "heightMinusHeader":F
    .end local v1    # "isLandscape":Z
    .end local v2    # "predictedScrollPastTop":F
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v3

    neg-int v3, v3

    sub-int/2addr v3, p1

    if-lez v3, :cond_4

    .line 652
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollOffBottom()V

    .line 627
    :cond_4
    return-void
.end method

.method private snapToTop(I)Z
    .locals 5
    .param p1, "flingDelta"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 605
    iget-boolean v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHasEverTouchedTheTop:Z

    if-eqz v1, :cond_0

    .line 608
    return v3

    .line 610
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll_ignoreOversizedHeaderForSnapping()I

    move-result v1

    neg-int v1, v1

    .line 611
    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    .line 610
    add-int v0, v1, v2

    .line 612
    .local v0, "requiredScroll":I
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll_ignoreOversizedHeaderForSnapping()I

    move-result v1

    neg-int v1, v1

    sub-int/2addr v1, p1

    if-gez v1, :cond_1

    .line 613
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll_ignoreOversizedHeaderForSnapping()I

    move-result v1

    neg-int v1, v1

    sub-int/2addr v1, p1

    .line 614
    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    neg-int v2, v2

    .line 613
    if-le v1, v2, :cond_1

    .line 614
    if-eqz v0, :cond_1

    .line 617
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 618
    invoke-direct {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->smoothScrollBy(I)V

    .line 619
    return v4

    .line 621
    :cond_1
    return v3
.end method

.method private startDrag()V
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    .line 568
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 566
    return-void
.end method

.method private stopDrag(Z)V
    .locals 4
    .param p1, "cancelled"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 572
    iput-boolean v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    .line 573
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 574
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getCurrentVelocity()F

    move-result v0

    .line 575
    .local v0, "velocity":F
    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumVelocity:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumVelocity:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 576
    :cond_0
    neg-float v1, v0

    invoke-direct {p0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->fling(F)V

    .line 577
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->onDragFinished(I)V

    .line 585
    .end local v0    # "velocity":F
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    .line 586
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 587
    iput-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 590
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 571
    return-void

    .line 579
    .restart local v0    # "velocity":F
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->onDragFinished(I)V

    goto :goto_0

    .line 582
    .end local v0    # "velocity":F
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->onDragFinished(I)V

    goto :goto_0
.end method

.method private updateExtraInfoTextView(F)V
    .locals 4
    .param p1, "ratio"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1058
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTextSizePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1060
    .local v0, "bezierOutput":F
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mExtraInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1061
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mExtraInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    .line 1062
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mExtraInfoTextView:Landroid/widget/TextView;

    .line 1063
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mExtraInfoTextWhiteBlendingInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    .line 1062
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1057
    return-void
.end method

.method private updateHeaderTextSizeAndMargin()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1000
    iget-boolean v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-eqz v5, :cond_0

    .line 1002
    return-void

    .line 1006
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1007
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setPivotX(F)V

    .line 1008
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAvatarView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1009
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mExtraInfoTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mExtraInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setPivotX(F)V

    .line 1015
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setPivotY(F)V

    .line 1018
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAvatarView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 1019
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mExtraInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setPivotY(F)V

    .line 1021
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1022
    .local v4, "toolbarHeight":I
    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoTouchInterceptOverlay:Landroid/view/View;

    iget v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    if-eq v4, v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v6, v5}, Landroid/view/View;->setClickable(Z)V

    .line 1024
    iget v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    if-lt v4, v5, :cond_3

    .line 1026
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1027
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setScaleY(F)V

    .line 1028
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1029
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1030
    invoke-direct {p0, v8}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateExtraInfoTextView(F)V

    .line 1031
    invoke-direct {p0, v8}, Lcom/android/contacts/widget/MultiShrinkScroller;->setInterpolatedTitleMargins(F)V

    .line 1032
    return-void

    .line 1011
    .end local v4    # "toolbarHeight":I
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setPivotX(F)V

    .line 1012
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1013
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mExtraInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setPivotX(F)V

    goto :goto_0

    .line 1022
    .restart local v4    # "toolbarHeight":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 1035
    :cond_3
    iget v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    .line 1036
    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    iget v7, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 1035
    div-float v2, v5, v6

    .line 1037
    .local v2, "ratio":F
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mInvisiblePlaceholderTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    int-to-float v1, v5

    .line 1038
    .local v1, "minimumSize":F
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTextSizePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1039
    .local v0, "bezierOutput":F
    iget v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderTextSize:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    mul-float/2addr v5, v0

    add-float/2addr v5, v1

    .line 1040
    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderTextSize:I

    int-to-float v6, v6

    .line 1039
    div-float v3, v5, v6

    .line 1044
    .local v3, "scale":F
    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1045
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1047
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1048
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 1049
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1050
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1051
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAvatarView:Landroid/widget/ImageView;

    .line 1052
    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mExtraInfoTextWhiteBlendingInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v6

    .line 1051
    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1053
    invoke-direct {p0, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateExtraInfoTextView(F)V

    .line 1054
    invoke-direct {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->setInterpolatedTitleMargins(F)V

    .line 999
    return-void
.end method

.method private updateLastEventPosition(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1239
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1237
    return-void
.end method

.method private updatePhotoTintAndDropShadow()V
    .locals 14

    .prologue
    .line 1132
    const-string/jumbo v9, "updatePhotoTintAndDropShadow"

    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1134
    iget-boolean v9, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-eqz v9, :cond_0

    .line 1137
    iget-object v9, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v10, 0xff

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 1138
    iget-object v9, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v10, 0xff

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 1139
    return-void

    .line 1144
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getToolbarHeight()I

    move-result v8

    .line 1146
    .local v8, "toolbarHeight":I
    iget v9, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    if-gt v8, v9, :cond_1

    iget-boolean v9, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-eqz v9, :cond_3

    .line 1149
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setElevation(F)V

    .line 1153
    :goto_0
    iget-object v9, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 1159
    iget v9, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumPortraitHeaderHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    .line 1158
    float-to-int v9, v9

    invoke-direct {p0, v9}, Lcom/android/contacts/widget/MultiShrinkScroller;->calculateHeightRatio(I)F

    move-result v4

    .line 1160
    .local v4, "intermediateRatio":F
    iget-boolean v9, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-nez v9, :cond_4

    .line 1161
    invoke-direct {p0, v8}, Lcom/android/contacts/widget/MultiShrinkScroller;->calculateHeightRatio(I)F

    move-result v6

    .line 1168
    .local v6, "ratio":F
    :goto_1
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v6

    div-float/2addr v9, v4

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1172
    .local v5, "linearBeforeMiddle":F
    const v0, 0x3f8ccccd    # 1.1f

    .line 1173
    .local v0, "EXPONENT_ALMOST_ONE":F
    float-to-double v10, v5

    .line 1174
    const-wide v12, 0x3ff19999a0000000L    # 1.100000023841858

    .line 1173
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v7, v10

    .line 1175
    .local v7, "semiLinearBeforeMiddle":F
    iget-object v9, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v9}, Landroid/graphics/ColorMatrix;->reset()V

    .line 1176
    iget-object v9, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v9, v7}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1177
    iget-object v9, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 1178
    iget-object v10, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mWhiteBlendingPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v6

    invoke-virtual {v10, v11}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v10, v11, v10

    const/4 v11, -0x1

    .line 1177
    invoke-direct {p0, v10, v11}, Lcom/android/contacts/widget/MultiShrinkScroller;->alphaMatrix(FI)Landroid/graphics/ColorMatrix;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 1182
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v1, v9, v7

    .line 1183
    .local v1, "colorAlpha":F
    iget-object v9, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget v10, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHeaderTintColor:I

    invoke-direct {p0, v10, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->multiplyBlendMatrix(IF)Landroid/graphics/ColorMatrix;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 1185
    iget-object v9, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoView:Landroid/widget/ImageView;

    new-instance v10, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v11, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v10, v11}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1187
    iget-object v9, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1188
    .local v2, "compoundDrawable":[Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x2

    aget-object v9, v2, v9

    if-eqz v9, :cond_2

    .line 1189
    const/4 v9, 0x2

    aget-object v9, v2, v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 1190
    const/4 v9, 0x2

    aget-object v9, v2, v9

    new-instance v10, Landroid/graphics/ColorMatrixColorFilter;

    .line 1191
    iget-object v11, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 1190
    invoke-direct {v10, v11}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1194
    :cond_2
    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v9, v5

    float-to-int v3, v9

    .line 1195
    .local v3, "gradientAlpha":I
    iget-object v9, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 1196
    iget-object v9, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 1198
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1128
    return-void

    .line 1147
    .end local v0    # "EXPONENT_ALMOST_ONE":F
    .end local v1    # "colorAlpha":F
    .end local v2    # "compoundDrawable":[Landroid/graphics/drawable/Drawable;
    .end local v3    # "gradientAlpha":I
    .end local v4    # "intermediateRatio":F
    .end local v5    # "linearBeforeMiddle":F
    .end local v6    # "ratio":F
    .end local v7    # "semiLinearBeforeMiddle":F
    :cond_3
    iget-object v9, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    iget v10, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarElevation:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setElevation(F)V

    goto/16 :goto_0

    .line 1165
    .restart local v4    # "intermediateRatio":F
    :cond_4
    move v6, v4

    .restart local v6    # "ratio":F
    goto/16 :goto_1
.end method

.method private updatePositionAndComputeDelta(Landroid/view/MotionEvent;)F
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 1251
    const/4 v0, 0x1

    .line 1252
    .local v0, "VERTICAL":I
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    aget v1, v2, v3

    .line 1253
    .local v1, "position":F
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateLastEventPosition(Landroid/view/MotionEvent;)V

    .line 1254
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    aget v2, v2, v3

    sub-float v2, v1, v2

    return v2
.end method


# virtual methods
.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 832
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 834
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v2

    .line 835
    .local v2, "oldScroll":I
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-virtual {p0, v4, v3}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollTo(II)V

    .line 836
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int v0, v3, v2

    .line 837
    .local v0, "delta":I
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollUpwards()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v4

    sub-int v1, v3, v4

    .line 838
    .local v1, "distanceFromMaxScrolling":I
    if-le v0, v1, :cond_0

    if-lez v1, :cond_0

    .line 839
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 842
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_1

    .line 844
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->postInvalidateOnAnimation()V

    .line 846
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollUpwards()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 847
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 831
    .end local v0    # "delta":I
    .end local v1    # "distanceFromMaxScrolling":I
    .end local v2    # "oldScroll":I
    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 854
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 856
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 857
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 858
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getPaddingRight()I

    move-result v4

    sub-int v2, v3, v4

    .line 859
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v0

    .line 865
    .local v0, "height":I
    neg-int v3, v2

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 866
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollUpwards()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 865
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 868
    const/high16 v3, 0x43340000    # 180.0f

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 869
    iget-boolean v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-eqz v3, :cond_3

    .line 871
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 872
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 873
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 878
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 879
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->postInvalidateOnAnimation()V

    .line 881
    :cond_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 853
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "width":I
    :cond_2
    return-void

    .line 876
    .restart local v0    # "height":I
    .restart local v1    # "restoreCount":I
    .restart local v2    # "width":I
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v2, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method public getHeaderHeight()I
    .locals 1
    .annotation build Lcom/android/contacts/test/NeededForReflection;
    .end annotation

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public getScroll()I
    .locals 2
    .annotation build Lcom/android/contacts/test/NeededForReflection;
    .end annotation

    .prologue
    .line 788
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 789
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v1

    .line 788
    add-int/2addr v0, v1

    .line 789
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getToolbarHeight()I

    move-result v1

    .line 788
    sub-int/2addr v0, v1

    .line 790
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 788
    add-int/2addr v0, v1

    return v0
.end method

.method public getScrollNeededToBeFullScreen()I
    .locals 1

    .prologue
    .line 818
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v0

    return v0
.end method

.method public getStartingTransparentHeightRatio()F
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    invoke-direct {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentHeightRatio(I)F

    move-result v0

    return v0
.end method

.method public getToolbarHeight()I
    .locals 1
    .annotation build Lcom/android/contacts/test/NeededForReflection;
    .end annotation

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public initialize(Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;Z)V
    .locals 2
    .param p1, "listener"    # Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;
    .param p2, "isOpenContactSquare"    # Z

    .prologue
    .line 302
    const v0, 0x7f0e01e3

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    .line 303
    const v0, 0x7f0e008d

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollViewChild:Landroid/view/View;

    .line 304
    const v0, 0x7f0e00c8

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    .line 305
    const v0, 0x7f0e01e0

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentView:Landroid/view/View;

    .line 306
    const v0, 0x7f0e01f6

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleContentView:Landroid/widget/LinearLayout;

    .line 307
    const v0, 0x7f0e01f7

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAvatarView:Landroid/widget/ImageView;

    .line 308
    const v0, 0x7f0e01f9

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mExtraInfoTextView:Landroid/widget/TextView;

    .line 309
    const v0, 0x7f0e01f8

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    .line 310
    const v0, 0x7f0e01fa

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mInvisiblePlaceholderTextView:Landroid/widget/TextView;

    .line 311
    const v0, 0x7f0e01e1

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mStartColumn:Landroid/view/View;

    .line 313
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mStartColumn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mStartColumn:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/widget/MultiShrinkScroller$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/widget/MultiShrinkScroller$3;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    const v0, 0x7f0e01e2

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/widget/MultiShrinkScroller$4;

    invoke-direct {v1, p0}, Lcom/android/contacts/widget/MultiShrinkScroller$4;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    .line 328
    iput-boolean p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsOpenContactSquare:Z

    .line 330
    const v0, 0x7f0e0192

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoView:Landroid/widget/ImageView;

    .line 332
    const v0, 0x7f0e01f4

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientView:Landroid/view/View;

    .line 333
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 334
    const v0, 0x7f0e01f5

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientView:Landroid/view/View;

    .line 335
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 337
    const v0, 0x7f0e01f3

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoTouchInterceptOverlay:Landroid/view/View;

    .line 338
    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-nez v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoTouchInterceptOverlay:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/widget/MultiShrinkScroller$5;

    invoke-direct {v1, p0}, Lcom/android/contacts/widget/MultiShrinkScroller$5;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    :cond_1
    new-instance v0, Lcom/android/contacts/widget/MultiShrinkScroller$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/widget/MultiShrinkScroller$6;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/contacts/util/SchedulingUtils;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->shouldStartDrag(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 492
    .local v0, "action":I
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_0

    .line 493
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 495
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 497
    iget-boolean v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    if-nez v3, :cond_3

    .line 498
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->shouldStartDrag(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 499
    return v4

    .line 502
    :cond_1
    if-ne v0, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mReceivedDown:Z

    if-eqz v3, :cond_2

    .line 503
    iput-boolean v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mReceivedDown:Z

    .line 504
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->performClick()Z

    move-result v3

    return v3

    .line 506
    :cond_2
    return v4

    .line 509
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 539
    :cond_4
    :goto_0
    return v4

    .line 511
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->updatePositionAndComputeDelta(Landroid/view/MotionEvent;)F

    move-result v1

    .line 512
    .local v1, "delta":F
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v3

    float-to-int v6, v1

    add-int/2addr v3, v6

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollTo(II)V

    .line 513
    iput-boolean v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mReceivedDown:Z

    .line 515
    iget-boolean v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    if-eqz v3, :cond_4

    .line 516
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollUpwards()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v5

    sub-int v2, v3, v5

    .line 517
    .local v2, "distanceFromMaxScrolling":I
    int-to-float v3, v2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_5

    .line 520
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v1, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 523
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 524
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 532
    .end local v1    # "delta":F
    .end local v2    # "distanceFromMaxScrolling":I
    :pswitch_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    move v3, v4

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/contacts/widget/MultiShrinkScroller;->stopDrag(Z)V

    .line 533
    iput-boolean v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mReceivedDown:Z

    goto :goto_0

    :cond_6
    move v3, v5

    .line 532
    goto :goto_1

    .line 509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public prepareForExpandingScrollChild()V
    .locals 2

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->suppressLayout(Z)V

    .line 1337
    return-void
.end method

.method public prepareForShrinkingScrollChild(I)V
    .locals 6
    .param p1, "heightDelta"    # I

    .prologue
    const/4 v4, 0x0

    .line 1326
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->suppressLayout(Z)V

    .line 1328
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getOverflowingChildViewSize()I

    move-result v2

    neg-int v2, v2

    add-int v1, v2, p1

    .line 1329
    .local v1, "newEmptyScrollViewSpace":I
    if-lez v1, :cond_0

    iget-boolean v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-eqz v2, :cond_1

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1330
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getToolbarHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 1331
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v3

    .line 1330
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1332
    .local v0, "newDesiredToolbarHeight":I
    const-string/jumbo v2, "toolbarHeight"

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1333
    const-wide/16 v4, 0x12c

    .line 1332
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public scrollOffBottom()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 670
    new-instance v0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;

    .line 671
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getCurrentVelocity()F

    move-result v2

    .line 672
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollUntilOffBottom()I

    move-result v3

    .line 671
    const/16 v4, 0x12c

    .line 670
    invoke-direct {v0, p0, v4, v2, v3}, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;IFI)V

    .line 673
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v5}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 674
    const-string/jumbo v2, "scroll"

    new-array v3, v5, [I

    .line 675
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v4

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollUntilOffBottom()I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, v3, v6

    .line 674
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 676
    .local v1, "translateAnimation":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 677
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 678
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 679
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mSnapToBottomListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 680
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 681
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    if-eqz v2, :cond_0

    .line 682
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    invoke-interface {v2}, Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;->onStartScrollOffBottom()V

    .line 669
    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v3

    sub-int v0, p2, v3

    .line 716
    .local v0, "delta":I
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollNeededToBeFullScreen()I

    move-result v3

    if-gtz v3, :cond_3

    const/4 v2, 0x1

    .line 717
    .local v2, "wasFullscreen":Z
    :goto_0
    if-lez v0, :cond_4

    .line 718
    invoke-direct {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollUp(I)V

    .line 722
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updatePhotoTintAndDropShadow()V

    .line 723
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateHeaderTextSizeAndMargin()V

    .line 724
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollNeededToBeFullScreen()I

    move-result v3

    if-gtz v3, :cond_5

    const/4 v1, 0x1

    .line 725
    .local v1, "isFullscreen":Z
    :goto_2
    iget-boolean v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHasEverTouchedTheTop:Z

    or-int/2addr v3, v1

    iput-boolean v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHasEverTouchedTheTop:Z

    .line 726
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    if-eqz v3, :cond_2

    .line 727
    if-eqz v2, :cond_0

    if-eqz v1, :cond_6

    .line 729
    :cond_0
    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 730
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    invoke-interface {v3}, Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;->onEnterFullscreen()V

    .line 732
    :cond_1
    :goto_3
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 714
    :cond_2
    :goto_4
    return-void

    .line 716
    .end local v1    # "isFullscreen":Z
    .end local v2    # "wasFullscreen":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "wasFullscreen":Z
    goto :goto_0

    .line 720
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollDown(I)V

    goto :goto_1

    .line 724
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isFullscreen":Z
    goto :goto_2

    .line 728
    :cond_6
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    invoke-interface {v3}, Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;->onExitFullscreen()V

    goto :goto_3

    .line 733
    :cond_7
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    .line 734
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentHeightRatio(I)F

    move-result v4

    .line 733
    invoke-interface {v3, v4}, Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;->onTransparentViewHeightChange(F)V

    goto :goto_4
.end method

.method public scrollUpForEntranceAnimation(Z)V
    .locals 8
    .param p1, "scrollToCurrentPosition"    # Z

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v2

    .line 694
    .local v2, "currentPosition":I
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v5

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 693
    sub-int v5, v2, v5

    add-int/lit8 v1, v5, 0x1

    .line 695
    .local v1, "bottomScrollPosition":I
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 696
    const v6, 0x10c000e

    .line 695
    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 697
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz p1, :cond_0

    move v5, v2

    :goto_0
    add-int v3, v2, v5

    .line 699
    .local v3, "desiredValue":I
    const-string/jumbo v5, "scroll"

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    .line 700
    const/4 v7, 0x1

    aput v3, v6, v7

    .line 699
    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 701
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 702
    new-instance v5, Lcom/android/contacts/widget/MultiShrinkScroller$8;

    invoke-direct {v5, p0, v3}, Lcom/android/contacts/widget/MultiShrinkScroller$8;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;I)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 710
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 691
    return-void

    .line 698
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v3    # "desiredValue":I
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v5

    goto :goto_0
.end method

.method public setExtraTitleInformation(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 422
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mExtraInfoTextView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mExtraInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    new-instance v0, Lcom/android/contacts/widget/MultiShrinkScroller$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/widget/MultiShrinkScroller$7;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    invoke-static {p0, v1, v0}, Lcom/android/contacts/util/SchedulingUtils;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    .line 421
    return-void

    :cond_0
    move v0, v1

    .line 423
    goto :goto_0
.end method

.method public setHeaderHeight(I)V
    .locals 2
    .param p1, "height"    # I
    .annotation build Lcom/android/contacts/test/NeededForReflection;
    .end annotation

    .prologue
    .line 765
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 766
    .local v0, "toolbarLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 767
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updatePhotoTintAndDropShadow()V

    .line 769
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateHeaderTextSizeAndMargin()V

    .line 763
    return-void
.end method

.method public setHeaderTintColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v3, 0x0

    .line 543
    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHeaderTintColor:I

    .line 544
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updatePhotoTintAndDropShadow()V

    .line 546
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 547
    .local v0, "edgeEffectAlpha":I
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v2, 0xffffff

    and-int/2addr v2, p1

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 542
    return-void
.end method

.method public setScroll(I)V
    .locals 1
    .param p1, "scroll"    # I
    .annotation build Lcom/android/contacts/test/NeededForReflection;
    .end annotation

    .prologue
    .line 779
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollTo(II)V

    .line 778
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoTouchInterceptOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 434
    return-void
.end method

.method public setToolbarHeight(I)V
    .locals 2
    .param p1, "delta"    # I
    .annotation build Lcom/android/contacts/test/NeededForReflection;
    .end annotation

    .prologue
    .line 746
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 747
    .local v0, "toolbarLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 748
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarWrapper:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updatePhotoTintAndDropShadow()V

    .line 751
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateHeaderTextSizeAndMargin()V

    .line 744
    return-void
.end method

.method public setUseGradient(Z)V
    .locals 4
    .param p1, "useGradient"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 441
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientView:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientView:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 439
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 441
    goto :goto_0

    :cond_2
    move v1, v2

    .line 442
    goto :goto_1
.end method
