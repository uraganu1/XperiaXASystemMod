.class public Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;
.super Landroid/widget/HorizontalScrollView;
.source "StickerTabView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$TabHead;,
        Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$OnTabChangedListener;,
        Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$1;
    }
.end annotation


# static fields
.field private static final sGrayscaleFilter:Landroid/graphics/ColorMatrixColorFilter;


# instance fields
.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mInnerLayout:Landroid/widget/LinearLayout;

.field private mNumTabIconsOnScreen:I

.field private mOnTabChangedListener:Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$OnTabChangedListener;

.field private mScrollToTabOnLayoutReady:I

.field private mSelectedIdx:I

.field private final mTabIconSize:I

.field private final mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$TabHead;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;)Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$OnTabChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mOnTabChangedListener:Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$OnTabChangedListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mTabs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->selectTab(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x42480000    # 50.0f

    const/4 v3, 0x0

    const v2, 0x3ea8f5c3    # 0.33f

    .line 47
    const/16 v1, 0x14

    new-array v0, v1, [F

    .line 48
    const/4 v1, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v4, v0, v1

    .line 49
    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    const/16 v1, 0x9

    aput v4, v0, v1

    .line 50
    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    aput v4, v0, v1

    .line 51
    const/16 v1, 0xf

    aput v3, v0, v1

    const/16 v1, 0x10

    aput v3, v0, v1

    const/16 v1, 0x11

    aput v3, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x12

    aput v1, v0, v2

    const/16 v1, 0x13

    aput v3, v0, v1

    .line 53
    .local v0, "colorMatrix":[F
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    sput-object v1, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->sGrayscaleFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mTabs:Ljava/util/List;

    .line 67
    iput v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mScrollToTabOnLayoutReady:I

    .line 69
    new-instance v0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$1;-><init>(Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    const v1, 0x7f0c00ad

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mTabIconSize:I

    .line 87
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mInnerLayout:Landroid/widget/LinearLayout;

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mInnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 82
    return-void
.end method

.method private centerSelectedTab()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 176
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mTabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mNumTabIconsOnScreen:I

    if-le v2, v3, :cond_1

    .line 177
    iget v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mSelectedIdx:I

    iget v3, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mNumTabIconsOnScreen:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 178
    .local v0, "firstVisibleIconIdx":I
    if-gez v0, :cond_2

    .line 179
    const/4 v0, 0x0

    .line 183
    :cond_0
    :goto_0
    if-lez v0, :cond_4

    .line 184
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mTabs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$TabHead;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$TabHead;->container:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v1, v2

    .line 185
    .local v1, "targetX":I
    if-lez v1, :cond_3

    .line 186
    invoke-virtual {p0, v1, v4}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->smoothScrollTo(II)V

    .line 175
    .end local v0    # "firstVisibleIconIdx":I
    .end local v1    # "targetX":I
    :cond_1
    :goto_1
    return-void

    .line 180
    .restart local v0    # "firstVisibleIconIdx":I
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mTabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mNumTabIconsOnScreen:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mTabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mNumTabIconsOnScreen:I

    sub-int v0, v2, v3

    goto :goto_0

    .line 189
    .restart local v1    # "targetX":I
    :cond_3
    iput v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mScrollToTabOnLayoutReady:I

    goto :goto_1

    .line 192
    .end local v1    # "targetX":I
    :cond_4
    invoke-virtual {p0, v4, v4}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->smoothScrollTo(II)V

    goto :goto_1
.end method

.method private selectTab(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 154
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 155
    :cond_0
    return-void

    .line 154
    :cond_1
    iget v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mSelectedIdx:I

    if-eq p1, v0, :cond_0

    .line 159
    iget v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mSelectedIdx:I

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->setTabHighlight(IZ)V

    .line 161
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->setTabHighlight(IZ)V

    .line 162
    iput p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mSelectedIdx:I

    .line 163
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->centerSelectedTab()V

    .line 153
    return-void
.end method

.method private setTabHighlight(IZ)V
    .locals 5
    .param p1, "tabIdx"    # I
    .param p2, "selected"    # Z

    .prologue
    .line 167
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mTabs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$TabHead;

    .line 168
    .local v0, "tab":Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$TabHead;
    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$TabHead;->icon:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 169
    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$TabHead;->bottomBar:Landroid/view/View;

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 170
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 171
    .local v1, "tintColor":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010435

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 172
    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$TabHead;->bottomBar:Landroid/view/View;

    iget v3, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 166
    return-void

    .line 168
    .end local v1    # "tintColor":Landroid/util/TypedValue;
    :cond_0
    sget-object v2, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->sGrayscaleFilter:Landroid/graphics/ColorMatrixColorFilter;

    goto :goto_0

    .line 169
    :cond_1
    const/4 v2, 0x4

    goto :goto_1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 200
    if-nez p1, :cond_0

    iget v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mNumTabIconsOnScreen:I

    if-nez v2, :cond_1

    .line 201
    :cond_0
    sub-int v1, p4, p2

    .line 202
    .local v1, "viewWidth":I
    iget v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mTabIconSize:I

    div-int v2, v1, v2

    iput v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mNumTabIconsOnScreen:I

    .line 205
    .end local v1    # "viewWidth":I
    :cond_1
    iget v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mScrollToTabOnLayoutReady:I

    if-lez v2, :cond_2

    .line 206
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mTabs:Ljava/util/List;

    iget v3, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mScrollToTabOnLayoutReady:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$TabHead;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$TabHead;->container:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 207
    .local v0, "targetX":I
    if-lez v0, :cond_2

    .line 208
    invoke-virtual {p0, v0, v4}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->smoothScrollTo(II)V

    .line 209
    iput v4, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mScrollToTabOnLayoutReady:I

    .line 198
    .end local v0    # "targetX":I
    :cond_2
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 224
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "posOffset"    # F
    .param p3, "posOffsetPixels"    # I

    .prologue
    .line 214
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 218
    iget v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mSelectedIdx:I

    if-eq v0, p1, :cond_0

    .line 219
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->selectTab(I)V

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mOnTabChangedListener:Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$OnTabChangedListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$OnTabChangedListener;->onTabChanged(I)V

    .line 217
    :cond_0
    return-void
.end method

.method public reloadTabs(Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;Ljava/lang/String;)V
    .locals 11
    .param p1, "tabMgr"    # Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;
    .param p2, "preselectedPackId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 102
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mTabs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 103
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->removeAllViews()V

    .line 104
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mInnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 105
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 106
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 107
    return-void

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->getTabCount()I

    move-result v6

    .line 111
    .local v6, "tabCount":I
    if-gtz v6, :cond_1

    .line 112
    return-void

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c00ad

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 116
    .local v3, "iconSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_3

    .line 117
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 118
    const v9, 0x7f03006e

    .line 117
    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 119
    .local v7, "v":Landroid/view/View;
    if-nez v7, :cond_2

    .line 116
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mInnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7, v3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 127
    const v8, 0x7f0d012b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 128
    .local v4, "iconView":Landroid/widget/ImageView;
    sget-object v8, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->sGrayscaleFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 129
    invoke-virtual {p1, v2, v4}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->renderTabIcon(ILandroid/widget/ImageView;)V

    .line 130
    const v8, 0x7f0d012c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "bar":Landroid/view/View;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mTabs:Ljava/util/List;

    new-instance v9, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$TabHead;

    invoke-direct {v9, v7, v4, v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$TabHead;-><init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    .end local v0    # "bar":Landroid/view/View;
    .end local v4    # "iconView":Landroid/widget/ImageView;
    .end local v7    # "v":Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mInnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v8}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->addView(Landroid/view/View;)V

    .line 136
    const/4 v5, 0x0

    .line 137
    .local v5, "preselectedPackTabIdx":I
    if-eqz p2, :cond_4

    .line 138
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_4

    .line 139
    invoke-virtual {p1, v2}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;->getPackId(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 140
    move v5, v2

    .line 145
    :cond_4
    invoke-direct {p0, v5}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->selectTab(I)V

    .line 146
    iget v8, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mSelectedIdx:I

    if-ne v5, v8, :cond_5

    .line 148
    const/4 v8, 0x1

    invoke-direct {p0, v5, v8}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->setTabHighlight(IZ)V

    .line 150
    :cond_5
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mOnTabChangedListener:Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$OnTabChangedListener;

    invoke-interface {v8, v5}, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$OnTabChangedListener;->onTabChanged(I)V

    .line 101
    return-void

    .line 138
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public setOnTabChangedListener(Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$OnTabChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$OnTabChangedListener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;->mOnTabChangedListener:Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$OnTabChangedListener;

    .line 91
    return-void
.end method
