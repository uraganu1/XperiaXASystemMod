.class public Lcom/sonyericsson/movablepanes/paneview/PaneView;
.super Landroid/widget/AdapterView;
.source "PaneView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/movablepanes/paneview/PaneView$OnItemActionListener;,
        Lcom/sonyericsson/movablepanes/paneview/PaneView$Item;,
        Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;,
        Lcom/sonyericsson/movablepanes/paneview/PaneView$PaneDataSetObserver;,
        Lcom/sonyericsson/movablepanes/paneview/PaneView$FlingStateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALPHA_PARAM:F = 0.7f

.field private static final POSITION_TOLERANCE:F = 0.001f

.field private static final PRESS_ANIMATION_DURATION:I = 0x3c

.field private static final SCALE_PARAM:F = 0.9f

.field private static final VELOCITY_TOLERANCE:F = 0.01f


# instance fields
.field private mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

.field private mDataSetObserver:Lcom/sonyericsson/movablepanes/paneview/PaneView$PaneDataSetObserver;

.field protected mDynamicsRunnable:Ljava/lang/Runnable;

.field private mEnableAnimations:Z

.field mFlingStateListener:Lcom/sonyericsson/movablepanes/paneview/PaneView$FlingStateListener;

.field private mGestureDetector:Lcom/sonyericsson/movablepanes/paneview/GestureDetector;

.field protected mIsInteracting:Z

.field private mItemActionListener:Lcom/sonyericsson/movablepanes/paneview/PaneView$OnItemActionListener;

.field private mItemFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mItemKeyListener:Landroid/view/View$OnKeyListener;

.field private mItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItems1:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItems2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxScroll:F

.field private mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field private mRejectPaddingTouch:Z

.field protected mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

.field protected mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

.field protected mTouchIsLocked:Z

.field private mVelocityThreshold:I

.field private mViewCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/movablepanes/paneview/PaneView;)Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/movablepanes/paneview/PaneView;)Lcom/sonyericsson/movablepanes/paneview/PaneView$OnItemActionListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItemActionListener:Lcom/sonyericsson/movablepanes/paneview/PaneView$OnItemActionListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/movablepanes/paneview/PaneView;)F
    .locals 1

    iget v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mMaxScroll:F

    return v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/movablepanes/paneview/PaneView;II)Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getContainingItem(II)Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/movablepanes/paneview/PaneView;Landroid/view/View;)Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getItemForView(Landroid/view/View;)Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/movablepanes/paneview/PaneView;Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V
    .locals 0
    .param p1, "item"    # Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->clickItem(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/movablepanes/paneview/PaneView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->interactionStart()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/movablepanes/paneview/PaneView;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->scaleUp(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonyericsson/movablepanes/paneview/PaneView;Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V
    .locals 0
    .param p1, "selectedItem"    # Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setSelectedItem(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sonyericsson/movablepanes/paneview/PaneView;Z)V
    .locals 0
    .param p1, "startInteraction"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->startDynamicsRunnable(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/sonyericsson/movablepanes/paneview/PaneView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->stopDynamicsRunnable()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems2:Ljava/util/HashMap;

    .line 133
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    .line 142
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mViewCache:Landroid/util/SparseArray;

    .line 155
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mMaxScroll:F

    .line 598
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mEnableAnimations:Z

    .line 186
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setDescendantFocusability(I)V

    .line 188
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 190
    .local v0, "touchSlop":I
    new-instance v1, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;

    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->createGestureListener()Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;

    move-result-object v2

    .line 191
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    .line 190
    invoke-direct {v1, v2, v0, v4, v5}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;-><init>(Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;IJ)V

    iput-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/movablepanes/paneview/GestureDetector;

    .line 193
    new-instance v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$PaneDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView$PaneDataSetObserver;-><init>(Lcom/sonyericsson/movablepanes/paneview/PaneView;Lcom/sonyericsson/movablepanes/paneview/PaneView$PaneDataSetObserver;)V

    iput-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mDataSetObserver:Lcom/sonyericsson/movablepanes/paneview/PaneView$PaneDataSetObserver;

    .line 195
    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->createDynamicsRunnable()V

    .line 197
    new-instance v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView$1;-><init>(Lcom/sonyericsson/movablepanes/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

    .line 209
    new-instance v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView$2;-><init>(Lcom/sonyericsson/movablepanes/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItemKeyListener:Landroid/view/View$OnKeyListener;

    .line 245
    new-instance v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView$3;-><init>(Lcom/sonyericsson/movablepanes/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItemFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 266
    new-instance v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView$4;-><init>(Lcom/sonyericsson/movablepanes/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 183
    return-void
.end method

.method private addItemView(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;Landroid/view/View;Z)V
    .locals 1
    .param p1, "item"    # Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "addAsChild"    # Z

    .prologue
    .line 1096
    if-nez p2, :cond_0

    .line 1099
    return-void

    .line 1102
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1104
    invoke-direct {p0, p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->removeItemView(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V

    .line 1107
    :cond_1
    if-nez p3, :cond_2

    invoke-static {p2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->isViewDetached(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1108
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->removeDetachedView(Landroid/view/View;Z)V

    .line 1112
    :cond_2
    iput-object p2, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 1114
    if-eqz p3, :cond_3

    .line 1116
    invoke-direct {p0, p2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->addViewAndLayoutParams(Landroid/view/View;)V

    .line 1095
    :cond_3
    return-void
.end method

.method private addViewAndLayoutParams(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 1127
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1128
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 1129
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1132
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->isViewDetached(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1133
    invoke-virtual {p0, p1, v2, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1138
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1139
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    :cond_1
    return-void

    .line 1135
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_0
.end method

.method private addViewToCache(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .prologue
    .line 1203
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 1204
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 1205
    .local v0, "viewTypeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 1206
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "viewTypeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1207
    .restart local v0    # "viewTypeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1209
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1202
    .end local v0    # "viewTypeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method private clearItems(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 985
    .local p1, "items":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .line 986
    .local v0, "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v2, v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/movablepanes/paneview/PaneLocation;

    invoke-virtual {v2}, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->recycle()V

    .line 987
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/movablepanes/paneview/PaneLocation;

    goto :goto_0

    .line 989
    .end local v0    # "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 983
    return-void
.end method

.method private clickItem(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V
    .locals 8
    .param p1, "item"    # Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .prologue
    .line 714
    iget-object v2, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 715
    .local v2, "v":Landroid/view/View;
    invoke-static {p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-get1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v3

    .line 716
    .local v3, "pos":I
    invoke-static {p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-get0(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)J

    move-result-wide v4

    .line 717
    .local v4, "id":J
    new-instance v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$6;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/movablepanes/paneview/PaneView$6;-><init>(Lcom/sonyericsson/movablepanes/paneview/PaneView;Landroid/view/View;IJ)V

    .line 723
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v6, v1

    .line 717
    invoke-virtual {p0, v0, v6, v7}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 713
    return-void
.end method

.method private createDynamicsRunnable()V
    .locals 1

    .prologue
    .line 775
    new-instance v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView$7;-><init>(Lcom/sonyericsson/movablepanes/paneview/PaneView;)V

    iput-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    .line 774
    return-void
.end method

.method private createGestureListener()Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;
    .locals 1

    .prologue
    .line 642
    new-instance v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView$5;-><init>(Lcom/sonyericsson/movablepanes/paneview/PaneView;)V

    return-object v0
.end method

.method private getAdapterItems(Ljava/util/HashMap;Ljava/util/HashMap;Z)V
    .locals 9
    .param p3, "enableAnimations"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 874
    .local p1, "newItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;>;"
    .local p2, "oldItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;>;"
    invoke-static {}, Lcom/sonyericsson/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 875
    .local v4, "itemDrawRect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->obtain()Lcom/sonyericsson/movablepanes/paneview/PaneLocation;

    move-result-object v5

    .line 877
    .local v5, "newLocation":Lcom/sonyericsson/movablepanes/paneview/PaneLocation;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    invoke-interface {v6}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 879
    iget-object v6, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    iget-object v7, v5, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getLayoutWidth()I

    move-result v8

    invoke-interface {v6, v0, v7, v8}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->updateLocation(ILandroid/graphics/Rect;I)V

    .line 882
    const/4 v1, 0x0

    .line 886
    .local v1, "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v6, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    invoke-interface {v6, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->getItemId(I)J

    move-result-wide v2

    .line 887
    .local v2, "id":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    check-cast v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .line 889
    .local v1, "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    if-eqz v1, :cond_2

    .line 892
    invoke-static {v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-get1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v6

    if-eq v6, v0, :cond_0

    .line 893
    iget-object v6, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->animateMoveFrom:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/movablepanes/paneview/PaneLocation;

    iget-object v7, v7, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 894
    iget-object v6, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->animateMoveFrom:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getPaddingTop()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 895
    iget-object v6, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->animateMoveTo:Landroid/graphics/Rect;

    iget-object v7, v5, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 896
    iput-boolean p3, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->animateMove:Z

    .line 900
    :cond_0
    iget-object v6, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/movablepanes/paneview/PaneLocation;

    invoke-virtual {v6, v5}, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->set(Lcom/sonyericsson/movablepanes/paneview/PaneLocation;)V

    .line 901
    invoke-static {v1, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-set1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;I)I

    .line 903
    iget-object v6, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 906
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->viewValid:Z

    .line 920
    :cond_1
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 911
    :cond_2
    new-instance v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .end local v1    # "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    invoke-direct {v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;-><init>()V

    .line 912
    .restart local v1    # "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {}, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->obtain()Lcom/sonyericsson/movablepanes/paneview/PaneLocation;

    move-result-object v6

    iput-object v6, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/movablepanes/paneview/PaneLocation;

    .line 913
    iget-object v6, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/movablepanes/paneview/PaneLocation;

    invoke-virtual {v6, v5}, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->set(Lcom/sonyericsson/movablepanes/paneview/PaneLocation;)V

    .line 914
    invoke-static {v1, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-set1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;I)I

    .line 915
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-set0(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;J)J

    .line 916
    iput-boolean p3, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->animateScaleUp:Z

    goto :goto_1

    .line 923
    .end local v1    # "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    .end local v2    # "id":J
    :cond_3
    invoke-virtual {v5}, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->recycle()V

    .line 924
    invoke-static {v4}, Lcom/sonyericsson/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 873
    return-void
.end method

.method private getContainingItem(II)Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 735
    invoke-static {}, Lcom/sonyericsson/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 737
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getScrollX()I

    move-result v3

    add-int/2addr p1, v3

    .line 738
    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getScrollY()I

    move-result v3

    add-int/2addr p2, v3

    .line 742
    iget-object v3, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .line 743
    .local v0, "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v3, v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->isItemEnabled(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 744
    iget-object v3, v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getViewRectInParent(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 745
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 746
    invoke-static {v2}, Lcom/sonyericsson/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 747
    return-object v0

    .line 752
    .end local v0    # "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    :cond_1
    invoke-static {v2}, Lcom/sonyericsson/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 753
    return-object v4
.end method

.method private getItemForView(Landroid/view/View;)Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 316
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .line 317
    .local v0, "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v2, v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 318
    return-object v0

    .line 321
    .end local v0    # "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getLayoutWidth()I
    .locals 2

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getViewRectInParent(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 757
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 756
    return-void
.end method

.method private handleDeletedItems(Ljava/util/HashMap;Z)V
    .locals 5
    .param p2, "enableAnimations"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "deletedItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;>;"
    const/4 v4, 0x0

    .line 956
    invoke-static {}, Lcom/sonyericsson/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 959
    .local v2, "itemDrawRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "deletedItem$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .line 961
    .local v0, "deletedItem":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v3, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    if-ne v0, v3, :cond_1

    .line 962
    invoke-direct {p0, v4}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setSelectedItem(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V

    .line 965
    :cond_1
    if-eqz v0, :cond_0

    .line 967
    iget-object v3, v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 968
    invoke-direct {p0, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->removeItemViewFromParent(Lcom/sonyericsson/movablepanes/paneview/PaneView$Item;)V

    goto :goto_0

    .line 973
    .end local v0    # "deletedItem":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->clearItems(Ljava/util/HashMap;)V

    .line 975
    invoke-static {v2}, Lcom/sonyericsson/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 955
    return-void
.end method

.method private interactionStart()V
    .locals 1

    .prologue
    .line 823
    iget-boolean v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mIsInteracting:Z

    if-nez v0, :cond_0

    .line 824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mIsInteracting:Z

    .line 822
    :cond_0
    return-void
.end method

.method private isItemEnabled(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .prologue
    .line 767
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    invoke-static {p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-get1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isViewAttachedToWindow(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1193
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isViewDetached(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1183
    invoke-static {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->isViewAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private layoutItem(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;F)V
    .locals 3
    .param p1, "item"    # Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    .param p2, "placement"    # F

    .prologue
    .line 1000
    invoke-static {}, Lcom/sonyericsson/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1001
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/movablepanes/paneview/PaneLocation;

    iget-object v1, v1, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1002
    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1003
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->ensureItemView(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;Z)V

    .line 1004
    invoke-static {v0}, Lcom/sonyericsson/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 999
    return-void
.end method

.method private removeItemView(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V
    .locals 4
    .param p1, "item"    # Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .prologue
    .line 1150
    iget-object v0, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 1151
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->removeItemViewFromParent(Lcom/sonyericsson/movablepanes/paneview/PaneView$Item;)V

    .line 1152
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    invoke-static {p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-get1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->getItemViewType(I)I

    move-result v1

    .line 1153
    .local v1, "viewType":I
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->addViewToCache(Landroid/view/View;I)V

    .line 1149
    return-void
.end method

.method private removeItemViewFromParent(Lcom/sonyericsson/movablepanes/paneview/PaneView$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/sonyericsson/movablepanes/paneview/PaneView$Item;

    .prologue
    .line 1163
    iget-object v0, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    .line 1164
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->isViewDetached(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1165
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->removeDetachedView(Landroid/view/View;Z)V

    .line 1169
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    .line 1162
    return-void

    .line 1167
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0
.end method

.method private removeViewFromCache(I)Landroid/view/View;
    .locals 3
    .param p1, "viewType"    # I

    .prologue
    const/4 v2, 0x0

    .line 1220
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 1221
    .local v0, "viewTypeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 1222
    return-object v2

    .line 1224
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1225
    return-object v2

    .line 1227
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1
.end method

.method private scaleDown(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const v1, 0x3f666666    # 0.9f

    .line 619
    if-eqz p1, :cond_0

    .line 620
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 621
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 622
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 623
    const-wide/16 v2, 0x3c

    .line 622
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 618
    :cond_0
    return-void
.end method

.method private scaleUp(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 628
    if-eqz p1, :cond_0

    .line 629
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 630
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 631
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 632
    const-wide/16 v2, 0x3c

    .line 631
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 627
    :cond_0
    return-void
.end method

.method private static setPreScaleUp(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const v1, 0x3f666666    # 0.9f

    .line 609
    if-eqz p0, :cond_0

    .line 610
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    .line 611
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    .line 612
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 613
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 614
    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 608
    :cond_0
    return-void
.end method

.method private setSelectedItem(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V
    .locals 1
    .param p1, "selectedItem"    # Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .prologue
    .line 1231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setSelectedItem(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;Z)V

    .line 1230
    return-void
.end method

.method private startDynamicsRunnable(Z)V
    .locals 1
    .param p1, "startInteraction"    # Z

    .prologue
    .line 808
    if-eqz p1, :cond_0

    .line 809
    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->interactionStart()V

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->post(Ljava/lang/Runnable;)Z

    .line 807
    return-void
.end method

.method private stopDynamicsRunnable()V
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 818
    return-void
.end method

.method private updateMaxScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 936
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    invoke-interface {v2}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 937
    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getHeight()I

    move-result v0

    .line 938
    .local v0, "height":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 939
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    iget-object v3, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    invoke-interface {v3}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    .line 940
    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getPaddingRight()I

    move-result v5

    .line 939
    sub-int/2addr v4, v5

    invoke-interface {v2, v3, v1, v4}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->updateLocation(ILandroid/graphics/Rect;I)V

    .line 941
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mMaxScroll:F

    .line 935
    .end local v0    # "height":I
    .end local v1    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 943
    :cond_0
    iput v6, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mMaxScroll:F

    goto :goto_0
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 446
    invoke-super {p0}, Landroid/widget/AdapterView;->cancelLongPress()V

    .line 447
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/movablepanes/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->cancelLongPress()V

    .line 445
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "arg0"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 452
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 454
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .line 455
    .local v1, "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v5, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 459
    iget-boolean v5, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->animateScaleUp:Z

    if-eqz v5, :cond_1

    .line 460
    iput-boolean v9, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->animateScaleUp:Z

    .line 461
    iget-object v5, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-static {v5}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setPreScaleUp(Landroid/view/View;)V

    .line 462
    iget-object v5, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->scaleUp(Landroid/view/View;)V

    .line 465
    :cond_1
    iget-boolean v5, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->animateMove:Z

    if-eqz v5, :cond_0

    .line 466
    iput-boolean v9, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->animateMove:Z

    .line 468
    iget-object v5, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 469
    .local v3, "left":I
    iget-object v5, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 471
    .local v4, "top":I
    iget-object v5, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget-object v6, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->animateMoveFrom:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 472
    iget-object v5, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget-object v6, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->animateMoveFrom:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 473
    iget-object v5, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    .line 475
    iget-object v5, v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 476
    .local v0, "animate":Landroid/view/ViewPropertyAnimator;
    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 477
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 478
    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 479
    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 451
    .end local v0    # "animate":Landroid/view/ViewPropertyAnimator;
    .end local v1    # "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    .end local v3    # "left":I
    .end local v4    # "top":I
    :cond_2
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mRejectPaddingTouch:Z

    if-eqz v0, :cond_2

    .line 487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 489
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 488
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 491
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected ensureItemView(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;Z)V
    .locals 10
    .param p1, "item"    # Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "addAsChild"    # Z

    .prologue
    .line 1017
    invoke-static {p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-get1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v0

    .line 1018
    .local v0, "adapterPosition":I
    const/4 v1, 0x0

    .line 1019
    .local v1, "gotView":Z
    const/4 v3, 0x0

    .line 1021
    .local v3, "viewPreviouslyAttached":Z
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    invoke-interface {v5}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->hasStableIds()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-get0(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    invoke-interface {v5, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->getItemId(I)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 1023
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "ID has changed!A posible cause of this is that the client has changed the data without notifiying us (via the observer on the adapter).If the IDs are not stable, hasStableIds() should return false."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1029
    :cond_0
    iget-object v5, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-boolean v5, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->viewValid:Z

    if-eqz v5, :cond_7

    .line 1049
    :cond_1
    iget-object v5, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-nez v5, :cond_2

    .line 1051
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    invoke-interface {v5, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->getItemViewType(I)I

    move-result v4

    .line 1052
    .local v4, "viewType":I
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    invoke-direct {p0, v4}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->removeViewFromCache(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v0, v6, p0}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1053
    .local v2, "view":Landroid/view/View;
    const/4 v1, 0x1

    .line 1054
    invoke-static {v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->isViewAttachedToWindow(Landroid/view/View;)Z

    move-result v3

    .line 1055
    .local v3, "viewPreviouslyAttached":Z
    invoke-direct {p0, p1, v2, p3}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->addItemView(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;Landroid/view/View;Z)V

    .line 1058
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "viewPreviouslyAttached":Z
    .end local v4    # "viewType":I
    :cond_2
    :goto_0
    iget-object v5, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 1059
    iget-object v2, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 1060
    .restart local v2    # "view":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 1061
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    invoke-static {p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-get1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->isInteractive(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1062
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    invoke-static {p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-get1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1063
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1065
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItemKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1066
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItemFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1075
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1076
    :cond_4
    iget-object v5, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/movablepanes/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    .line 1077
    iget-object v6, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/movablepanes/paneview/PaneLocation;

    iget-object v6, v6, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    or-int/2addr v6, v7

    .line 1076
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 1082
    :cond_5
    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 1016
    .end local v2    # "view":Landroid/view/View;
    :cond_6
    return-void

    .line 1033
    .local v3, "viewPreviouslyAttached":Z
    :cond_7
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    iget-object v6, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    invoke-interface {v5, v0, v6, p0}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1034
    .restart local v2    # "view":Landroid/view/View;
    const/4 v1, 0x1

    .line 1035
    invoke-static {v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->isViewAttachedToWindow(Landroid/view/View;)Z

    move-result v3

    .line 1037
    .local v3, "viewPreviouslyAttached":Z
    iget-object v5, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eq v2, v5, :cond_8

    .line 1043
    invoke-direct {p0, p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->removeItemView(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V

    .line 1044
    invoke-direct {p0, p1, v2, p3}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->addItemView(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;Landroid/view/View;Z)V

    .line 1047
    :cond_8
    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->viewValid:Z

    goto :goto_0

    .line 1068
    .end local v3    # "viewPreviouslyAttached":Z
    :cond_9
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1069
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1070
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_1
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getAdapter()Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    return-object v0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 290
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .line 291
    .local v0, "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-get1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 292
    iget-object v2, v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    return-object v2

    .line 295
    .end local v0    # "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 307
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .line 308
    .local v0, "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v2, v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 309
    invoke-static {v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-get1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v2

    return v2

    .line 312
    .end local v0    # "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    return-object v0

    .line 330
    :cond_0
    return-object v1
.end method

.method public getVelocityThreshold()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mVelocityThreshold:I

    return v0
.end method

.method protected interactionEnd()V
    .locals 0

    .prologue
    .line 828
    return-void
.end method

.method public isChangingPaneIndex()Z
    .locals 1

    .prologue
    .line 932
    const/4 v0, 0x0

    return v0
.end method

.method public isInteracting()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mIsInteracting:Z

    return v0
.end method

.method public isScrolledToEnd()Z
    .locals 2

    .prologue
    .line 414
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/movablepanes/util/Dynamics;->getPosition()F

    move-result v0

    .line 415
    .local v0, "currentPosition":F
    iget v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mMaxScroll:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 416
    const/4 v1, 0x1

    return v1

    .line 418
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isTouchLocked()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mTouchIsLocked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1276
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 1277
    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1278
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1275
    return-void
.end method

.method protected onDataChanged(Z)V
    .locals 0
    .param p1, "enableAnimations"    # Z

    .prologue
    .line 853
    iput-boolean p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mEnableAnimations:Z

    .line 854
    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->requestLayout()V

    .line 852
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1283
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 1284
    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1285
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1282
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mTouchIsLocked:Z

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/movablepanes/paneview/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/movablepanes/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->isDragging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mTouchIsLocked:Z

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v7, 0x0

    .line 545
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 554
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 555
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems2:Ljava/util/HashMap;

    .line 556
    .local v2, "newItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;>;"
    iget-object v3, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    .line 563
    .local v3, "oldItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;>;"
    :goto_0
    invoke-direct {p0, v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->clearItems(Ljava/util/HashMap;)V

    .line 565
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    if-eqz v5, :cond_0

    .line 568
    iget-boolean v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mEnableAnimations:Z

    invoke-direct {p0, v2, v3, v5}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getAdapterItems(Ljava/util/HashMap;Ljava/util/HashMap;Z)V

    .line 573
    :cond_0
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 574
    iget-boolean v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mEnableAnimations:Z

    invoke-direct {p0, v3, v5}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->handleDeletedItems(Ljava/util/HashMap;Z)V

    .line 578
    :cond_1
    iput-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    .line 580
    invoke-static {}, Lcom/sonyericsson/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 581
    .local v4, "viewRect":Landroid/graphics/Rect;
    sub-int v5, p4, p2

    sub-int v6, p5, p3

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 583
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .line 584
    .local v0, "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->layoutItem(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;F)V

    goto :goto_1

    .line 558
    .end local v0    # "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    .end local v1    # "item$iterator":Ljava/util/Iterator;
    .end local v2    # "newItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;>;"
    .end local v3    # "oldItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;>;"
    .end local v4    # "viewRect":Landroid/graphics/Rect;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    .line 559
    .restart local v2    # "newItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;>;"
    iget-object v3, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems2:Ljava/util/HashMap;

    .restart local v3    # "oldItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;>;"
    goto :goto_0

    .line 587
    .restart local v1    # "item$iterator":Ljava/util/Iterator;
    .restart local v4    # "viewRect":Landroid/graphics/Rect;
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->updateMaxScroll()V

    .line 589
    invoke-static {v4}, Lcom/sonyericsson/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 544
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 532
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    .line 533
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .line 534
    .local v0, "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v2, v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 537
    iget-object v2, v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget-object v3, v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/movablepanes/paneview/PaneLocation;

    iget-object v3, v3, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    or-int/2addr v3, v5

    .line 538
    iget-object v4, v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/movablepanes/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    or-int/2addr v4, v5

    .line 537
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 531
    .end local v0    # "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mTouchIsLocked:Z

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/movablepanes/paneview/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 502
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected resetPressStatus(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V
    .locals 4
    .param p1, "item"    # Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .prologue
    .line 1248
    if-eqz p1, :cond_0

    .line 1249
    iget-object v0, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 1251
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1252
    new-instance v1, Lcom/sonyericsson/movablepanes/paneview/PaneView$8;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView$8;-><init>(Lcom/sonyericsson/movablepanes/paneview/PaneView;Landroid/view/View;)V

    .line 1258
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    .line 1252
    invoke-virtual {p0, v1, v2, v3}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1247
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public scroll(F)V
    .locals 6
    .param p1, "deltaPosition"    # F

    .prologue
    const/4 v3, 0x0

    .line 399
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/movablepanes/util/Dynamics;->getPosition()F

    move-result v0

    .line 400
    .local v0, "currentPosition":F
    add-float v1, v0, p1

    .line 402
    .local v1, "newPosition":F
    cmpg-float v2, v1, v3

    if-gez v2, :cond_1

    .line 403
    const/4 v1, 0x0

    .line 408
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/sonyericsson/movablepanes/util/Dynamics;->setState(FFJ)V

    .line 409
    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->stopDynamicsRunnable()V

    .line 410
    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->updatePanePosition()V

    .line 398
    return-void

    .line 404
    :cond_1
    iget v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mMaxScroll:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 405
    iget v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mMaxScroll:F

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 334
    check-cast p1, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    .end local p1    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setAdapter(Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;)V

    return-void
.end method

.method public setAdapter(Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    .prologue
    .line 335
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mDataSetObserver:Lcom/sonyericsson/movablepanes/paneview/PaneView$PaneDataSetObserver;

    invoke-interface {v0, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 343
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    .line 344
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mDataSetObserver:Lcom/sonyericsson/movablepanes/paneview/PaneView$PaneDataSetObserver;

    invoke-interface {v0, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 348
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->onDataChanged(Z)V

    .line 334
    return-void

    .line 336
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no support for unstable Ids"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFlingStateListener(Lcom/sonyericsson/movablepanes/paneview/PaneView$FlingStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/movablepanes/paneview/PaneView$FlingStateListener;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mFlingStateListener:Lcom/sonyericsson/movablepanes/paneview/PaneView$FlingStateListener;

    .line 600
    return-void
.end method

.method public setOnItemActionListener(Lcom/sonyericsson/movablepanes/paneview/PaneView$OnItemActionListener;)V
    .locals 0
    .param p1, "actionListener"    # Lcom/sonyericsson/movablepanes/paneview/PaneView$OnItemActionListener;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItemActionListener:Lcom/sonyericsson/movablepanes/paneview/PaneView$OnItemActionListener;

    .line 388
    return-void
.end method

.method protected setPressStatus(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V
    .locals 3
    .param p1, "item"    # Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .prologue
    .line 1264
    if-eqz p1, :cond_0

    .line 1265
    iget-object v0, p1, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    .line 1266
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    invoke-static {p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-get1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->isInteractive(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1263
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1267
    .restart local v0    # "view":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    invoke-static {p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-get1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v1

    .line 1266
    if-eqz v1, :cond_0

    .line 1268
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1269
    invoke-direct {p0, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->scaleDown(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setRejectPaddingTouch(Z)V
    .locals 0
    .param p1, "rejectPaddingTouch"    # Z

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mRejectPaddingTouch:Z

    .line 375
    return-void
.end method

.method public setScrollDynamics(Lcom/sonyericsson/movablepanes/util/Dynamics;)V
    .locals 4
    .param p1, "dynamics"    # Lcom/sonyericsson/movablepanes/util/Dynamics;

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "dynamics cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 361
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/movablepanes/util/Dynamics;->getPosition()F

    move-result v0

    .line 362
    .local v0, "currentPosition":F
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/movablepanes/util/Dynamics;->getVelocity()F

    move-result v1

    .line 364
    .local v1, "currentVelocity":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sonyericsson/movablepanes/util/Dynamics;->setState(FFJ)V

    .line 365
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

    .line 367
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/movablepanes/paneview/GestureDetector;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->setEnableVerticalDrag(Z)V

    .line 356
    return-void
.end method

.method public setScrollPosition(F)V
    .locals 4
    .param p1, "position"    # F

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonyericsson/movablepanes/util/Dynamics;->setState(FFJ)V

    .line 394
    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->stopDynamicsRunnable()V

    .line 395
    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->updatePanePosition()V

    .line 392
    return-void
.end method

.method protected setSelectedItem(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;Z)V
    .locals 1
    .param p1, "selectedItem"    # Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    .param p2, "isPressing"    # Z

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    if-ne v0, p1, :cond_0

    .line 1236
    return-void

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->resetPressStatus(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V

    .line 1241
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .line 1242
    if-eqz p2, :cond_1

    .line 1243
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setPressStatus(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V

    .line 1234
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 282
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .line 283
    .local v0, "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-get1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->isItemEnabled(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    invoke-direct {p0, v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setSelectedItem(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V

    goto :goto_0

    .line 281
    .end local v0    # "item":Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
    :cond_1
    return-void
.end method

.method public setTouchLocked(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 428
    iput-boolean p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mTouchIsLocked:Z

    .line 429
    if-eqz p1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/movablepanes/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->cancelTouch()V

    .line 431
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mGestureDetector:Lcom/sonyericsson/movablepanes/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->cancelLongPress()V

    .line 427
    :cond_0
    return-void
.end method

.method public setVelocityThreshold(I)V
    .locals 0
    .param p1, "velocityThreshold"    # I

    .prologue
    .line 527
    iput p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mVelocityThreshold:I

    .line 526
    return-void
.end method

.method protected updatePanePosition()V
    .locals 2

    .prologue
    .line 836
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonyericsson/movablepanes/util/Dynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/movablepanes/util/Dynamics;->getPosition()F

    move-result v0

    .line 838
    .local v0, "pos":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 839
    const/4 v0, 0x0

    .line 844
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setScrollY(I)V

    .line 835
    return-void

    .line 840
    :cond_1
    iget v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mMaxScroll:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 841
    iget v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mMaxScroll:F

    goto :goto_0
.end method
