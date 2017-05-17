.class public Lcom/android/contacts/util/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/ViewPager$ItemInfo;,
        Lcom/android/contacts/util/ViewPager$OnPageChangeListener;,
        Lcom/android/contacts/util/ViewPager$SimpleOnPageChangeListener;,
        Lcom/android/contacts/util/ViewPager$PageTransformer;,
        Lcom/android/contacts/util/ViewPager$OnAdapterChangeListener;,
        Lcom/android/contacts/util/ViewPager$Decor;,
        Lcom/android/contacts/util/ViewPager$SavedState;,
        Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;,
        Lcom/android/contacts/util/ViewPager$PagerObserver;,
        Lcom/android/contacts/util/ViewPager$LayoutParams;,
        Lcom/android/contacts/util/ViewPager$ViewPositionComparator;,
        Lcom/android/contacts/util/ViewPager$1;,
        Lcom/android/contacts/util/ViewPager$2;,
        Lcom/android/contacts/util/ViewPager$3;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/util/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/android/contacts/util/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListener:Lcom/android/contacts/util/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mIgnoreGutter:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/util/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lcom/android/contacts/util/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Lcom/android/contacts/util/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Lcom/android/contacts/util/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/android/contacts/util/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/util/ViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/contacts/util/ViewPager;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/contacts/util/ViewPager;I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/util/ViewPager;->setScrollState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 100
    const v1, 0x10100b3

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 99
    sput-object v0, Lcom/android/contacts/util/ViewPager;->LAYOUT_ATTRS:[I

    .line 117
    new-instance v0, Lcom/android/contacts/util/ViewPager$1;

    invoke-direct {v0}, Lcom/android/contacts/util/ViewPager$1;-><init>()V

    sput-object v0, Lcom/android/contacts/util/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 124
    new-instance v0, Lcom/android/contacts/util/ViewPager$2;

    invoke-direct {v0}, Lcom/android/contacts/util/ViewPager$2;-><init>()V

    sput-object v0, Lcom/android/contacts/util/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 224
    new-instance v0, Lcom/android/contacts/util/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/android/contacts/util/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/android/contacts/util/ViewPager;->sPositionComparator:Lcom/android/contacts/util/ViewPager$ViewPositionComparator;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 345
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Lcom/android/contacts/util/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/android/contacts/util/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/util/ViewPager;->mTempItem:Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/util/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 138
    iput v1, p0, Lcom/android/contacts/util/ViewPager;->mRestoredCurItem:I

    .line 139
    iput-object v4, p0, Lcom/android/contacts/util/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 140
    iput-object v4, p0, Lcom/android/contacts/util/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 152
    const v0, -0x800001

    iput v0, p0, Lcom/android/contacts/util/ViewPager;->mFirstOffset:F

    .line 153
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/contacts/util/ViewPager;->mLastOffset:F

    .line 162
    iput v3, p0, Lcom/android/contacts/util/ViewPager;->mOffscreenPageLimit:I

    .line 181
    iput v1, p0, Lcom/android/contacts/util/ViewPager;->mActivePointerId:I

    .line 208
    iput-boolean v3, p0, Lcom/android/contacts/util/ViewPager;->mFirstLayout:Z

    .line 209
    iput-boolean v2, p0, Lcom/android/contacts/util/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 242
    new-instance v0, Lcom/android/contacts/util/ViewPager$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/ViewPager$3;-><init>(Lcom/android/contacts/util/ViewPager;)V

    iput-object v0, p0, Lcom/android/contacts/util/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 249
    iput v2, p0, Lcom/android/contacts/util/ViewPager;->mScrollState:I

    .line 346
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->initViewPager()V

    .line 344
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 350
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Lcom/android/contacts/util/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/android/contacts/util/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/util/ViewPager;->mTempItem:Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/util/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 138
    iput v1, p0, Lcom/android/contacts/util/ViewPager;->mRestoredCurItem:I

    .line 139
    iput-object v4, p0, Lcom/android/contacts/util/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 140
    iput-object v4, p0, Lcom/android/contacts/util/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 152
    const v0, -0x800001

    iput v0, p0, Lcom/android/contacts/util/ViewPager;->mFirstOffset:F

    .line 153
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/contacts/util/ViewPager;->mLastOffset:F

    .line 162
    iput v3, p0, Lcom/android/contacts/util/ViewPager;->mOffscreenPageLimit:I

    .line 181
    iput v1, p0, Lcom/android/contacts/util/ViewPager;->mActivePointerId:I

    .line 208
    iput-boolean v3, p0, Lcom/android/contacts/util/ViewPager;->mFirstLayout:Z

    .line 209
    iput-boolean v2, p0, Lcom/android/contacts/util/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 242
    new-instance v0, Lcom/android/contacts/util/ViewPager$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/ViewPager$3;-><init>(Lcom/android/contacts/util/ViewPager;)V

    iput-object v0, p0, Lcom/android/contacts/util/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 249
    iput v2, p0, Lcom/android/contacts/util/ViewPager;->mScrollState:I

    .line 351
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->initViewPager()V

    .line 349
    return-void
.end method

.method private calculatePageOffsets(Lcom/android/contacts/util/ViewPager$ItemInfo;ILcom/android/contacts/util/ViewPager$ItemInfo;)V
    .locals 14
    .param p1, "curItem"    # Lcom/android/contacts/util/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/android/contacts/util/ViewPager$ItemInfo;

    .prologue
    .line 1123
    iget-object v12, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 1124
    .local v1, "N":I
    invoke-direct {p0}, Lcom/android/contacts/util/ViewPager;->getClientWidth()I

    move-result v11

    .line 1125
    .local v11, "width":I
    if-lez v11, :cond_0

    iget v12, p0, Lcom/android/contacts/util/ViewPager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    .line 1127
    .local v6, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_6

    .line 1128
    move-object/from16 v0, p3

    iget v8, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    .line 1130
    .local v8, "oldCurPosition":I
    iget v12, p1, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-ge v8, v12, :cond_3

    .line 1131
    const/4 v5, 0x0

    .line 1132
    .local v5, "itemIndex":I
    const/4 v3, 0x0

    .line 1133
    .local v3, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1134
    .local v7, "offset":F
    add-int/lit8 v9, v8, 0x1

    .line 1135
    .end local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .local v9, "pos":I
    :goto_1
    iget v12, p1, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_6

    iget-object v12, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 1136
    iget-object v12, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 1137
    .local v3, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :goto_2
    iget v12, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_1

    iget-object v12, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_1

    .line 1138
    add-int/lit8 v5, v5, 0x1

    .line 1139
    iget-object v12, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    check-cast v3, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    goto :goto_2

    .line 1125
    .end local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v6    # "marginOffset":F
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "marginOffset":F
    goto :goto_0

    .line 1141
    .restart local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .restart local v5    # "itemIndex":I
    .restart local v7    # "offset":F
    .restart local v8    # "oldCurPosition":I
    .restart local v9    # "pos":I
    :cond_1
    :goto_3
    iget v12, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_2

    .line 1144
    iget-object v12, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1145
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1147
    :cond_2
    iput v7, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    .line 1148
    iget v12, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1135
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1150
    .end local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v9    # "pos":I
    :cond_3
    iget v12, p1, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-le v8, v12, :cond_6

    .line 1151
    iget-object v12, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 1152
    .restart local v5    # "itemIndex":I
    const/4 v3, 0x0

    .line 1153
    .local v3, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    .line 1154
    .restart local v7    # "offset":F
    add-int/lit8 v9, v8, -0x1

    .line 1155
    .end local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .restart local v9    # "pos":I
    :goto_4
    iget v12, p1, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_6

    if-ltz v5, :cond_6

    .line 1156
    iget-object v12, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 1157
    .local v3, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :goto_5
    iget v12, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_4

    if-lez v5, :cond_4

    .line 1158
    add-int/lit8 v5, v5, -0x1

    .line 1159
    iget-object v12, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    check-cast v3, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    goto :goto_5

    .line 1161
    :cond_4
    :goto_6
    iget v12, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_5

    .line 1164
    iget-object v12, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1165
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 1167
    :cond_5
    iget v12, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1168
    iput v7, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    .line 1155
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 1174
    .end local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_6
    iget-object v12, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1175
    .local v4, "itemCount":I
    iget v7, p1, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    .line 1176
    .restart local v7    # "offset":F
    iget v12, p1, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, -0x1

    .line 1177
    .restart local v9    # "pos":I
    iget v12, p1, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_7

    iget v12, p1, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    :goto_7
    iput v12, p0, Lcom/android/contacts/util/ViewPager;->mFirstOffset:F

    .line 1178
    iget v12, p1, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_8

    .line 1179
    iget v12, p1, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    .line 1178
    :goto_8
    iput v12, p0, Lcom/android/contacts/util/ViewPager;->mLastOffset:F

    .line 1181
    add-int/lit8 v2, p2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_b

    .line 1182
    iget-object v12, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 1183
    .restart local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :goto_a
    iget v12, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_9

    .line 1184
    iget-object v12, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v10, v9, -0x1

    .end local v9    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_a

    .line 1177
    .end local v2    # "i":I
    .end local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_7
    const v12, -0x800001

    goto :goto_7

    .line 1179
    :cond_8
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .line 1186
    .restart local v2    # "i":I
    .restart local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_9
    iget v12, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1187
    iput v7, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    .line 1188
    iget v12, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_a

    iput v7, p0, Lcom/android/contacts/util/ViewPager;->mFirstOffset:F

    .line 1181
    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 1190
    .end local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_b
    iget v12, p1, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1191
    iget v12, p1, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, 0x1

    .line 1193
    add-int/lit8 v2, p2, 0x1

    :goto_b
    if-ge v2, v4, :cond_e

    .line 1194
    iget-object v12, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 1195
    .restart local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :goto_c
    iget v12, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_c

    .line 1196
    iget-object v12, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_c

    .line 1198
    :cond_c
    iget v12, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_d

    .line 1199
    iget v12, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    iput v12, p0, Lcom/android/contacts/util/ViewPager;->mLastOffset:F

    .line 1201
    :cond_d
    iput v7, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    .line 1202
    iget v12, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1193
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1205
    .end local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_e
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/contacts/util/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 1122
    return-void
.end method

.method private completeScroll(Z)V
    .locals 10
    .param p1, "postEvents"    # Z

    .prologue
    const/4 v9, 0x0

    .line 1737
    iget v7, p0, Lcom/android/contacts/util/ViewPager;->mScrollState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    const/4 v2, 0x1

    .line 1738
    .local v2, "needPopulate":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1740
    invoke-direct {p0, v9}, Lcom/android/contacts/util/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1741
    iget-object v7, p0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1742
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getScrollX()I

    move-result v3

    .line 1743
    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getScrollY()I

    move-result v4

    .line 1744
    .local v4, "oldY":I
    iget-object v7, p0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1745
    .local v5, "x":I
    iget-object v7, p0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1746
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1747
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/util/ViewPager;->scrollTo(II)V

    .line 1750
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    iput-boolean v9, p0, Lcom/android/contacts/util/ViewPager;->mPopulatePending:Z

    .line 1751
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 1752
    iget-object v7, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 1753
    .local v1, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    iget-boolean v7, v1, Lcom/android/contacts/util/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v7, :cond_2

    .line 1754
    const/4 v2, 0x1

    .line 1755
    iput-boolean v9, v1, Lcom/android/contacts/util/ViewPager$ItemInfo;->scrolling:Z

    .line 1751
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1737
    .end local v0    # "i":I
    .end local v1    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v2    # "needPopulate":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "needPopulate":Z
    goto :goto_0

    .line 1758
    .restart local v0    # "i":I
    :cond_4
    if-eqz v2, :cond_5

    .line 1759
    if-eqz p1, :cond_6

    .line 1760
    iget-object v7, p0, Lcom/android/contacts/util/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v7}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1736
    :cond_5
    :goto_2
    return-void

    .line 1762
    :cond_6
    iget-object v7, p0, Lcom/android/contacts/util/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private determineTargetPage(IFII)I
    .locals 7
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .prologue
    const/4 v6, 0x0

    .line 2152
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/android/contacts/util/ViewPager;->mFlingDistance:I

    if-le v4, v5, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/android/contacts/util/ViewPager;->mMinimumVelocity:I

    if-le v4, v5, :cond_2

    .line 2153
    if-lez p3, :cond_1

    move v2, p1

    .line 2159
    .local v2, "targetPage":I
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2160
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 2161
    .local v0, "firstItem":Lcom/android/contacts/util/ViewPager$ItemInfo;
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 2164
    .local v1, "lastItem":Lcom/android/contacts/util/ViewPager$ItemInfo;
    iget v4, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    iget v5, v1, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2167
    .end local v0    # "firstItem":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v1    # "lastItem":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_0
    return v2

    .line 2153
    .end local v2    # "targetPage":I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .restart local v2    # "targetPage":I
    goto :goto_0

    .line 2155
    .end local v2    # "targetPage":I
    :cond_2
    iget v4, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    if-lt p1, v4, :cond_3

    const v3, 0x3ecccccd    # 0.4f

    .line 2156
    .local v3, "truncator":F
    :goto_1
    int-to-float v4, p1

    add-float/2addr v4, p2

    add-float/2addr v4, v3

    float-to-int v2, v4

    .restart local v2    # "targetPage":I
    goto :goto_0

    .line 2155
    .end local v2    # "targetPage":I
    .end local v3    # "truncator":F
    :cond_3
    const v3, 0x3f19999a    # 0.6f

    .restart local v3    # "truncator":F
    goto :goto_1
.end method

.method private enableLayers(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 1772
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getChildCount()I

    move-result v0

    .line 1773
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1774
    if-eqz p1, :cond_0

    .line 1775
    const/4 v2, 0x2

    .line 1776
    .local v2, "layerType":I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/util/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1775
    .end local v2    # "layerType":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "layerType":I
    goto :goto_1

    .line 1771
    .end local v2    # "layerType":I
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2400
    iput-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mIsBeingDragged:Z

    .line 2401
    iput-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mIsUnableToDrag:Z

    .line 2403
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2404
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2405
    iput-object v1, p0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2399
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2581
    if-nez p1, :cond_0

    .line 2582
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "outRect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2584
    .restart local p1    # "outRect":Landroid/graphics/Rect;
    :cond_0
    if-nez p2, :cond_1

    .line 2585
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2586
    return-object p1

    .line 2588
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2589
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2590
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2591
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2593
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2594
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    if-eq v1, p0, :cond_2

    move-object v0, v1

    .line 2595
    check-cast v0, Landroid/view/ViewGroup;

    .line 2596
    .local v0, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2597
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2598
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2599
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2601
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 2603
    .end local v0    # "group":Landroid/view/ViewGroup;
    :cond_2
    return-object p1
.end method

.method private getClientWidth()I
    .locals 2

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Lcom/android/contacts/util/ViewPager$ItemInfo;
    .locals 15

    .prologue
    .line 2109
    invoke-direct {p0}, Lcom/android/contacts/util/ViewPager;->getClientWidth()I

    move-result v12

    .line 2110
    .local v12, "width":I
    if-lez v12, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v11, v13, v14

    .line 2111
    .local v11, "scrollOffset":F
    :goto_0
    if-lez v12, :cond_4

    iget v13, p0, Lcom/android/contacts/util/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v8, v13, v14

    .line 2112
    .local v8, "marginOffset":F
    :goto_1
    const/4 v5, -0x1

    .line 2113
    .local v5, "lastPos":I
    const/4 v4, 0x0

    .line 2114
    .local v4, "lastOffset":F
    const/4 v6, 0x0

    .line 2115
    .local v6, "lastWidth":F
    const/4 v0, 0x1

    .line 2117
    .local v0, "first":Z
    const/4 v3, 0x0

    .line 2118
    .local v3, "lastItem":Lcom/android/contacts/util/ViewPager$ItemInfo;
    const/4 v1, 0x0

    .end local v3    # "lastItem":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .local v1, "i":I
    :goto_2
    iget-object v13, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_7

    .line 2119
    iget-object v13, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 2121
    .local v2, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    if-nez v0, :cond_0

    iget v13, v2, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_0

    .line 2123
    iget-object v2, p0, Lcom/android/contacts/util/ViewPager;->mTempItem:Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 2124
    add-float v13, v4, v6

    add-float/2addr v13, v8

    iput v13, v2, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    .line 2125
    add-int/lit8 v13, v5, 0x1

    iput v13, v2, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    .line 2126
    iget-object v13, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v14, v2, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v2, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    .line 2127
    add-int/lit8 v1, v1, -0x1

    .line 2129
    :cond_0
    iget v9, v2, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    .line 2131
    .local v9, "offset":F
    move v7, v9

    .line 2132
    .local v7, "leftBound":F
    iget v13, v2, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v9

    add-float v10, v13, v8

    .line 2133
    .local v10, "rightBound":F
    if-nez v0, :cond_1

    cmpl-float v13, v11, v7

    if-ltz v13, :cond_5

    .line 2134
    :cond_1
    cmpg-float v13, v11, v10

    if-ltz v13, :cond_2

    iget-object v13, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v1, v13, :cond_6

    .line 2135
    :cond_2
    return-object v2

    .line 2110
    .end local v0    # "first":Z
    .end local v1    # "i":I
    .end local v2    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v4    # "lastOffset":F
    .end local v5    # "lastPos":I
    .end local v6    # "lastWidth":F
    .end local v7    # "leftBound":F
    .end local v8    # "marginOffset":F
    .end local v9    # "offset":F
    .end local v10    # "rightBound":F
    .end local v11    # "scrollOffset":F
    :cond_3
    const/4 v11, 0x0

    .restart local v11    # "scrollOffset":F
    goto :goto_0

    .line 2111
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "marginOffset":F
    goto :goto_1

    .line 2138
    .restart local v0    # "first":Z
    .restart local v1    # "i":I
    .restart local v2    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .restart local v4    # "lastOffset":F
    .restart local v5    # "lastPos":I
    .restart local v6    # "lastWidth":F
    .restart local v7    # "leftBound":F
    .restart local v9    # "offset":F
    .restart local v10    # "rightBound":F
    :cond_5
    return-object v3

    .line 2140
    :cond_6
    const/4 v0, 0x0

    .line 2141
    iget v5, v2, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    .line 2142
    move v4, v9

    .line 2143
    iget v6, v2, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    .line 2144
    move-object v3, v2

    .line 2118
    .local v3, "lastItem":Lcom/android/contacts/util/ViewPager$ItemInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2147
    .end local v2    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v3    # "lastItem":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v7    # "leftBound":F
    .end local v9    # "offset":F
    .end local v10    # "rightBound":F
    :cond_7
    return-object v3
.end method

.method private isGutterDrag(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1768
    iget v2, p0, Lcom/android/contacts/util/ViewPager;->mGutterSize:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/contacts/util/ViewPager;->mGutterSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    cmpg-float v2, p2, v4

    if-ltz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2385
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 2386
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2387
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/contacts/util/ViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2390
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2391
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    .line 2392
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/android/contacts/util/ViewPager;->mActivePointerId:I

    .line 2393
    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2394
    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2384
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 2390
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "newPointerIndex":I
    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 10
    .param p1, "xpos"    # I

    .prologue
    const/4 v9, 0x0

    .line 1632
    iget-object v7, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 1633
    iput-boolean v9, p0, Lcom/android/contacts/util/ViewPager;->mCalledSuper:Z

    .line 1634
    const/4 v7, 0x0

    invoke-virtual {p0, v9, v7, v9}, Lcom/android/contacts/util/ViewPager;->onPageScrolled(IFI)V

    .line 1635
    iget-boolean v7, p0, Lcom/android/contacts/util/ViewPager;->mCalledSuper:Z

    if-nez v7, :cond_0

    .line 1636
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 1637
    const-string/jumbo v8, "onPageScrolled did not call superclass implementation"

    .line 1636
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1639
    :cond_0
    return v9

    .line 1641
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/util/ViewPager;->infoForCurrentScrollPosition()Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v1

    .line 1642
    .local v1, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    invoke-direct {p0}, Lcom/android/contacts/util/ViewPager;->getClientWidth()I

    move-result v5

    .line 1643
    .local v5, "width":I
    iget v7, p0, Lcom/android/contacts/util/ViewPager;->mPageMargin:I

    add-int v6, v5, v7

    .line 1644
    .local v6, "widthWithMargin":I
    iget v7, p0, Lcom/android/contacts/util/ViewPager;->mPageMargin:I

    int-to-float v7, v7

    int-to-float v8, v5

    div-float v2, v7, v8

    .line 1645
    .local v2, "marginOffset":F
    iget v0, v1, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    .line 1646
    .local v0, "currentPage":I
    int-to-float v7, p1

    int-to-float v8, v5

    div-float/2addr v7, v8

    iget v8, v1, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v7, v8

    .line 1647
    iget v8, v1, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    .line 1646
    div-float v4, v7, v8

    .line 1648
    .local v4, "pageOffset":F
    int-to-float v7, v6

    mul-float/2addr v7, v4

    float-to-int v3, v7

    .line 1650
    .local v3, "offsetPixels":I
    iput-boolean v9, p0, Lcom/android/contacts/util/ViewPager;->mCalledSuper:Z

    .line 1651
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/contacts/util/ViewPager;->onPageScrolled(IFI)V

    .line 1652
    iget-boolean v7, p0, Lcom/android/contacts/util/ViewPager;->mCalledSuper:Z

    if-nez v7, :cond_2

    .line 1653
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 1654
    const-string/jumbo v8, "onPageScrolled did not call superclass implementation"

    .line 1653
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1656
    :cond_2
    const/4 v7, 0x1

    return v7
.end method

.method private performDrag(F)Z
    .locals 17
    .param p1, "x"    # F

    .prologue
    .line 2058
    const/4 v7, 0x0

    .line 2060
    .local v7, "needsInvalidate":Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    sub-float v2, v14, p1

    .line 2061
    .local v2, "deltaX":F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    .line 2063
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getScrollX()I

    move-result v14

    int-to-float v8, v14

    .line 2064
    .local v8, "oldScrollX":F
    add-float v12, v8, v2

    .line 2065
    .local v12, "scrollX":F
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getClientWidth()I

    move-result v13

    .line 2067
    .local v13, "width":I
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/util/ViewPager;->mFirstOffset:F

    mul-float v6, v14, v15

    .line 2068
    .local v6, "leftBound":F
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/util/ViewPager;->mLastOffset:F

    mul-float v11, v14, v15

    .line 2069
    .local v11, "rightBound":F
    const/4 v5, 0x1

    .line 2070
    .local v5, "leftAbsolute":Z
    const/4 v10, 0x1

    .line 2072
    .local v10, "rightAbsolute":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 2073
    .local v3, "firstItem":Lcom/android/contacts/util/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 2074
    .local v4, "lastItem":Lcom/android/contacts/util/ViewPager$ItemInfo;
    iget v14, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-eqz v14, :cond_0

    .line 2075
    const/4 v5, 0x0

    .line 2076
    iget v14, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v6, v14, v15

    .line 2078
    :cond_0
    iget v14, v4, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v15}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_1

    .line 2079
    const/4 v10, 0x0

    .line 2080
    iget v14, v4, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v11, v14, v15

    .line 2083
    :cond_1
    cmpg-float v14, v12, v6

    if-gez v14, :cond_4

    .line 2084
    if-eqz v5, :cond_2

    .line 2085
    sub-float v9, v6, v12

    .line 2086
    .local v9, "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/util/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v7

    .line 2088
    .end local v7    # "needsInvalidate":Z
    .end local v9    # "over":F
    :cond_2
    move v12, v6

    .line 2097
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    float-to-int v15, v12

    int-to-float v15, v15

    sub-float v15, v12, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    .line 2098
    float-to-int v14, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getScrollY()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/contacts/util/ViewPager;->scrollTo(II)V

    .line 2099
    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/contacts/util/ViewPager;->pageScrolled(I)Z

    .line 2101
    return v7

    .line 2089
    .restart local v7    # "needsInvalidate":Z
    :cond_4
    cmpl-float v14, v12, v11

    if-lez v14, :cond_3

    .line 2090
    if-eqz v10, :cond_5

    .line 2091
    sub-float v9, v12, v11

    .line 2092
    .restart local v9    # "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/util/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v7

    .line 2094
    .end local v7    # "needsInvalidate":Z
    .end local v9    # "over":F
    :cond_5
    move v12, v11

    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 14
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    .line 1469
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1486
    :cond_0
    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/util/ViewPager;->infoForPosition(I)Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v6

    .line 1487
    .local v6, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    if-eqz v6, :cond_3

    iget v0, v6, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    iget v2, p0, Lcom/android/contacts/util/ViewPager;->mLastOffset:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1489
    .local v9, "scrollOffset":F
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 1488
    mul-float/2addr v0, v9

    float-to-int v10, v0

    .line 1490
    .local v10, "scrollPos":I
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getScrollX()I

    move-result v0

    if-eq v10, v0, :cond_1

    .line 1491
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/util/ViewPager;->completeScroll(Z)V

    .line 1492
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v10, v0}, Lcom/android/contacts/util/ViewPager;->scrollTo(II)V

    .line 1468
    .end local v6    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v9    # "scrollOffset":F
    .end local v10    # "scrollPos":I
    :cond_1
    :goto_1
    return-void

    .line 1470
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v12, v0, p3

    .line 1471
    .local v12, "widthWithMargin":I
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v7, v0, p4

    .line 1473
    .local v7, "oldWidthWithMargin":I
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getScrollX()I

    move-result v13

    .line 1474
    .local v13, "xpos":I
    int-to-float v0, v13

    int-to-float v2, v7

    div-float v8, v0, v2

    .line 1475
    .local v8, "pageOffset":F
    int-to-float v0, v12

    mul-float/2addr v0, v8

    float-to-int v1, v0

    .line 1477
    .local v1, "newOffsetPixels":I
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/util/ViewPager;->scrollTo(II)V

    .line 1478
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1480
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v2, p0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int v5, v0, v2

    .line 1481
    .local v5, "newDuration":I
    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/util/ViewPager;->infoForPosition(I)Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v11

    .line 1482
    .local v11, "targetInfo":Lcom/android/contacts/util/ViewPager$ItemInfo;
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 1483
    iget v2, v11, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    float-to-int v3, v2

    .line 1482
    const/4 v2, 0x0

    .line 1483
    const/4 v4, 0x0

    .line 1482
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1

    .line 1487
    .end local v1    # "newOffsetPixels":I
    .end local v5    # "newDuration":I
    .end local v7    # "oldWidthWithMargin":I
    .end local v8    # "pageOffset":F
    .end local v11    # "targetInfo":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v12    # "widthWithMargin":I
    .end local v13    # "xpos":I
    .restart local v6    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "scrollOffset":F
    goto :goto_0
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 455
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 456
    invoke-virtual {p0, v1}, Lcom/android/contacts/util/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 457
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/util/ViewPager$LayoutParams;

    .line 458
    .local v2, "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    iget-boolean v3, v2, Lcom/android/contacts/util/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 459
    invoke-virtual {p0, v1}, Lcom/android/contacts/util/ViewPager;->removeViewAt(I)V

    .line 460
    add-int/lit8 v1, v1, -0x1

    .line 455
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2051
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2052
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2053
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2050
    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 8
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .prologue
    const/4 v7, 0x0

    .line 558
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/ViewPager;->infoForPosition(I)Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v0

    .line 559
    .local v0, "curInfo":Lcom/android/contacts/util/ViewPager$ItemInfo;
    const/4 v1, 0x0

    .line 560
    .local v1, "destX":I
    if-eqz v0, :cond_0

    .line 561
    invoke-direct {p0}, Lcom/android/contacts/util/ViewPager;->getClientWidth()I

    move-result v2

    .line 562
    .local v2, "width":I
    int-to-float v3, v2

    iget v4, p0, Lcom/android/contacts/util/ViewPager;->mFirstOffset:F

    .line 563
    iget v5, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    iget v6, p0, Lcom/android/contacts/util/ViewPager;->mLastOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 562
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 565
    .end local v2    # "width":I
    :cond_0
    if-eqz p2, :cond_3

    .line 566
    invoke-virtual {p0, v1, v7, p3}, Lcom/android/contacts/util/ViewPager;->smoothScrollTo(III)V

    .line 567
    if-eqz p4, :cond_1

    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mOnPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_1

    .line 568
    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mOnPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/android/contacts/util/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 570
    :cond_1
    if-eqz p4, :cond_2

    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mInternalPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_2

    .line 571
    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mInternalPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/android/contacts/util/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 557
    :cond_2
    :goto_0
    return-void

    .line 574
    :cond_3
    if-eqz p4, :cond_4

    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mOnPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_4

    .line 575
    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mOnPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/android/contacts/util/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 577
    :cond_4
    if-eqz p4, :cond_5

    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mInternalPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_5

    .line 578
    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mInternalPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/android/contacts/util/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 580
    :cond_5
    invoke-direct {p0, v7}, Lcom/android/contacts/util/ViewPager;->completeScroll(Z)V

    .line 581
    invoke-virtual {p0, v1, v7}, Lcom/android/contacts/util/ViewPager;->scrollTo(II)V

    .line 582
    invoke-direct {p0, v1}, Lcom/android/contacts/util/ViewPager;->pageScrolled(I)Z

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    const/4 v0, 0x0

    .line 389
    iget v1, p0, Lcom/android/contacts/util/ViewPager;->mScrollState:I

    if-ne v1, p1, :cond_0

    .line 390
    return-void

    .line 393
    :cond_0
    iput p1, p0, Lcom/android/contacts/util/ViewPager;->mScrollState:I

    .line 394
    iget-object v1, p0, Lcom/android/contacts/util/ViewPager;->mPageTransformer:Lcom/android/contacts/util/ViewPager$PageTransformer;

    if-eqz v1, :cond_2

    .line 396
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/contacts/util/ViewPager;->enableLayers(Z)V

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mOnPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 399
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mOnPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/util/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 388
    :cond_3
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2410
    iget-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2411
    iput-boolean p1, p0, Lcom/android/contacts/util/ViewPager;->mScrollingCacheEnabled:Z

    .line 2409
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 5

    .prologue
    .line 1107
    iget v3, p0, Lcom/android/contacts/util/ViewPager;->mDrawingOrder:I

    if-eqz v3, :cond_2

    .line 1108
    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/util/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1113
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getChildCount()I

    move-result v1

    .line 1114
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1115
    invoke-virtual {p0, v2}, Lcom/android/contacts/util/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1116
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1111
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1118
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/contacts/util/ViewPager;->sPositionComparator:Lcom/android/contacts/util/ViewPager$ViewPositionComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1106
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2627
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2629
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2631
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_1

    .line 2632
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 2633
    invoke-virtual {p0, v3}, Lcom/android/contacts/util/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2634
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2635
    invoke-virtual {p0, v0}, Lcom/android/contacts/util/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v4

    .line 2636
    .local v4, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2637
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2632
    .end local v4    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2648
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_2

    .line 2650
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_5

    .line 2653
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2654
    return-void

    .line 2656
    :cond_3
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 2657
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->isInTouchMode()Z

    move-result v5

    .line 2656
    if-eqz v5, :cond_4

    .line 2657
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2660
    :cond_4
    if-eqz p1, :cond_5

    .line 2661
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2626
    :cond_5
    return-void

    .line 2658
    :cond_6
    return-void
.end method

.method addNewItem(II)Lcom/android/contacts/util/ViewPager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 831
    new-instance v0, Lcom/android/contacts/util/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/android/contacts/util/ViewPager$ItemInfo;-><init>()V

    .line 832
    .local v0, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    iput p1, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    .line 833
    iget-object v1, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 834
    iget-object v1, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    .line 835
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 836
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    :goto_0
    return-object v0

    .line 838
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2674
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2675
    invoke-virtual {p0, v1}, Lcom/android/contacts/util/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2676
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2677
    invoke-virtual {p0, v0}, Lcom/android/contacts/util/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v2

    .line 2678
    .local v2, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2679
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2674
    .end local v2    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2670
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1293
    invoke-virtual {p0, p3}, Lcom/android/contacts/util/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1294
    invoke-virtual {p0, p3}, Lcom/android/contacts/util/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1296
    check-cast v0, Lcom/android/contacts/util/ViewPager$LayoutParams;

    .line 1297
    .local v0, "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/android/contacts/util/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/android/contacts/util/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/contacts/util/ViewPager$LayoutParams;->isDecor:Z

    .line 1298
    iget-boolean v1, p0, Lcom/android/contacts/util/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1299
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/contacts/util/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1300
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1302
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/util/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1303
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/contacts/util/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1292
    :goto_0
    return-void

    .line 1305
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/16 v12, 0x42

    const/16 v11, 0x11

    .line 2515
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2516
    .local v1, "currentFocused":Landroid/view/View;
    if-ne v1, p0, :cond_3

    .line 2517
    const/4 v1, 0x0

    .line 2541
    .end local v1    # "currentFocused":Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 2543
    .local v2, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2545
    .local v4, "nextFocused":Landroid/view/View;
    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_a

    .line 2546
    if-ne p1, v11, :cond_8

    .line 2549
    iget-object v8, p0, Lcom/android/contacts/util/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/android/contacts/util/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2550
    .local v5, "nextLeft":I
    iget-object v8, p0, Lcom/android/contacts/util/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/android/contacts/util/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2551
    .local v0, "currLeft":I
    if-eqz v1, :cond_7

    if-lt v5, v0, :cond_7

    .line 2552
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->pageLeft()Z

    move-result v2

    .line 2574
    .end local v0    # "currLeft":I
    .end local v2    # "handled":Z
    .end local v5    # "nextLeft":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 2575
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/contacts/util/ViewPager;->playSoundEffect(I)V

    .line 2577
    :cond_2
    return v2

    .line 2518
    .end local v4    # "nextFocused":Landroid/view/View;
    .restart local v1    # "currentFocused":Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_0

    .line 2519
    const/4 v3, 0x0

    .line 2520
    .local v3, "isChild":Z
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    .line 2522
    if-ne v6, p0, :cond_5

    .line 2523
    const/4 v3, 0x1

    .line 2527
    :cond_4
    if-nez v3, :cond_0

    .line 2529
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2530
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2531
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_3
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_6

    .line 2533
    const-string/jumbo v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2532
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_3

    .line 2521
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_2

    .line 2535
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const-string/jumbo v8, "ViewPager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2536
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2535
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    const/4 v1, 0x0

    .local v1, "currentFocused":Landroid/view/View;
    goto/16 :goto_0

    .line 2554
    .end local v1    # "currentFocused":Landroid/view/View;
    .end local v3    # "isChild":Z
    .end local v6    # "parent":Landroid/view/ViewParent;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "currLeft":I
    .restart local v2    # "handled":Z
    .restart local v4    # "nextFocused":Landroid/view/View;
    .restart local v5    # "nextLeft":I
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_1

    .line 2556
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    .local v2, "handled":Z
    :cond_8
    if-ne p1, v12, :cond_1

    .line 2559
    iget-object v8, p0, Lcom/android/contacts/util/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/android/contacts/util/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2560
    .restart local v5    # "nextLeft":I
    iget-object v8, p0, Lcom/android/contacts/util/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/android/contacts/util/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2561
    .restart local v0    # "currLeft":I
    if-eqz v1, :cond_9

    if-gt v5, v0, :cond_9

    .line 2562
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->pageRight()Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_1

    .line 2564
    .local v2, "handled":Z
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_1

    .line 2567
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    .local v2, "handled":Z
    :cond_a
    if-eq p1, v11, :cond_b

    const/4 v8, 0x1

    if-ne p1, v8, :cond_c

    .line 2569
    :cond_b
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->pageLeft()Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_1

    .line 2570
    .local v2, "handled":Z
    :cond_c
    if-eq p1, v12, :cond_d

    const/4 v8, 0x2

    if-ne p1, v8, :cond_1

    .line 2572
    :cond_d
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->pageRight()Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_1
.end method

.method public beginFakeDrag()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2274
    iget-boolean v2, p0, Lcom/android/contacts/util/ViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 2275
    return v4

    .line 2277
    :cond_0
    iput-boolean v9, p0, Lcom/android/contacts/util/ViewPager;->mFakeDragging:Z

    .line 2278
    invoke-direct {p0, v9}, Lcom/android/contacts/util/ViewPager;->setScrollState(I)V

    .line 2279
    iput v5, p0, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    iput v5, p0, Lcom/android/contacts/util/ViewPager;->mInitialMotionX:F

    .line 2280
    iget-object v2, p0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 2281
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2285
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "time":J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 2286
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2287
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2288
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2289
    iput-wide v0, p0, Lcom/android/contacts/util/ViewPager;->mFakeDragBeginTime:J

    .line 2290
    return v9

    .line 2283
    .end local v0    # "time":J
    .end local v8    # "ev":Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 2452
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 2453
    check-cast v7, Landroid/view/ViewGroup;

    .line 2454
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2455
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2456
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2458
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 2461
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2462
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2463
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2464
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v4, v0, v2

    .line 2465
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v5, v0, v2

    .line 2464
    const/4 v2, 0x1

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/util/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    .line 2462
    if-eqz v0, :cond_0

    .line 2466
    const/4 v0, 0x1

    return v0

    .line 2458
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2471
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2425
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v4, :cond_0

    .line 2426
    return v3

    .line 2429
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/util/ViewPager;->getClientWidth()I

    move-result v1

    .line 2430
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getScrollX()I

    move-result v0

    .line 2431
    .local v0, "scrollX":I
    if-gez p1, :cond_2

    .line 2432
    int-to-float v4, v1

    iget v5, p0, Lcom/android/contacts/util/ViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v0, v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 2433
    :cond_2
    if-lez p1, :cond_4

    .line 2434
    int-to-float v4, v1

    iget v5, p0, Lcom/android/contacts/util/ViewPager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v0, v4, :cond_3

    :goto_1
    return v2

    :cond_3
    move v2, v3

    goto :goto_1

    .line 2436
    :cond_4
    return v3
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2753
    instance-of v0, p1, Lcom/android/contacts/util/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 1608
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1609
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getScrollX()I

    move-result v0

    .line 1610
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getScrollY()I

    move-result v1

    .line 1611
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1612
    .local v2, "x":I
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1614
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1615
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/util/ViewPager;->scrollTo(II)V

    .line 1616
    invoke-direct {p0, v2}, Lcom/android/contacts/util/ViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1617
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1618
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/contacts/util/ViewPager;->scrollTo(II)V

    .line 1623
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1624
    return-void

    .line 1628
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/contacts/util/ViewPager;->completeScroll(Z)V

    .line 1607
    return-void
.end method

.method dataSetChanged()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 846
    iget-object v10, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v10}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 847
    .local v0, "adapterCount":I
    iput v0, p0, Lcom/android/contacts/util/ViewPager;->mExpectedAdapterCount:I

    .line 848
    iget-object v10, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v11, p0, Lcom/android/contacts/util/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x1

    if-ge v10, v11, :cond_2

    .line 849
    iget-object v10, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v10, v0, :cond_1

    const/4 v7, 0x1

    .line 850
    .local v7, "needPopulate":Z
    :goto_0
    iget v8, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    .line 852
    .local v8, "newCurrItem":I
    const/4 v5, 0x0

    .line 853
    .local v5, "isUpdating":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v10, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_7

    .line 854
    iget-object v10, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 855
    .local v4, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    iget-object v10, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v11, v4, Lcom/android/contacts/util/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    .line 857
    .local v9, "newPos":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 853
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 849
    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v5    # "isUpdating":Z
    .end local v7    # "needPopulate":Z
    .end local v8    # "newCurrItem":I
    .end local v9    # "newPos":I
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "needPopulate":Z
    goto :goto_0

    .line 848
    .end local v7    # "needPopulate":Z
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "needPopulate":Z
    goto :goto_0

    .line 861
    .restart local v3    # "i":I
    .restart local v4    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .restart local v5    # "isUpdating":Z
    .restart local v8    # "newCurrItem":I
    .restart local v9    # "newPos":I
    :cond_3
    const/4 v10, -0x2

    if-ne v9, v10, :cond_5

    .line 862
    iget-object v10, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 863
    add-int/lit8 v3, v3, -0x1

    .line 865
    if-nez v5, :cond_4

    .line 866
    iget-object v10, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v10, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 867
    const/4 v5, 0x1

    .line 870
    :cond_4
    iget-object v10, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v11, v4, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    iget-object v12, v4, Lcom/android/contacts/util/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, p0, v11, v12}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 871
    const/4 v7, 0x1

    .line 873
    iget v10, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    iget v11, v4, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-ne v10, v11, :cond_0

    .line 875
    iget v10, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 876
    const/4 v7, 0x1

    goto :goto_2

    .line 881
    :cond_5
    iget v10, v4, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-eq v10, v9, :cond_0

    .line 882
    iget v10, v4, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    iget v11, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    if-ne v10, v11, :cond_6

    .line 884
    move v8, v9

    .line 887
    :cond_6
    iput v9, v4, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    .line 888
    const/4 v7, 0x1

    goto :goto_2

    .line 892
    .end local v4    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v9    # "newPos":I
    :cond_7
    if-eqz v5, :cond_8

    .line 893
    iget-object v10, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v10, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 896
    :cond_8
    iget-object v10, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v11, Lcom/android/contacts/util/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 898
    if-eqz v7, :cond_b

    .line 900
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getChildCount()I

    move-result v2

    .line 901
    .local v2, "childCount":I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_a

    .line 902
    invoke-virtual {p0, v3}, Lcom/android/contacts/util/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 903
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/util/ViewPager$LayoutParams;

    .line 904
    .local v6, "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    iget-boolean v10, v6, Lcom/android/contacts/util/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_9

    .line 905
    const/4 v10, 0x0

    iput v10, v6, Lcom/android/contacts/util/ViewPager$LayoutParams;->widthFactor:F

    .line 901
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 909
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    :cond_a
    const/4 v10, 0x1

    invoke-virtual {p0, v8, v13, v10}, Lcom/android/contacts/util/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 910
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->requestLayout()V

    .line 843
    .end local v2    # "childCount":I
    :cond_b
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2477
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/contacts/util/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v6, 0x0

    .line 2721
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_0

    .line 2722
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    return v4

    .line 2726
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getChildCount()I

    move-result v1

    .line 2727
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2728
    invoke-virtual {p0, v2}, Lcom/android/contacts/util/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2729
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2730
    invoke-virtual {p0, v0}, Lcom/android/contacts/util/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v3

    .line 2731
    .local v3, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    .line 2732
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    .line 2731
    if-eqz v4, :cond_1

    .line 2733
    const/4 v4, 0x1

    return v4

    .line 2727
    .end local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2738
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return v6
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 767
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 768
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 769
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    .line 2172
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2173
    const/4 v1, 0x0

    .line 2175
    .local v1, "needsInvalidate":Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v2

    .line 2176
    .local v2, "overScrollMode":I
    if-eqz v2, :cond_0

    .line 2177
    if-ne v2, v6, :cond_4

    .line 2178
    iget-object v5, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 2179
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/util/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2181
    .local v3, "restoreCount":I
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2182
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getWidth()I

    move-result v4

    .line 2184
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2185
    neg-int v5, v0

    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/contacts/util/ViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2186
    iget-object v5, p0, Lcom/android/contacts/util/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, v0, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2187
    iget-object v5, p0, Lcom/android/contacts/util/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    .line 2188
    .local v1, "needsInvalidate":Z
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2190
    .end local v0    # "height":I
    .end local v1    # "needsInvalidate":Z
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/util/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2192
    .restart local v3    # "restoreCount":I
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getWidth()I

    move-result v4

    .line 2193
    .restart local v4    # "width":I
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2195
    .restart local v0    # "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2196
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/contacts/util/ViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2197
    iget-object v5, p0, Lcom/android/contacts/util/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, v0, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2198
    iget-object v5, p0, Lcom/android/contacts/util/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2199
    .restart local v1    # "needsInvalidate":Z
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2206
    .end local v0    # "height":I
    .end local v1    # "needsInvalidate":Z
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2208
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2171
    :cond_3
    return-void

    .line 2202
    .local v1, "needsInvalidate":Z
    :cond_4
    iget-object v5, p0, Lcom/android/contacts/util/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 2203
    iget-object v5, p0, Lcom/android/contacts/util/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 755
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 756
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 757
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 754
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2300
    iget-boolean v9, p0, Lcom/android/contacts/util/ViewPager;->mFakeDragging:Z

    if-nez v9, :cond_0

    .line 2301
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2304
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2305
    .local v7, "velocityTracker":Landroid/view/VelocityTracker;
    iget v9, p0, Lcom/android/contacts/util/ViewPager;->mMaximumVelocity:I

    int-to-float v9, v9

    const/16 v10, 0x3e8

    invoke-virtual {v7, v10, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2307
    iget v9, p0, Lcom/android/contacts/util/ViewPager;->mActivePointerId:I

    .line 2306
    invoke-static {v7, v9}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v9

    float-to-int v2, v9

    .line 2308
    .local v2, "initialVelocity":I
    iput-boolean v11, p0, Lcom/android/contacts/util/ViewPager;->mPopulatePending:Z

    .line 2309
    invoke-direct {p0}, Lcom/android/contacts/util/ViewPager;->getClientWidth()I

    move-result v8

    .line 2310
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getScrollX()I

    move-result v5

    .line 2311
    .local v5, "scrollX":I
    invoke-direct {p0}, Lcom/android/contacts/util/ViewPager;->infoForCurrentScrollPosition()Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v1

    .line 2312
    .local v1, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    iget v0, v1, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    .line 2313
    .local v0, "currentPage":I
    int-to-float v9, v5

    int-to-float v10, v8

    div-float/2addr v9, v10

    iget v10, v1, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    iget v10, v1, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    div-float v4, v9, v10

    .line 2314
    .local v4, "pageOffset":F
    iget v9, p0, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    iget v10, p0, Lcom/android/contacts/util/ViewPager;->mInitialMotionX:F

    sub-float/2addr v9, v10

    float-to-int v6, v9

    .line 2315
    .local v6, "totalDelta":I
    invoke-direct {p0, v0, v4, v2, v6}, Lcom/android/contacts/util/ViewPager;->determineTargetPage(IFII)I

    move-result v3

    .line 2317
    .local v3, "nextPage":I
    invoke-virtual {p0, v3, v11, v11, v2}, Lcom/android/contacts/util/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2318
    invoke-direct {p0}, Lcom/android/contacts/util/ViewPager;->endDrag()V

    .line 2320
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/contacts/util/ViewPager;->mFakeDragging:Z

    .line 2299
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 2489
    const/4 v0, 0x0

    .line 2490
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2491
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2511
    .end local v0    # "handled":Z
    :cond_0
    :goto_0
    return v0

    .line 2493
    .restart local v0    # "handled":Z
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/contacts/util/ViewPager;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 2496
    .local v0, "handled":Z
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/android/contacts/util/ViewPager;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 2499
    .local v0, "handled":Z
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 2502
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2503
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/util/ViewPager;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 2504
    .local v0, "handled":Z
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2505
    invoke-virtual {p0, v3}, Lcom/android/contacts/util/ViewPager;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 2491
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 18
    .param p1, "xOffset"    # F

    .prologue
    .line 2331
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/util/ViewPager;->mFakeDragging:Z

    if-nez v2, :cond_0

    .line 2332
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2335
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    add-float v2, v2, p1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    .line 2337
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getScrollX()I

    move-result v2

    int-to-float v14, v2

    .line 2338
    .local v14, "oldScrollX":F
    sub-float v16, v14, p1

    .line 2339
    .local v16, "scrollX":F
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getClientWidth()I

    move-result v17

    .line 2341
    .local v17, "width":I
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/contacts/util/ViewPager;->mFirstOffset:F

    mul-float v13, v2, v3

    .line 2342
    .local v13, "leftBound":F
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/contacts/util/ViewPager;->mLastOffset:F

    mul-float v15, v2, v3

    .line 2344
    .local v15, "rightBound":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 2345
    .local v11, "firstItem":Lcom/android/contacts/util/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 2346
    .local v12, "lastItem":Lcom/android/contacts/util/ViewPager$ItemInfo;
    iget v2, v11, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-eqz v2, :cond_1

    .line 2347
    iget v2, v11, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v13, v2, v3

    .line 2349
    :cond_1
    iget v2, v12, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2

    .line 2350
    iget v2, v12, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v15, v2, v3

    .line 2353
    :cond_2
    cmpg-float v2, v16, v13

    if-gez v2, :cond_4

    .line 2354
    move/from16 v16, v13

    .line 2359
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    move/from16 v0, v16

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v16, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    .line 2360
    move/from16 v0, v16

    float-to-int v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getScrollY()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/contacts/util/ViewPager;->scrollTo(II)V

    .line 2361
    move/from16 v0, v16

    float-to-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/contacts/util/ViewPager;->pageScrolled(I)Z

    .line 2364
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2365
    .local v4, "time":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/contacts/util/ViewPager;->mFakeDragBeginTime:J

    .line 2366
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    const/4 v8, 0x0

    .line 2365
    const/4 v6, 0x2

    .line 2366
    const/4 v9, 0x0

    .line 2365
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 2367
    .local v10, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2368
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 2330
    return-void

    .line 2355
    .end local v4    # "time":J
    .end local v10    # "ev":Landroid/view/MotionEvent;
    :cond_4
    cmpl-float v2, v16, v15

    if-lez v2, :cond_3

    .line 2356
    move/from16 v16, v15

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2743
    new-instance v0, Lcom/android/contacts/util/ViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/android/contacts/util/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2758
    new-instance v0, Lcom/android/contacts/util/ViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/contacts/util/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2748
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 643
    iget v2, p0, Lcom/android/contacts/util/ViewPager;->mDrawingOrder:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x1

    sub-int v0, v2, p2

    .line 644
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/util/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/util/ViewPager$LayoutParams;

    iget v1, v2, Lcom/android/contacts/util/ViewPager$LayoutParams;->childIndex:I

    .line 645
    .local v1, "result":I
    return v1

    .line 643
    .end local v0    # "index":I
    .end local v1    # "result":I
    :cond_0
    move v0, p2

    .restart local v0    # "index":I
    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/android/contacts/util/ViewPager$ItemInfo;
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1338
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 1339
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 1342
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1340
    :cond_0
    return-object v2

    .line 1344
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v1

    return-object v1
.end method

.method infoForChild(Landroid/view/View;)Lcom/android/contacts/util/ViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1327
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1328
    iget-object v2, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 1329
    .local v1, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v1, Lcom/android/contacts/util/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1330
    return-object v1

    .line 1327
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1333
    .end local v1    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method infoForPosition(I)Lcom/android/contacts/util/ViewPager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1348
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1349
    iget-object v2, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 1350
    .local v1, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    iget v2, v1, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1351
    return-object v1

    .line 1348
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1354
    .end local v1    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method initViewPager()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 355
    invoke-virtual {p0, v3}, Lcom/android/contacts/util/ViewPager;->setWillNotDraw(Z)V

    .line 356
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/android/contacts/util/ViewPager;->setDescendantFocusability(I)V

    .line 357
    invoke-virtual {p0, v5}, Lcom/android/contacts/util/ViewPager;->setFocusable(Z)V

    .line 358
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 359
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/android/contacts/util/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 360
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 361
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 363
    .local v2, "density":F
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/android/contacts/util/ViewPager;->mTouchSlop:I

    .line 364
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/contacts/util/ViewPager;->mMinimumVelocity:I

    .line 365
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/contacts/util/ViewPager;->mMaximumVelocity:I

    .line 366
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/util/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 367
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/util/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 369
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/contacts/util/ViewPager;->mFlingDistance:I

    .line 370
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/contacts/util/ViewPager;->mCloseEnough:I

    .line 371
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/contacts/util/ViewPager;->mDefaultGutterSize:I

    .line 373
    new-instance v3, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;

    invoke-direct {v3, p0}, Lcom/android/contacts/util/ViewPager$MyAccessibilityDelegate;-><init>(Lcom/android/contacts/util/ViewPager;)V

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 375
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_0

    .line 377
    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 354
    :cond_0
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 2381
    iget-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1359
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mFirstLayout:Z

    .line 1358
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/contacts/util/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 385
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 383
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2214
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2217
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/util/ViewPager;->mPageMargin:I

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/util/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v13, :cond_2

    .line 2218
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getScrollX()I

    move-result v10

    .line 2219
    .local v10, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getWidth()I

    move-result v11

    .line 2221
    .local v11, "width":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/util/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v7, v13, v14

    .line 2222
    .local v7, "marginOffset":F
    const/4 v5, 0x0

    .line 2223
    .local v5, "itemIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 2224
    .local v3, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    iget v8, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    .line 2225
    .local v8, "offset":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2226
    .local v4, "itemCount":I
    iget v2, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    .line 2227
    .local v2, "firstPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/util/ViewPager$ItemInfo;

    iget v6, v13, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    .line 2228
    .local v6, "lastPos":I
    move v9, v2

    .local v9, "pos":I
    :goto_0
    if-ge v9, v6, :cond_2

    .line 2229
    :goto_1
    iget v13, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-le v9, v13, :cond_0

    if-ge v5, v4, :cond_0

    .line 2230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    check-cast v3, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    goto :goto_1

    .line 2234
    :cond_0
    iget v13, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    if-ne v9, v13, :cond_3

    .line 2235
    iget v13, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    iget v14, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2236
    .local v1, "drawAt":F
    iget v13, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    iget v14, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    add-float v8, v13, v7

    .line 2243
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/util/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 2244
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/util/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/util/ViewPager;->mTopPageBounds:I

    .line 2245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mPageMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v1

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mBottomPageBounds:I

    move/from16 v17, v0

    .line 2244
    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2246
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/util/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2249
    :cond_1
    add-int v13, v10, v11

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-lez v13, :cond_4

    .line 2213
    .end local v1    # "drawAt":F
    .end local v2    # "firstPos":I
    .end local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v4    # "itemCount":I
    .end local v5    # "itemIndex":I
    .end local v6    # "lastPos":I
    .end local v7    # "marginOffset":F
    .end local v8    # "offset":F
    .end local v9    # "pos":I
    .end local v10    # "scrollX":I
    .end local v11    # "width":I
    :cond_2
    return-void

    .line 2238
    .restart local v2    # "firstPos":I
    .restart local v3    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .restart local v4    # "itemCount":I
    .restart local v5    # "itemIndex":I
    .restart local v6    # "lastPos":I
    .restart local v7    # "marginOffset":F
    .restart local v8    # "offset":F
    .restart local v9    # "pos":I
    .restart local v10    # "scrollX":I
    .restart local v11    # "width":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v13, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    .line 2239
    .local v12, "widthFactor":F
    add-float v13, v8, v12

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2240
    .restart local v1    # "drawAt":F
    add-float v13, v12, v7

    add-float/2addr v8, v13

    goto :goto_2

    .line 2228
    .end local v12    # "widthFactor":F
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1791
    .local v6, "action":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    const/4 v0, 0x1

    if-ne v6, v0, :cond_2

    .line 1794
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mIsBeingDragged:Z

    .line 1795
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mIsUnableToDrag:Z

    .line 1796
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/util/ViewPager;->mActivePointerId:I

    .line 1797
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1798
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1801
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1806
    :cond_2
    if-eqz v6, :cond_4

    .line 1807
    iget-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_3

    .line 1809
    const/4 v0, 0x1

    return v0

    .line 1811
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_4

    .line 1813
    const/4 v0, 0x0

    return v0

    .line 1817
    :cond_4
    sparse-switch v6, :sswitch_data_0

    .line 1912
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 1913
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1915
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1921
    iget-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mIsBeingDragged:Z

    return v0

    .line 1828
    :sswitch_0
    iget v7, p0, Lcom/android/contacts/util/ViewPager;->mActivePointerId:I

    .line 1829
    .local v7, "activePointerId":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_5

    .line 1834
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 1835
    .local v9, "pointerIndex":I
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1836
    .local v10, "x":F
    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    sub-float v8, v10, v0

    .line 1837
    .local v8, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1838
    .local v11, "xDiff":F
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v12

    .line 1839
    .local v12, "y":F
    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1842
    .local v13, "yDiff":F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Lcom/android/contacts/util/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1850
    :cond_7
    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_b

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v11

    cmpl-float v0, v0, v13

    if-lez v0, :cond_b

    .line 1852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mIsBeingDragged:Z

    .line 1853
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/util/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1854
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/util/ViewPager;->setScrollState(I)V

    .line 1855
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_a

    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/android/contacts/util/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    .line 1857
    iput v12, p0, Lcom/android/contacts/util/ViewPager;->mLastMotionY:F

    .line 1858
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/util/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1867
    :cond_8
    :goto_2
    iget-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    .line 1869
    invoke-direct {p0, v10}, Lcom/android/contacts/util/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1870
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 1843
    :cond_9
    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/util/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    .line 1842
    if-eqz v0, :cond_7

    .line 1845
    iput v10, p0, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    .line 1846
    iput v12, p0, Lcom/android/contacts/util/ViewPager;->mLastMotionY:F

    .line 1847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mIsUnableToDrag:Z

    .line 1848
    const/4 v0, 0x0

    return v0

    .line 1856
    :cond_a
    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/android/contacts/util/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1

    .line 1859
    :cond_b
    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_8

    .line 1865
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mIsUnableToDrag:Z

    goto :goto_2

    .line 1881
    .end local v7    # "activePointerId":I
    .end local v8    # "dx":F
    .end local v9    # "pointerIndex":I
    .end local v10    # "x":F
    .end local v11    # "xDiff":F
    .end local v12    # "y":F
    .end local v13    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/contacts/util/ViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    .line 1882
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/contacts/util/ViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/android/contacts/util/ViewPager;->mLastMotionY:F

    .line 1883
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/util/ViewPager;->mActivePointerId:I

    .line 1884
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mIsUnableToDrag:Z

    .line 1886
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1887
    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 1888
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/contacts/util/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_c

    .line 1890
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1891
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mPopulatePending:Z

    .line 1892
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->populate()V

    .line 1893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mIsBeingDragged:Z

    .line 1894
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/util/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1895
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/util/ViewPager;->setScrollState(I)V

    goto/16 :goto_0

    .line 1897
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/util/ViewPager;->completeScroll(Z)V

    .line 1898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mIsBeingDragged:Z

    goto/16 :goto_0

    .line 1908
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/contacts/util/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1817
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1499
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getChildCount()I

    move-result v9

    .line 1500
    .local v9, "count":I
    sub-int v24, p4, p2

    .line 1501
    .local v24, "width":I
    sub-int v11, p5, p3

    .line 1502
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getPaddingLeft()I

    move-result v19

    .line 1503
    .local v19, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getPaddingTop()I

    move-result v21

    .line 1504
    .local v21, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getPaddingRight()I

    move-result v20

    .line 1505
    .local v20, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getPaddingBottom()I

    move-result v18

    .line 1506
    .local v18, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getScrollX()I

    move-result v22

    .line 1508
    .local v22, "scrollX":I
    const/4 v10, 0x0

    .line 1512
    .local v10, "decorCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_1

    .line 1513
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/util/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1514
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 1515
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/util/ViewPager$LayoutParams;

    .line 1516
    .local v17, "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    const/4 v6, 0x0

    .line 1517
    .local v6, "childLeft":I
    const/4 v7, 0x0

    .line 1518
    .local v7, "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/contacts/util/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1519
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/util/ViewPager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v13, v26, 0x7

    .line 1520
    .local v13, "hgrav":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/util/ViewPager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v23, v26, 0x70

    .line 1521
    .local v23, "vgrav":I
    packed-switch v13, :pswitch_data_0

    .line 1523
    :pswitch_0
    move/from16 v6, v19

    .line 1538
    :goto_1
    sparse-switch v23, :sswitch_data_0

    .line 1540
    move/from16 v7, v21

    .line 1555
    :goto_2
    add-int v6, v6, v22

    .line 1557
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    .line 1558
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    .line 1556
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1559
    add-int/lit8 v10, v10, 0x1

    .line 1512
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1526
    .restart local v6    # "childLeft":I
    .restart local v7    # "childTop":I
    .restart local v13    # "hgrav":I
    .restart local v17    # "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    .restart local v23    # "vgrav":I
    :pswitch_1
    move/from16 v6, v19

    .line 1527
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v19, v19, v26

    .line 1528
    goto :goto_1

    .line 1530
    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    sub-int v26, v24, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    .line 1534
    :pswitch_3
    sub-int v26, v24, v20

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    sub-int v6, v26, v27

    .line 1535
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v20, v20, v26

    .line 1536
    goto :goto_1

    .line 1543
    :sswitch_0
    move/from16 v7, v21

    .line 1544
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v21, v21, v26

    .line 1545
    goto :goto_2

    .line 1547
    :sswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v26, v11, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_2

    .line 1551
    :sswitch_2
    sub-int v26, v11, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v7, v26, v27

    .line 1552
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v18, v18, v26

    .line 1553
    goto :goto_2

    .line 1564
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_1
    sub-int v26, v24, v19

    sub-int v8, v26, v20

    .line 1566
    .local v8, "childWidth":I
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v9, :cond_4

    .line 1567
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/util/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1568
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 1569
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/util/ViewPager$LayoutParams;

    .line 1571
    .restart local v17    # "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/contacts/util/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-nez v26, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/contacts/util/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v15

    .local v15, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    if-eqz v15, :cond_3

    .line 1572
    int-to-float v0, v8

    move/from16 v26, v0

    iget v0, v15, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1573
    .local v16, "loff":I
    add-int v6, v19, v16

    .line 1574
    .restart local v6    # "childLeft":I
    move/from16 v7, v21

    .line 1575
    .restart local v7    # "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/contacts/util/ViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1578
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/contacts/util/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1580
    int-to-float v0, v8

    move/from16 v26, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/util/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1581
    const/high16 v27, 0x40000000    # 2.0f

    .line 1579
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 1583
    .local v25, "widthSpec":I
    sub-int v26, v11, v21

    sub-int v26, v26, v18

    .line 1584
    const/high16 v27, 0x40000000    # 2.0f

    .line 1582
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1585
    .local v12, "heightSpec":I
    move/from16 v0, v25

    invoke-virtual {v5, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1591
    .end local v12    # "heightSpec":I
    .end local v25    # "widthSpec":I
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    .line 1592
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    .line 1590
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1566
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v15    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v16    # "loff":I
    .end local v17    # "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 1596
    .end local v5    # "child":Landroid/view/View;
    :cond_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mTopPageBounds:I

    .line 1597
    sub-int v26, v11, v18

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mBottomPageBounds:I

    .line 1598
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/contacts/util/ViewPager;->mDecorChildCount:I

    .line 1600
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/util/ViewPager;->mFirstLayout:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1601
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/util/ViewPager;->scrollToItem(IZIZ)V

    .line 1603
    :cond_5
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/util/ViewPager;->mFirstLayout:Z

    .line 1498
    return-void

    .line 1521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1538
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1370
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/contacts/util/ViewPager;->getDefaultSize(II)I

    move-result v21

    .line 1371
    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/contacts/util/ViewPager;->getDefaultSize(II)I

    move-result v22

    .line 1370
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/util/ViewPager;->setMeasuredDimension(II)V

    .line 1373
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getMeasuredWidth()I

    move-result v15

    .line 1374
    .local v15, "measuredWidth":I
    div-int/lit8 v14, v15, 0xa

    .line 1375
    .local v14, "maxGutterSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mDefaultGutterSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mGutterSize:I

    .line 1378
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    .line 1379
    .local v5, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .line 1386
    .local v4, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getChildCount()I

    move-result v16

    .line 1387
    .local v16, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 1388
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/util/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1389
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 1390
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/util/ViewPager$LayoutParams;

    .line 1391
    .local v13, "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    if-eqz v13, :cond_5

    iget-boolean v0, v13, Lcom/android/contacts/util/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1392
    iget v0, v13, Lcom/android/contacts/util/ViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    .line 1393
    .local v11, "hgrav":I
    iget v0, v13, Lcom/android/contacts/util/ViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    .line 1394
    .local v17, "vgrav":I
    const/high16 v18, -0x80000000

    .line 1395
    .local v18, "widthMode":I
    const/high16 v8, -0x80000000

    .line 1396
    .local v8, "heightMode":I
    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 1397
    .local v7, "consumeVertical":Z
    :goto_1
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v11, v0, :cond_1

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    .line 1399
    .local v6, "consumeHorizontal":Z
    :goto_2
    if-eqz v7, :cond_8

    .line 1400
    const/high16 v18, 0x40000000    # 2.0f

    .line 1405
    :cond_2
    :goto_3
    move/from16 v19, v5

    .line 1406
    .local v19, "widthSize":I
    move v9, v4

    .line 1407
    .local v9, "heightSize":I
    iget v0, v13, Lcom/android/contacts/util/ViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1408
    const/high16 v18, 0x40000000    # 2.0f

    .line 1409
    iget v0, v13, Lcom/android/contacts/util/ViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1410
    iget v0, v13, Lcom/android/contacts/util/ViewPager$LayoutParams;->width:I

    move/from16 v19, v0

    .line 1413
    :cond_3
    iget v0, v13, Lcom/android/contacts/util/ViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1414
    const/high16 v8, 0x40000000    # 2.0f

    .line 1415
    iget v0, v13, Lcom/android/contacts/util/ViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1416
    iget v9, v13, Lcom/android/contacts/util/ViewPager$LayoutParams;->height:I

    .line 1419
    :cond_4
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1420
    .local v20, "widthSpec":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1421
    .local v10, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1423
    if-eqz v7, :cond_9

    .line 1424
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    .line 1387
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1396
    .restart local v8    # "heightMode":I
    .restart local v11    # "hgrav":I
    .restart local v13    # "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    .restart local v17    # "vgrav":I
    .restart local v18    # "widthMode":I
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "consumeVertical":Z
    goto :goto_1

    .line 1397
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "consumeHorizontal":Z
    goto :goto_2

    .line 1401
    :cond_8
    if-eqz v6, :cond_2

    .line 1402
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_3

    .line 1425
    .restart local v9    # "heightSize":I
    .restart local v10    # "heightSpec":I
    .restart local v19    # "widthSize":I
    .restart local v20    # "widthSpec":I
    :cond_9
    if-eqz v6, :cond_5

    .line 1426
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_4

    .line 1432
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_a
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mChildWidthMeasureSpec:I

    .line 1433
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mChildHeightMeasureSpec:I

    .line 1436
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/util/ViewPager;->mInLayout:Z

    .line 1437
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->populate()V

    .line 1438
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/util/ViewPager;->mInLayout:Z

    .line 1441
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getChildCount()I

    move-result v16

    .line 1442
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    .line 1443
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/util/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1444
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 1448
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/util/ViewPager$LayoutParams;

    .line 1449
    .restart local v13    # "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    if-eqz v13, :cond_c

    iget-boolean v0, v13, Lcom/android/contacts/util/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 1442
    .end local v13    # "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    :cond_b
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1451
    .restart local v13    # "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    :cond_c
    int-to-float v0, v5

    move/from16 v21, v0

    iget v0, v13, Lcom/android/contacts/util/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    .line 1450
    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1452
    .restart local v20    # "widthSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mChildHeightMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 1364
    .end local v3    # "child":Landroid/view/View;
    .end local v13    # "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 17
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 1673
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/util/ViewPager;->mDecorChildCount:I

    if-lez v15, :cond_2

    .line 1674
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getScrollX()I

    move-result v12

    .line 1675
    .local v12, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getPaddingLeft()I

    move-result v10

    .line 1676
    .local v10, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getPaddingRight()I

    move-result v11

    .line 1677
    .local v11, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getWidth()I

    move-result v14

    .line 1678
    .local v14, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getChildCount()I

    move-result v4

    .line 1679
    .local v4, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 1680
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/contacts/util/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1681
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/util/ViewPager$LayoutParams;

    .line 1682
    .local v9, "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/android/contacts/util/ViewPager$LayoutParams;->isDecor:Z

    if-nez v15, :cond_1

    .line 1679
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1684
    :cond_1
    iget v15, v9, Lcom/android/contacts/util/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v7, v15, 0x7

    .line 1685
    .local v7, "hgrav":I
    const/4 v5, 0x0

    .line 1686
    .local v5, "childLeft":I
    packed-switch v7, :pswitch_data_0

    .line 1688
    :pswitch_0
    move v5, v10

    .line 1703
    :goto_2
    add-int/2addr v5, v12

    .line 1705
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v6, v5, v15

    .line 1706
    .local v6, "childOffset":I
    if-eqz v6, :cond_0

    .line 1707
    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1691
    .end local v6    # "childOffset":I
    :pswitch_1
    move v5, v10

    .line 1692
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v10, v15

    .line 1693
    goto :goto_2

    .line 1695
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v15, v14, v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2

    .line 1699
    :pswitch_3
    sub-int v15, v14, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sub-int v5, v15, v16

    .line 1700
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v11, v15

    .line 1701
    goto :goto_2

    .line 1712
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v5    # "childLeft":I
    .end local v7    # "hgrav":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "scrollX":I
    .end local v14    # "width":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/util/ViewPager;->mOnPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    if-eqz v15, :cond_3

    .line 1713
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/util/ViewPager;->mOnPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/android/contacts/util/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1715
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/util/ViewPager;->mInternalPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    if-eqz v15, :cond_4

    .line 1716
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/util/ViewPager;->mInternalPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/android/contacts/util/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1719
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/util/ViewPager;->mPageTransformer:Lcom/android/contacts/util/ViewPager$PageTransformer;

    if-eqz v15, :cond_6

    .line 1720
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getScrollX()I

    move-result v12

    .line 1721
    .restart local v12    # "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getChildCount()I

    move-result v4

    .line 1722
    .restart local v4    # "childCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v4, :cond_6

    .line 1723
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/contacts/util/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1724
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/util/ViewPager$LayoutParams;

    .line 1726
    .restart local v9    # "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/android/contacts/util/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_5

    .line 1722
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1728
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int/2addr v15, v12

    int-to-float v15, v15

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getClientWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 1729
    .local v13, "transformPos":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/util/ViewPager;->mPageTransformer:Lcom/android/contacts/util/ViewPager$PageTransformer;

    invoke-interface {v15, v3, v13}, Lcom/android/contacts/util/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_4

    .line 1733
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    .end local v12    # "scrollX":I
    .end local v13    # "transformPos":F
    :cond_6
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/contacts/util/ViewPager;->mCalledSuper:Z

    .line 1671
    return-void

    .line 1686
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 10
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 2694
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getChildCount()I

    move-result v1

    .line 2695
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2696
    const/4 v6, 0x0

    .line 2697
    .local v6, "index":I
    const/4 v5, 0x1

    .line 2698
    .local v5, "increment":I
    move v2, v1

    .line 2704
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 2705
    invoke-virtual {p0, v3}, Lcom/android/contacts/util/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2706
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 2707
    invoke-virtual {p0, v0}, Lcom/android/contacts/util/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v4

    .line 2708
    .local v4, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2709
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2710
    const/4 v7, 0x1

    return v7

    .line 2700
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 2701
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 2702
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 2704
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 2715
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return v9
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1273
    instance-of v1, p1, Lcom/android/contacts/util/ViewPager$SavedState;

    if-nez v1, :cond_0

    .line 1274
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1275
    return-void

    :cond_0
    move-object v0, p1

    .line 1278
    check-cast v0, Lcom/android/contacts/util/ViewPager$SavedState;

    .line 1279
    .local v0, "ss":Lcom/android/contacts/util/ViewPager$SavedState;
    invoke-virtual {v0}, Lcom/android/contacts/util/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1281
    iget-object v1, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_1

    .line 1282
    iget-object v1, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v0, Lcom/android/contacts/util/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/android/contacts/util/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1283
    iget v1, v0, Lcom/android/contacts/util/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/contacts/util/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1272
    :goto_0
    return-void

    .line 1285
    :cond_1
    iget v1, v0, Lcom/android/contacts/util/ViewPager$SavedState;->position:I

    iput v1, p0, Lcom/android/contacts/util/ViewPager;->mRestoredCurItem:I

    .line 1286
    iget-object v1, v0, Lcom/android/contacts/util/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/android/contacts/util/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1287
    iget-object v1, v0, Lcom/android/contacts/util/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/android/contacts/util/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1262
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1263
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/contacts/util/ViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/android/contacts/util/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1264
    .local v0, "ss":Lcom/android/contacts/util/ViewPager$SavedState;
    iget v2, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    iput v2, v0, Lcom/android/contacts/util/ViewPager$SavedState;->position:I

    .line 1265
    iget-object v2, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_0

    .line 1266
    iget-object v2, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/util/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1268
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1460
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1463
    if-eq p1, p3, :cond_0

    .line 1464
    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mPageMargin:I

    iget v1, p0, Lcom/android/contacts/util/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/android/contacts/util/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1459
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1926
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/util/ViewPager;->mFakeDragging:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1930
    const/16 v24, 0x1

    return v24

    .line 1933
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v24

    if-eqz v24, :cond_1

    .line 1936
    const/16 v24, 0x0

    return v24

    .line 1939
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v24

    if-nez v24, :cond_3

    .line 1941
    :cond_2
    const/16 v24, 0x0

    return v24

    .line 1944
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_4

    .line 1945
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1947
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1949
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1950
    .local v5, "action":I
    const/4 v11, 0x0

    .line 1952
    .local v11, "needsInvalidate":Z
    and-int/lit16 v0, v5, 0xff

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 2044
    .end local v11    # "needsInvalidate":Z
    :cond_5
    :goto_0
    :pswitch_0
    if-eqz v11, :cond_6

    .line 2045
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2047
    :cond_6
    const/16 v24, 0x1

    return v24

    .line 1954
    .restart local v11    # "needsInvalidate":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1955
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/util/ViewPager;->mPopulatePending:Z

    .line 1956
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->populate()V

    .line 1959
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mInitialMotionX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    .line 1960
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mInitialMotionY:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mLastMotionY:F

    .line 1961
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mActivePointerId:I

    goto :goto_0

    .line 1965
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/util/ViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-nez v24, :cond_7

    .line 1966
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1967
    .local v15, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 1968
    .local v20, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 1969
    .local v21, "xDiff":F
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v22

    .line 1970
    .local v22, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mLastMotionY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 1972
    .local v23, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mTouchSlop:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v21, v24

    if-lez v24, :cond_7

    cmpl-float v24, v21, v23

    if-lez v24, :cond_7

    .line 1974
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/util/ViewPager;->mIsBeingDragged:Z

    .line 1975
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/contacts/util/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1976
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    :goto_1
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    .line 1978
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mLastMotionY:F

    .line 1979
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/contacts/util/ViewPager;->setScrollState(I)V

    .line 1980
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/contacts/util/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1983
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    .line 1984
    .local v14, "parent":Landroid/view/ViewParent;
    if-eqz v14, :cond_7

    .line 1985
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1990
    .end local v14    # "parent":Landroid/view/ViewParent;
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/util/ViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 1993
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mActivePointerId:I

    move/from16 v24, v0

    .line 1992
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 1994
    .local v6, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 1995
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/contacts/util/ViewPager;->performDrag(F)Z

    move-result v11

    .local v11, "needsInvalidate":Z
    goto/16 :goto_0

    .line 1977
    .end local v6    # "activePointerIndex":I
    .local v11, "needsInvalidate":Z
    .restart local v15    # "pointerIndex":I
    .restart local v21    # "xDiff":F
    .restart local v22    # "y":F
    .restart local v23    # "yDiff":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    goto :goto_1

    .line 1999
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/util/ViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 2000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 2001
    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mMaximumVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x3e8

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2003
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mActivePointerId:I

    move/from16 v24, v0

    .line 2002
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    .line 2004
    .local v10, "initialVelocity":I
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/util/ViewPager;->mPopulatePending:Z

    .line 2005
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getClientWidth()I

    move-result v19

    .line 2006
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getScrollX()I

    move-result v16

    .line 2007
    .local v16, "scrollX":I
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->infoForCurrentScrollPosition()Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v8

    .line 2008
    .local v8, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    iget v7, v8, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    .line 2009
    .local v7, "currentPage":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    iget v0, v8, Lcom/android/contacts/util/ViewPager$ItemInfo;->offset:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    iget v0, v8, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v25, v0

    div-float v13, v24, v25

    .line 2011
    .local v13, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 2012
    .restart local v6    # "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 2013
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2014
    .local v17, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v13, v10, v1}, Lcom/android/contacts/util/ViewPager;->determineTargetPage(IFII)I

    move-result v12

    .line 2016
    .local v12, "nextPage":I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2, v10}, Lcom/android/contacts/util/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2018
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mActivePointerId:I

    .line 2019
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->endDrag()V

    .line 2020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v25

    or-int v11, v24, v25

    .local v11, "needsInvalidate":Z
    goto/16 :goto_0

    .line 2024
    .end local v6    # "activePointerIndex":I
    .end local v7    # "currentPage":I
    .end local v8    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v10    # "initialVelocity":I
    .end local v12    # "nextPage":I
    .end local v13    # "pageOffset":F
    .end local v16    # "scrollX":I
    .end local v17    # "totalDelta":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v19    # "width":I
    .end local v20    # "x":F
    .local v11, "needsInvalidate":Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/util/ViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 2025
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/util/ViewPager;->scrollToItem(IZIZ)V

    .line 2026
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mActivePointerId:I

    .line 2027
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->endDrag()V

    .line 2028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v25

    or-int v11, v24, v25

    .local v11, "needsInvalidate":Z
    goto/16 :goto_0

    .line 2032
    .local v11, "needsInvalidate":Z
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v9

    .line 2033
    .local v9, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 2034
    .restart local v20    # "x":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    .line 2035
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mActivePointerId:I

    goto/16 :goto_0

    .line 2039
    .end local v9    # "index":I
    .end local v20    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/contacts/util/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2041
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v24

    .line 2040
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mLastMotionX:F

    goto/16 :goto_0

    .line 1952
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2607
    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    if-lez v0, :cond_0

    .line 2608
    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/util/ViewPager;->setCurrentItem(IZ)V

    .line 2609
    return v2

    .line 2611
    :cond_0
    return v1
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2615
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    iget-object v1, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2616
    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/util/ViewPager;->setCurrentItem(IZ)V

    .line 2617
    return v2

    .line 2619
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method populate()V
    .locals 1

    .prologue
    .line 915
    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/util/ViewPager;->populate(I)V

    .line 914
    return-void
.end method

.method populate(I)V
    .locals 30
    .param p1, "newCurrentItem"    # I

    .prologue
    .line 919
    const/16 v21, 0x0

    .line 920
    .local v21, "oldCurInfo":Lcom/android/contacts/util/ViewPager$ItemInfo;
    const/4 v15, 0x2

    .line 921
    .local v15, "focusDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 922
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    const/16 v15, 0x42

    .line 923
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/ViewPager;->infoForPosition(I)Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v21

    .line 924
    .local v21, "oldCurInfo":Lcom/android/contacts/util/ViewPager$ItemInfo;
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    .line 927
    .end local v21    # "oldCurInfo":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_2

    .line 928
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->sortChildDrawingOrder()V

    .line 929
    return-void

    .line 922
    .local v21, "oldCurInfo":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_1
    const/16 v15, 0x11

    goto :goto_0

    .line 936
    .end local v21    # "oldCurInfo":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/util/ViewPager;->mPopulatePending:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    .line 938
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->sortChildDrawingOrder()V

    .line 939
    return-void

    .line 945
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v27

    if-nez v27, :cond_4

    .line 946
    return-void

    .line 949
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 951
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mOffscreenPageLimit:I

    move/from16 v22, v0

    .line 952
    .local v22, "pageLimit":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    move/from16 v27, v0

    sub-int v27, v27, v22

    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 953
    .local v26, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    .line 954
    .local v4, "N":I
    add-int/lit8 v27, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    move/from16 v28, v0

    add-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 956
    .local v12, "endPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mExpectedAdapterCount:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v4, v0, :cond_5

    .line 959
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 963
    .local v24, "resName":Ljava/lang/String;
    :goto_1
    new-instance v27, Ljava/lang/IllegalStateException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 965
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mExpectedAdapterCount:I

    move/from16 v29, v0

    .line 963
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 965
    const-string/jumbo v29, ", found: "

    .line 963
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 966
    const-string/jumbo v29, " Pager id: "

    .line 963
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 967
    const-string/jumbo v29, " Pager class: "

    .line 963
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 967
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getClass()Ljava/lang/Class;

    move-result-object v29

    .line 963
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 968
    const-string/jumbo v29, " Problematic adapter: "

    .line 963
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/view/PagerAdapter;->getClass()Ljava/lang/Class;

    move-result-object v29

    .line 963
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 960
    .end local v24    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 961
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getId()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "resName":Ljava/lang/String;
    goto :goto_1

    .line 972
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v24    # "resName":Ljava/lang/String;
    :cond_5
    const/4 v8, -0x1

    .line 973
    .local v8, "curIndex":I
    const/4 v9, 0x0

    .line 974
    .local v9, "curItem":Lcom/android/contacts/util/ViewPager$ItemInfo;
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_6

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 976
    .local v17, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_c

    .line 977
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    move-object/from16 v9, v17

    .line 982
    .end local v9    # "curItem":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_6
    if-nez v9, :cond_7

    if-lez v4, :cond_7

    .line 983
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Lcom/android/contacts/util/ViewPager;->addNewItem(II)Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v9

    .line 989
    :cond_7
    if-eqz v9, :cond_a

    .line 990
    const/4 v13, 0x0

    .line 991
    .local v13, "extraWidthLeft":F
    add-int/lit8 v18, v8, -0x1

    .line 992
    .local v18, "itemIndex":I
    if-ltz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 993
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getClientWidth()I

    move-result v7

    .line 994
    .local v7, "clientWidth":I
    if-gtz v7, :cond_e

    const/16 v19, 0x0

    .line 996
    .local v19, "leftWidthNeeded":F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, -0x1

    .local v23, "pos":I
    :goto_5
    if-ltz v23, :cond_8

    .line 997
    cmpl-float v27, v13, v19

    if-ltz v27, :cond_13

    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_13

    .line 998
    if-nez v17, :cond_f

    .line 1024
    :cond_8
    iget v14, v9, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    .line 1025
    .local v14, "extraWidthRight":F
    add-int/lit8 v18, v8, 0x1

    .line 1026
    const/high16 v27, 0x40000000    # 2.0f

    cmpg-float v27, v14, v27

    if-gez v27, :cond_9

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 1028
    :goto_6
    if-gtz v7, :cond_18

    const/16 v25, 0x0

    .line 1030
    .local v25, "rightWidthNeeded":F
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, 0x1

    :goto_8
    move/from16 v0, v23

    if-ge v0, v4, :cond_9

    .line 1031
    cmpl-float v27, v14, v25

    if-ltz v27, :cond_1d

    move/from16 v0, v23

    if-le v0, v12, :cond_1d

    .line 1032
    if-nez v17, :cond_19

    .line 1057
    .end local v25    # "rightWidthNeeded":F
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v8, v1}, Lcom/android/contacts/util/ViewPager;->calculatePageOffsets(Lcom/android/contacts/util/ViewPager$ItemInfo;ILcom/android/contacts/util/ViewPager$ItemInfo;)V

    .line 1067
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    move/from16 v29, v0

    if-eqz v9, :cond_21

    iget-object v0, v9, Lcom/android/contacts/util/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v27, v0

    :goto_9
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1073
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getChildCount()I

    move-result v6

    .line 1074
    .local v6, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_a
    move/from16 v0, v16

    if-ge v0, v6, :cond_22

    .line 1075
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1076
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/android/contacts/util/ViewPager$LayoutParams;

    .line 1077
    .local v20, "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/contacts/util/ViewPager$LayoutParams;->childIndex:I

    .line 1078
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/contacts/util/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-nez v27, :cond_b

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/contacts/util/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-nez v27, :cond_b

    .line 1080
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/contacts/util/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v17

    .line 1081
    .restart local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    if-eqz v17, :cond_b

    .line 1082
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/contacts/util/ViewPager$LayoutParams;->widthFactor:F

    .line 1083
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/contacts/util/ViewPager$LayoutParams;->position:I

    .line 1074
    .end local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 974
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v16    # "i":I
    .end local v20    # "lp":Lcom/android/contacts/util/ViewPager$LayoutParams;
    .restart local v9    # "curItem":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .restart local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 992
    .end local v9    # "curItem":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .restart local v13    # "extraWidthLeft":F
    .restart local v18    # "itemIndex":I
    :cond_d
    const/16 v17, 0x0

    .local v17, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    goto/16 :goto_3

    .line 995
    .end local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .restart local v7    # "clientWidth":I
    :cond_e
    iget v0, v9, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    sub-float v27, v28, v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getPaddingLeft()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v7

    move/from16 v29, v0

    div-float v28, v28, v29

    add-float v19, v27, v28

    .restart local v19    # "leftWidthNeeded":F
    goto/16 :goto_4

    .line 1001
    .restart local v23    # "pos":I
    :cond_f
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-eqz v27, :cond_11

    .line 996
    :cond_10
    :goto_b
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_5

    .line 1002
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1008
    add-int/lit8 v18, v18, -0x1

    .line 1009
    add-int/lit8 v8, v8, -0x1

    .line 1010
    if-ltz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .local v17, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    goto :goto_b

    .end local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_12
    const/16 v17, 0x0

    .local v17, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    goto :goto_b

    .line 1012
    .end local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_13
    if-eqz v17, :cond_15

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    .line 1013
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1014
    add-int/lit8 v18, v18, -0x1

    .line 1015
    if-ltz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .local v17, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    goto :goto_b

    .end local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_14
    const/16 v17, 0x0

    .local v17, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    goto :goto_b

    .line 1017
    .end local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_15
    add-int/lit8 v27, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/util/ViewPager;->addNewItem(II)Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v17

    .line 1018
    .local v17, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1019
    add-int/lit8 v8, v8, 0x1

    .line 1020
    if-ltz v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    check-cast v17, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .restart local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    goto/16 :goto_b

    :cond_16
    const/16 v17, 0x0

    .local v17, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    goto/16 :goto_b

    .line 1027
    .end local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .restart local v14    # "extraWidthRight":F
    :cond_17
    const/16 v17, 0x0

    .restart local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    goto/16 :goto_6

    .line 1029
    .end local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getPaddingRight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v7

    move/from16 v28, v0

    div-float v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    add-float v25, v27, v28

    .restart local v25    # "rightWidthNeeded":F
    goto/16 :goto_7

    .line 1035
    :cond_19
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1b

    .line 1030
    :cond_1a
    :goto_c
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_8

    .line 1036
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .local v17, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    goto :goto_c

    .end local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_1c
    const/16 v17, 0x0

    .local v17, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    goto :goto_c

    .line 1044
    .end local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_1d
    if-eqz v17, :cond_1f

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f

    .line 1045
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v14, v14, v27

    .line 1046
    add-int/lit8 v18, v18, 0x1

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .local v17, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    goto/16 :goto_c

    .end local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_1e
    const/16 v17, 0x0

    .local v17, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    goto/16 :goto_c

    .line 1049
    .end local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/util/ViewPager;->addNewItem(II)Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v17

    .line 1050
    .local v17, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    add-int/lit8 v18, v18, 0x1

    .line 1051
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v14, v14, v27

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    check-cast v17, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .restart local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    goto/16 :goto_c

    :cond_20
    const/16 v17, 0x0

    .local v17, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    goto/16 :goto_c

    .line 1067
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    .end local v25    # "rightWidthNeeded":F
    :cond_21
    const/16 v27, 0x0

    goto/16 :goto_9

    .line 1087
    .restart local v6    # "childCount":I
    .restart local v16    # "i":I
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->sortChildDrawingOrder()V

    .line 1089
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_24

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v10

    .line 1091
    .local v10, "currentFocused":Landroid/view/View;
    if-eqz v10, :cond_25

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/contacts/util/ViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v17

    .line 1092
    :goto_d
    if-eqz v17, :cond_23

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_24

    .line 1093
    :cond_23
    const/16 v16, 0x0

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/ViewPager;->getChildCount()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_24

    .line 1094
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1095
    .restart local v5    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/contacts/util/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/contacts/util/ViewPager$ItemInfo;

    move-result-object v17

    .line 1096
    .local v17, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    if-eqz v17, :cond_26

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_26

    .line 1097
    invoke-virtual {v5, v15}, Landroid/view/View;->requestFocus(I)Z

    move-result v27

    if-eqz v27, :cond_26

    .line 918
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "currentFocused":Landroid/view/View;
    .end local v17    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_24
    return-void

    .line 1091
    .restart local v10    # "currentFocused":Landroid/view/View;
    :cond_25
    const/16 v17, 0x0

    .local v17, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    goto :goto_d

    .line 1093
    .restart local v5    # "child":Landroid/view/View;
    .local v17, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_26
    add-int/lit8 v16, v16, 0x1

    goto :goto_e
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1319
    iget-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1320
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1318
    :goto_0
    return-void

    .line 1322
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 10
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 409
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v4, :cond_1

    .line 410
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v5, p0, Lcom/android/contacts/util/ViewPager;->mObserver:Lcom/android/contacts/util/ViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 411
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 412
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 413
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/util/ViewPager$ItemInfo;

    .line 414
    .local v1, "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v5, v1, Lcom/android/contacts/util/ViewPager$ItemInfo;->position:I

    iget-object v6, v1, Lcom/android/contacts/util/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    .end local v1    # "ii":Lcom/android/contacts/util/ViewPager$ItemInfo;
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 417
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 418
    invoke-direct {p0}, Lcom/android/contacts/util/ViewPager;->removeNonDecorViews()V

    .line 419
    iput v7, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    .line 420
    invoke-virtual {p0, v7, v7}, Lcom/android/contacts/util/ViewPager;->scrollTo(II)V

    .line 423
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 424
    .local v2, "oldAdapter":Landroid/support/v4/view/PagerAdapter;
    iput-object p1, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 425
    iput v7, p0, Lcom/android/contacts/util/ViewPager;->mExpectedAdapterCount:I

    .line 427
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v4, :cond_3

    .line 428
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mObserver:Lcom/android/contacts/util/ViewPager$PagerObserver;

    if-nez v4, :cond_2

    .line 429
    new-instance v4, Lcom/android/contacts/util/ViewPager$PagerObserver;

    invoke-direct {v4, p0, v8}, Lcom/android/contacts/util/ViewPager$PagerObserver;-><init>(Lcom/android/contacts/util/ViewPager;Lcom/android/contacts/util/ViewPager$PagerObserver;)V

    iput-object v4, p0, Lcom/android/contacts/util/ViewPager;->mObserver:Lcom/android/contacts/util/ViewPager$PagerObserver;

    .line 431
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v5, p0, Lcom/android/contacts/util/ViewPager;->mObserver:Lcom/android/contacts/util/ViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 432
    iput-boolean v7, p0, Lcom/android/contacts/util/ViewPager;->mPopulatePending:Z

    .line 433
    iget-boolean v3, p0, Lcom/android/contacts/util/ViewPager;->mFirstLayout:Z

    .line 434
    .local v3, "wasFirstLayout":Z
    iput-boolean v9, p0, Lcom/android/contacts/util/ViewPager;->mFirstLayout:Z

    .line 435
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    iput v4, p0, Lcom/android/contacts/util/ViewPager;->mExpectedAdapterCount:I

    .line 436
    iget v4, p0, Lcom/android/contacts/util/ViewPager;->mRestoredCurItem:I

    if-ltz v4, :cond_5

    .line 437
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v5, p0, Lcom/android/contacts/util/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/android/contacts/util/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 438
    iget v4, p0, Lcom/android/contacts/util/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v4, v7, v9}, Lcom/android/contacts/util/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 439
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/contacts/util/ViewPager;->mRestoredCurItem:I

    .line 440
    iput-object v8, p0, Lcom/android/contacts/util/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 441
    iput-object v8, p0, Lcom/android/contacts/util/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 449
    .end local v3    # "wasFirstLayout":Z
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mAdapterChangeListener:Lcom/android/contacts/util/ViewPager$OnAdapterChangeListener;

    if-eqz v4, :cond_4

    if-eq v2, p1, :cond_4

    .line 450
    iget-object v4, p0, Lcom/android/contacts/util/ViewPager;->mAdapterChangeListener:Lcom/android/contacts/util/ViewPager$OnAdapterChangeListener;

    invoke-interface {v4, v2, p1}, Lcom/android/contacts/util/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 408
    :cond_4
    return-void

    .line 442
    .restart local v3    # "wasFirstLayout":Z
    :cond_5
    if-nez v3, :cond_6

    .line 443
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->populate()V

    goto :goto_1

    .line 445
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->requestLayout()V

    goto :goto_1
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    .line 624
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_1

    .line 625
    iget-object v2, p0, Lcom/android/contacts/util/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 627
    :try_start_0
    const-class v2, Landroid/view/ViewGroup;

    .line 628
    const-string/jumbo v3, "setChildrenDrawingOrderEnabled"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 627
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/util/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/util/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 623
    :cond_1
    :goto_1
    return-void

    .line 629
    :catch_0
    move-exception v1

    .line 630
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "ViewPager"

    const-string/jumbo v3, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 635
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ViewPager"

    const-string/jumbo v3, "Error changing children drawing order"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 490
    iput-boolean v1, p0, Lcom/android/contacts/util/ViewPager;->mPopulatePending:Z

    .line 491
    iget-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/contacts/util/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 489
    return-void

    .line 491
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 501
    iput-boolean v0, p0, Lcom/android/contacts/util/ViewPager;->mPopulatePending:Z

    .line 502
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/contacts/util/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 500
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 510
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/contacts/util/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 509
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v4, 0x0

    .line 514
    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 515
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/contacts/util/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 516
    return-void

    .line 518
    :cond_1
    if-nez p3, :cond_2

    iget v3, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 519
    invoke-direct {p0, v4}, Lcom/android/contacts/util/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 520
    return-void

    .line 523
    :cond_2
    if-gez p1, :cond_5

    .line 524
    const/4 p1, 0x0

    .line 528
    :cond_3
    :goto_0
    iget v2, p0, Lcom/android/contacts/util/ViewPager;->mOffscreenPageLimit:I

    .line 529
    .local v2, "pageLimit":I
    iget v3, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_4

    iget v3, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_6

    .line 533
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 534
    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/util/ViewPager$ItemInfo;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/contacts/util/ViewPager$ItemInfo;->scrolling:Z

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 525
    .end local v1    # "i":I
    .end local v2    # "pageLimit":I
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_3

    .line 526
    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    goto :goto_0

    .line 537
    .restart local v2    # "pageLimit":I
    :cond_6
    iget v3, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    if-eq v3, p1, :cond_9

    const/4 v0, 0x1

    .line 539
    .local v0, "dispatchSelected":Z
    :goto_2
    iget-boolean v3, p0, Lcom/android/contacts/util/ViewPager;->mFirstLayout:Z

    if-eqz v3, :cond_a

    .line 542
    iput p1, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    .line 543
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mOnPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_7

    .line 544
    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mOnPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/android/contacts/util/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 546
    :cond_7
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mInternalPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_8

    .line 547
    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mInternalPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/android/contacts/util/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 549
    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->requestLayout()V

    .line 513
    :goto_3
    return-void

    .line 537
    .end local v0    # "dispatchSelected":Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "dispatchSelected":Z
    goto :goto_2

    .line 551
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/ViewPager;->populate(I)V

    .line 552
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/contacts/util/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_3
.end method

.method setInternalPageChangeListener(Lcom/android/contacts/util/ViewPager$OnPageChangeListener;)Lcom/android/contacts/util/ViewPager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager;->mInternalPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    .line 656
    .local v0, "oldListener":Lcom/android/contacts/util/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Lcom/android/contacts/util/ViewPager;->mInternalPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    .line 657
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .prologue
    const/4 v3, 0x1

    .line 689
    if-ge p1, v3, :cond_0

    .line 690
    const-string/jumbo v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 p1, 0x1

    .line 694
    :cond_0
    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 695
    iput p1, p0, Lcom/android/contacts/util/ViewPager;->mOffscreenPageLimit:I

    .line 696
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->populate()V

    .line 688
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/android/contacts/util/ViewPager$OnAdapterChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/util/ViewPager$OnAdapterChangeListener;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/contacts/util/ViewPager;->mAdapterChangeListener:Lcom/android/contacts/util/ViewPager$OnAdapterChangeListener;

    .line 474
    return-void
.end method

.method public setOnPageChangeListener(Lcom/android/contacts/util/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/contacts/util/ViewPager;->mOnPageChangeListener:Lcom/android/contacts/util/ViewPager$OnPageChangeListener;

    .line 592
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .prologue
    .line 709
    iget v0, p0, Lcom/android/contacts/util/ViewPager;->mPageMargin:I

    .line 710
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/android/contacts/util/ViewPager;->mPageMargin:I

    .line 712
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getWidth()I

    move-result v1

    .line 713
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/android/contacts/util/ViewPager;->recomputeScrollPosition(IIII)V

    .line 715
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->requestLayout()V

    .line 708
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/util/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 744
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/contacts/util/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 734
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->refreshDrawableState()V

    .line 735
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/util/ViewPager;->setWillNotDraw(Z)V

    .line 736
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->invalidate()V

    .line 732
    return-void

    .line 735
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPageTransformer(ZLcom/android/contacts/util/ViewPager$PageTransformer;)V
    .locals 6
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Lcom/android/contacts/util/ViewPager$PageTransformer;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 609
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v3, v5, :cond_1

    .line 610
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 611
    .local v0, "hasTransformer":Z
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/util/ViewPager;->mPageTransformer:Lcom/android/contacts/util/ViewPager$PageTransformer;

    if-eqz v3, :cond_3

    move v3, v2

    :goto_1
    if-eq v0, v3, :cond_4

    const/4 v1, 0x1

    .line 612
    .local v1, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Lcom/android/contacts/util/ViewPager;->mPageTransformer:Lcom/android/contacts/util/ViewPager$PageTransformer;

    .line 613
    invoke-virtual {p0, v0}, Lcom/android/contacts/util/ViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    .line 614
    if-eqz v0, :cond_5

    .line 615
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :cond_0
    iput v2, p0, Lcom/android/contacts/util/ViewPager;->mDrawingOrder:I

    .line 619
    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->populate()V

    .line 608
    .end local v0    # "hasTransformer":Z
    .end local v1    # "needsPopulate":Z
    :cond_1
    return-void

    .line 610
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hasTransformer":Z
    goto :goto_0

    :cond_3
    move v3, v4

    .line 611
    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "needsPopulate":Z
    goto :goto_2

    .line 617
    :cond_5
    iput v4, p0, Lcom/android/contacts/util/ViewPager;->mDrawingOrder:I

    goto :goto_3
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 779
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/contacts/util/ViewPager;->smoothScrollTo(III)V

    .line 778
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 792
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/contacts/util/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 793
    return-void

    .line 795
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getScrollX()I

    move-result v2

    .line 796
    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->getScrollY()I

    move-result v3

    .line 797
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 798
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 799
    .local v5, "dy":I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 800
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/contacts/util/ViewPager;->completeScroll(Z)V

    .line 801
    invoke-virtual {p0}, Lcom/android/contacts/util/ViewPager;->populate()V

    .line 802
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/contacts/util/ViewPager;->setScrollState(I)V

    .line 803
    return-void

    .line 806
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/contacts/util/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 807
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/contacts/util/ViewPager;->setScrollState(I)V

    .line 809
    invoke-direct {p0}, Lcom/android/contacts/util/ViewPager;->getClientWidth()I

    move-result v12

    .line 810
    .local v12, "width":I
    div-int/lit8 v9, v12, 0x2

    .line 811
    .local v9, "halfWidth":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v1, v13

    int-to-float v13, v12

    div-float/2addr v1, v13

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 812
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v13, v9

    .line 813
    invoke-virtual {p0, v8}, Lcom/android/contacts/util/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v14

    .line 812
    mul-float/2addr v13, v14

    add-float v7, v1, v13

    .line 815
    .local v7, "distance":F
    const/4 v6, 0x0

    .line 816
    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 817
    if-lez p3, :cond_2

    .line 818
    move/from16 v0, p3

    int-to-float v1, v0

    div-float v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v13, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 824
    :goto_0
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 826
    iget-object v1, p0, Lcom/android/contacts/util/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 827
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 789
    return-void

    .line 820
    :cond_2
    int-to-float v1, v12

    iget-object v13, p0, Lcom/android/contacts/util/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v14, p0, Lcom/android/contacts/util/ViewPager;->mCurItem:I

    invoke-virtual {v13, v14}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    mul-float v11, v1, v13

    .line 821
    .local v11, "pageWidth":F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v13, p0, Lcom/android/contacts/util/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    div-float v10, v1, v13

    .line 822
    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v1, v13

    float-to-int v6, v1

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    .line 750
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/util/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
