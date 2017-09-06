.class public Lcom/sonymobile/systemui/qs/DragDropLayout;
.super Landroid/widget/FrameLayout;
.source "DragDropLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;,
        Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;,
        Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;,
        Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;
    }
.end annotation


# static fields
.field private static DEFAULT_DURATION:J


# instance fields
.field private mCloseButton:Landroid/widget/Button;

.field private mColumnCount:I

.field private mGridUnusedTiles:Landroid/widget/LinearLayout;

.field private mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

.field private mHScrollView:Landroid/widget/HorizontalScrollView;

.field private mHoverView:Landroid/view/View;

.field private mIsAnimating:Z

.field mResources:Landroid/content/res/Resources;

.field private mTileHeight:I

.field private mTileWidth:I

.field private mUnusedEmptyView:Landroid/view/View;

.field private mUnusedLT:Landroid/animation/LayoutTransition;

.field private mUnusedTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mUsedEmptyView:Landroid/view/View;

.field private mUsedLT:Landroid/animation/LayoutTransition;

.field private mUsedTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVScrollView:Landroid/widget/ScrollView;

.field private mX:F

.field private mY:F


# direct methods
.method static synthetic -get0(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/systemui/qs/DragDropLayout;)Lcom/sonymobile/systemui/qs/QSEditPanel;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    return-object v0
.end method

.method static synthetic -get10(Lcom/sonymobile/systemui/qs/DragDropLayout;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedTiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get11(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mVScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic -get12(Lcom/sonymobile/systemui/qs/DragDropLayout;)F
    .locals 1

    iget v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    return v0
.end method

.method static synthetic -get13(Lcom/sonymobile/systemui/qs/DragDropLayout;)F
    .locals 1

    iget v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    return v0
.end method

.method static synthetic -get2(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonymobile/systemui/qs/DragDropLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mIsAnimating:Z

    return v0
.end method

.method static synthetic -get5(Lcom/sonymobile/systemui/qs/DragDropLayout;)I
    .locals 1

    iget v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileHeight:I

    return v0
.end method

.method static synthetic -get6(Lcom/sonymobile/systemui/qs/DragDropLayout;)I
    .locals 1

    iget v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I

    return v0
.end method

.method static synthetic -get7(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sonymobile/systemui/qs/DragDropLayout;)Landroid/animation/LayoutTransition;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedLT:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonymobile/systemui/qs/DragDropLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mIsAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/systemui/qs/DragDropLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->enableLayoutTransitions()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/ViewGroup;I)V
    .locals 0
    .param p1, "targetViewGroup"    # Landroid/view/ViewGroup;
    .param p2, "index"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/systemui/qs/DragDropLayout;->finishDrag(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonymobile/systemui/qs/DragDropLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->postRemoveDropRegions()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonymobile/systemui/qs/DragDropLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->removeDropRegions()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->reportStaminaEvent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->setTileGridParams(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->setTileLinearParams(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->updateDropRegion(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/sonymobile/systemui/qs/DragDropLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->updateTilesIndices()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-wide/16 v0, 0xc8

    sput-wide v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->DEFAULT_DURATION:J

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mIsAnimating:Z

    .line 88
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mResources:Landroid/content/res/Resources;

    .line 89
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileHeight:I

    .line 90
    iget v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileHeight:I

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I

    .line 91
    const/4 v0, 0x5

    iput v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mColumnCount:I

    .line 92
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedLT:Landroid/animation/LayoutTransition;

    .line 93
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedLT:Landroid/animation/LayoutTransition;

    .line 86
    return-void
.end method

.method private ShadowGrabSpot(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 652
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 653
    .local v0, "parent":Landroid/view/ViewGroup;
    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    .line 654
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    .line 655
    .local v1, "qsid":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
    invoke-virtual {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getStatus()Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNUSED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    if-ne v2, v3, :cond_4

    .line 656
    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    const v3, 0x7f10012e

    invoke-virtual {p0, v3}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    .line 657
    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    .line 658
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    .line 659
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mVScrollView:Landroid/widget/ScrollView;

    if-eqz v2, :cond_1

    .line 660
    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    const v3, 0x7f100134

    invoke-virtual {p0, v3}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    .line 661
    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mVScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    .line 670
    :cond_1
    :goto_0
    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    iput v5, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    .line 671
    :cond_2
    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_3

    iput v5, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    .line 651
    :cond_3
    return-void

    .line 664
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mVScrollView:Landroid/widget/ScrollView;

    if-eqz v2, :cond_5

    .line 665
    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x7f100136

    invoke-virtual {p0, v4}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    goto :goto_0

    .line 667
    :cond_5
    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    goto :goto_0
.end method

.method private adjustLayout()V
    .locals 19

    .prologue
    .line 197
    const v0, 0x3

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileHeight:I

    const v18, 0x10

    sub-int v0,v0,v18

    move/from16 v18, v0

    mul-int v9, v17, v18

    .line 198
    .local v9, "layoutHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mColumnCount:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I

    move/from16 v18, v0

    mul-int v10, v17, v18

    .line 199
    .local v10, "layoutWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    .line 200
    const v18, 0x7f0a0108

    .line 199
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 201
    .local v12, "narrowHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    .line 202
    const/16 v18, 0x2

    .line 201
    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/4 v7, 0x1

    .line 203
    .local v7, "isLandscape":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f0c001d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 205
    .local v8, "keepPortrait":Z
    const v17, 0x7f100130

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    .line 207
    const v17, 0x7f10012f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHScrollView:Landroid/widget/HorizontalScrollView;

    .line 208
    const v17, 0x7f100135

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ScrollView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/systemui/qs/DragDropLayout;->mVScrollView:Landroid/widget/ScrollView;

    .line 210
    const v17, 0x7f100132

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mColumnCount:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sonymobile/systemui/qs/QSEditPanel;->setMaxColumnCount(I)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    .line 215
    .local v16, "usedParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v16

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 216
    move-object/from16 v0, v16

    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 218
    const v17, 0x7f10012e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 219
    .local v13, "textViewHint":Landroid/widget/TextView;
    const v17, 0x7f100131

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 221
    .local v14, "textViewTitle":Landroid/widget/TextView;
    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 223
    .local v15, "titleParams":Landroid/widget/FrameLayout$LayoutParams;
    const v17, 0x7f100133

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 224
    .local v2, "button":Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 226
    .local v3, "buttonParams":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v7, :cond_0

    if-eqz v8, :cond_2

    .line 247
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 249
    .local v4, "hScrollParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 250
    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileHeight:I

    move/from16 v17, v0

    mul-int/lit8 v18, v12, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 252
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileHeight:I

    move/from16 v17, v0

    add-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 253
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I

    move/from16 v17, v0

    add-int v17, v17, v9

    add-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    .end local v4    # "hScrollParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    return-void

    .line 201
    .end local v2    # "button":Landroid/widget/Button;
    .end local v3    # "buttonParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "isLandscape":Z
    .end local v8    # "keepPortrait":Z
    .end local v13    # "textViewHint":Landroid/widget/TextView;
    .end local v14    # "textViewTitle":Landroid/widget/TextView;
    .end local v15    # "titleParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "usedParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "isLandscape":Z
    goto/16 :goto_0

    .line 229
    .restart local v2    # "button":Landroid/widget/Button;
    .restart local v3    # "buttonParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v8    # "keepPortrait":Z
    .restart local v13    # "textViewHint":Landroid/widget/TextView;
    .restart local v14    # "textViewTitle":Landroid/widget/TextView;
    .restart local v15    # "titleParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v16    # "usedParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mVScrollView:Landroid/widget/ScrollView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ScrollView;->setMinimumWidth(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    div-int/lit8 v18, v12, 0x2

    add-int v18, v18, v9

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 232
    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v9

    move/from16 v0, v17

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 234
    const v17, 0x7f100134

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 235
    .local v11, "linearHolder":Landroid/widget/LinearLayout;
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 236
    .local v6, "holderParams":Landroid/widget/FrameLayout$LayoutParams;
    add-int v17, v9, v12

    div-int/lit8 v18, v12, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 237
    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    const v17, 0x7f100136

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 240
    .local v5, "holder":Landroid/widget/FrameLayout;
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "holderParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 241
    .restart local v6    # "holderParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 242
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    move-object/from16 v0, v16

    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_1
.end method

.method private disableLayoutTransitions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 675
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 676
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 674
    return-void
.end method

.method private enableLayoutTransitions()V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedLT:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 681
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedLT:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 679
    return-void
.end method

.method private finishDrag(Landroid/view/ViewGroup;I)V
    .locals 4
    .param p1, "targetViewGroup"    # Landroid/view/ViewGroup;
    .param p2, "index"    # I

    .prologue
    .line 569
    new-instance v0, Lcom/sonymobile/systemui/qs/DragDropLayout$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/systemui/qs/DragDropLayout$4;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/view/ViewGroup;I)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->post(Ljava/lang/Runnable;)Z

    .line 596
    new-instance v0, Lcom/sonymobile/systemui/qs/DragDropLayout$5;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$5;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    .line 601
    const-wide/16 v2, 0x1f4

    .line 596
    invoke-virtual {p0, v0, v2, v3}, Lcom/sonymobile/systemui/qs/DragDropLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 568
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedTiles:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedTiles:Ljava/util/ArrayList;

    .line 109
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedLT:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 110
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedLT:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v4}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 111
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedLT:Landroid/animation/LayoutTransition;

    sget-wide v2, Lcom/sonymobile/systemui/qs/DragDropLayout;->DEFAULT_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 113
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedLT:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 114
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedLT:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v4}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 115
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedLT:Landroid/animation/LayoutTransition;

    sget-wide v2, Lcom/sonymobile/systemui/qs/DragDropLayout;->DEFAULT_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 117
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedLT:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 118
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedLT:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 120
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;

    new-instance v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    invoke-direct {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->setTileGridParams(Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;

    new-instance v1, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 124
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 126
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;

    new-instance v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    invoke-direct {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->setTileLinearParams(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;

    new-instance v1, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$EmptyDragListener;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 130
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 132
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    new-instance v1, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 133
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 134
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mVScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mVScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$ViewGroupDragListener;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 141
    :cond_1
    const v0, 0x7f100133

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mCloseButton:Landroid/widget/Button;

    .line 142
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method

.method private loadQSElements()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, "unused":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/QSTileView;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/QSTileView;>;"
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->getEditTiles(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 153
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "view$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSTileView;

    .line 154
    .local v2, "view":Lcom/android/systemui/qs/QSTileView;
    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {v2, p0}, Lcom/android/systemui/qs/QSTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 158
    new-instance v4, Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;

    invoke-direct {v4, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/QSTileView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 159
    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/QSTileView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 160
    invoke-direct {p0, v2}, Lcom/sonymobile/systemui/qs/DragDropLayout;->setTileGridParams(Landroid/view/View;)V

    .line 161
    iget-object v4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    invoke-virtual {v4, v2}, Lcom/sonymobile/systemui/qs/QSEditPanel;->addView(Landroid/view/View;)V

    .line 162
    iget-object v4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedTiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    .end local v2    # "view":Lcom/android/systemui/qs/QSTileView;
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSTileView;

    .line 166
    .restart local v2    # "view":Lcom/android/systemui/qs/QSTileView;
    if-eqz v2, :cond_2

    .line 169
    invoke-virtual {v2, p0}, Lcom/android/systemui/qs/QSTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 170
    new-instance v4, Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;

    invoke-direct {v4, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$TileDragListener;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/QSTileView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 171
    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/QSTileView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 172
    invoke-direct {p0, v2}, Lcom/sonymobile/systemui/qs/DragDropLayout;->setTileLinearParams(Landroid/view/View;)V

    .line 173
    iget-object v4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    iget-object v4, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedTiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    .end local v2    # "view":Lcom/android/systemui/qs/QSTileView;
    :cond_3
    return-void
.end method

.method private postRemoveDropRegions()V
    .locals 1

    .prologue
    .line 625
    new-instance v0, Lcom/sonymobile/systemui/qs/DragDropLayout$7;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$7;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->post(Ljava/lang/Runnable;)Z

    .line 636
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->updateTilesIndices()V

    .line 637
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/qs/QSEditPanel;->requestLayout()V

    .line 624
    return-void
.end method

.method private removeDropRegions()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/qs/QSEditPanel;->removeView(Landroid/view/View;)V

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 647
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->updateTilesIndices()V

    .line 648
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/qs/QSEditPanel;->requestLayout()V

    .line 640
    return-void
.end method

.method private reportStaminaEvent(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 685
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    .line 686
    .local v1, "qsid":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 687
    invoke-virtual {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "stamina"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 688
    invoke-virtual {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getStatus()Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNUSED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    if-ne v2, v3, :cond_0

    .line 690
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 691
    .local v0, "intentGa":Landroid/content/Intent;
    const-string/jumbo v2, "com.sonymobile.SUPER_STAMINA_GA_QS_STAMINA_ADD"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 684
    .end local v0    # "intentGa":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private setTileGridParams(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v2, -0x80000000

    .line 379
    if-nez p1, :cond_0

    .line 380
    return-void

    .line 383
    :cond_0
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 384
    .local v0, "params":Landroid/widget/GridLayout$LayoutParams;
    invoke-static {v2}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 385
    invoke-static {v2}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 386
    iget v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I

    iput v1, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 387
    iget v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileHeight:I

    iput v1, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 388
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    return-void
.end method

.method private setTileLinearParams(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 392
    if-nez p1, :cond_0

    .line 393
    return-void

    .line 396
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileWidth:I

    iget v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mTileHeight:I

    add-int/lit16 v2, v2, 0x10

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 397
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    return-void
.end method

.method private updateDropRegion(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 605
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    .line 606
    .local v0, "qsid":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
    new-instance v1, Lcom/sonymobile/systemui/qs/DragDropLayout$6;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/systemui/qs/DragDropLayout$6;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->post(Ljava/lang/Runnable;)Z

    .line 604
    return-void
.end method

.method private updateTilesIndices()V
    .locals 4

    .prologue
    .line 360
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedTiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    invoke-virtual {v2}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    invoke-virtual {v2, v0}, Lcom/sonymobile/systemui/qs/QSEditPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 363
    .local v1, "qsTileView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    invoke-virtual {v2, v0}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->setIndex(I)V

    .line 364
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    .line 365
    sget-object v3, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->USED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    .line 364
    invoke-virtual {v2, v3}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->setStatus(Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;)V

    .line 366
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedTiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    .end local v1    # "qsTileView":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedTiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 369
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 370
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 371
    .restart local v1    # "qsTileView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    invoke-virtual {v2, v0}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->setIndex(I)V

    .line 372
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    .line 373
    sget-object v3, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNUSED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    .line 372
    invoke-virtual {v2, v3}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->setStatus(Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;)V

    .line 374
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUnusedTiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 358
    .end local v1    # "qsTileView":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v5, 0x1

    .line 541
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 544
    .local v0, "action":I
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 545
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->updateTilesIndices()V

    .line 547
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    .line 548
    .local v1, "qsid":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
    invoke-virtual {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getStatus()Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    move-result-object v2

    .line 549
    .local v2, "status":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;
    sget-object v3, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->USED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    if-ne v2, v3, :cond_0

    .line 550
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getIndex()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/sonymobile/systemui/qs/DragDropLayout;->finishDrag(Landroid/view/ViewGroup;I)V

    .line 554
    :goto_0
    return v5

    .line 552
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUnusedTiles:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getIndex()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/sonymobile/systemui/qs/DragDropLayout;->finishDrag(Landroid/view/ViewGroup;I)V

    goto :goto_0

    .line 555
    .end local v1    # "qsid":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
    .end local v2    # "status":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;
    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 561
    :cond_2
    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 565
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    return v3

    .line 556
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 559
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mGridUsedTiles:Lcom/sonymobile/systemui/qs/QSEditPanel;

    const v4, 0x7fffffff

    invoke-direct {p0, v3, v4}, Lcom/sonymobile/systemui/qs/DragDropLayout;->finishDrag(Landroid/view/ViewGroup;I)V

    .line 560
    return v5

    .line 562
    :cond_5
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->postRemoveDropRegions()V

    .line 563
    return v5
.end method

.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "layoutTransition"    # Landroid/animation/LayoutTransition;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mIsAnimating:Z

    .line 341
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 180
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 183
    new-instance v0, Lcom/sonymobile/systemui/qs/DragDropLayout$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/qs/DragDropLayout$1;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;)V

    .line 193
    const-wide/16 v2, 0x3e8

    .line 183
    invoke-virtual {p0, v0, v2, v3}, Lcom/sonymobile/systemui/qs/DragDropLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 263
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mCloseButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 265
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 266
    const-string/jumbo v2, "statusbar"

    .line 265
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 267
    .local v0, "statusBar":Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expandSettingsPanel()V

    .line 262
    .end local v0    # "statusBar":Landroid/app/StatusBarManager;
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 99
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->adjustLayout()V

    .line 100
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->init()V

    .line 101
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->loadQSElements()V

    .line 97
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mX:F

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mY:F

    .line 351
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    .line 278
    .local v2, "qsid":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->getMaxTiles(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mUsedTiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 279
    invoke-virtual {v2}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getStatus()Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNUSED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    if-ne v4, v5, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09006c

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 282
    .local v3, "toast":Landroid/widget/Toast;
    const/16 v4, 0x31

    invoke-virtual {v3, v4, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 283
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 284
    return v7

    .line 287
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->disableLayoutTransitions()V

    .line 288
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->postRemoveDropRegions()V

    .line 289
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mHoverView:Landroid/view/View;

    .line 290
    invoke-virtual {v2}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getIndex()I

    move-result v0

    .line 291
    .local v0, "index":I
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/DragDropLayout;->ShadowGrabSpot(Landroid/view/View;)V

    .line 292
    new-instance v1, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/DragDropLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, p0, v4, p1}, Lcom/sonymobile/systemui/qs/DragDropLayout$DragShadow;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;Landroid/content/Context;Landroid/view/View;)V

    .line 293
    .local v1, "myShadow":Landroid/view/View$DragShadowBuilder;
    new-instance v4, Lcom/sonymobile/systemui/qs/DragDropLayout$2;

    invoke-direct {v4, p0, v2, v0, p1}, Lcom/sonymobile/systemui/qs/DragDropLayout$2;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;ILandroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/sonymobile/systemui/qs/DragDropLayout;->post(Ljava/lang/Runnable;)Z

    .line 312
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1, p1, v6}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 318
    new-instance v4, Lcom/sonymobile/systemui/qs/DragDropLayout$3;

    invoke-direct {v4, p0, v2}, Lcom/sonymobile/systemui/qs/DragDropLayout$3;-><init>(Lcom/sonymobile/systemui/qs/DragDropLayout;Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;)V

    invoke-virtual {p0, v4}, Lcom/sonymobile/systemui/qs/DragDropLayout;->post(Ljava/lang/Runnable;)Z

    .line 330
    return v7
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "layoutTransition"    # Landroid/animation/LayoutTransition;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/systemui/qs/DragDropLayout;->mIsAnimating:Z

    .line 335
    return-void
.end method
