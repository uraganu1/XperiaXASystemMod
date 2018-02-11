.class public Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$TabColorizer;,
        Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;,
        Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$TabClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPaddingDips:I

.field private final mTabStrip:Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

.field private mTabViewLayoutId:I

.field private mTabViewTextViewId:I

.field private mTitleOffset:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mTabStrip:Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;II)V
    .locals 0
    .param p1, "tabIndex"    # I
    .param p2, "positionOffset"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->scrollToTab(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mContext:Landroid/content/Context;

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->setFillViewport(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mPaddingDips:I

    .line 82
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mTitleOffset:I

    .line 84
    new-instance v0, Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    invoke-direct {v0, p1}, Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mTabStrip:Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    .line 85
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mTabStrip:Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->addView(Landroid/view/View;II)V

    .line 74
    return-void
.end method

.method private populateTabStrip()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 117
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 118
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    new-instance v2, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$TabClickListener;

    invoke-direct {v2, p0, v6}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$TabClickListener;-><init>(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$TabClickListener;)V

    .line 120
    .local v2, "tabClickListener":Landroid/view/View$OnClickListener;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 121
    const/4 v4, 0x0

    .line 122
    .local v4, "tabView":Landroid/view/View;
    const/4 v3, 0x0

    .line 124
    .local v3, "tabTitleView":Landroid/widget/TextView;
    iget v5, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mTabViewLayoutId:I

    if-eqz v5, :cond_0

    .line 125
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget v6, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mTabViewLayoutId:I

    iget-object v7, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mTabStrip:Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 127
    .local v4, "tabView":Landroid/view/View;
    iget v5, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mTabViewTextViewId:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "tabTitleView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 130
    .end local v4    # "tabView":Landroid/view/View;
    :cond_0
    if-nez v4, :cond_1

    .line 131
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v4

    .line 134
    :cond_1
    if-nez v3, :cond_2

    const-class v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    .line 135
    check-cast v3, Landroid/widget/TextView;

    .line 138
    :cond_2
    if-eqz v3, :cond_3

    .line 139
    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    if-nez v1, :cond_4

    .line 142
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mTabStrip:Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    const/4 v6, 0x1

    new-array v6, v6, [I

    iget-object v7, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sonymobile/settings/stamina/common/ThemeColorUtil;->getAccentColor(Landroid/content/Context;)I

    move-result v7

    aput v7, v6, v8

    invoke-virtual {v5, v6}, Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;->setSelectedIndicatorColors([I)V

    .line 149
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mTabStrip:Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    invoke-virtual {v5, v4}, Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;->addView(Landroid/view/View;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 145
    const v6, 0x7f0e0075

    .line 144
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 116
    :cond_5
    return-void
.end method

.method private scrollToTab(II)V
    .locals 5
    .param p1, "tabIndex"    # I
    .param p2, "positionOffset"    # I

    .prologue
    const/4 v4, 0x0

    .line 163
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mTabStrip:Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    invoke-virtual {v3}, Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;->getChildCount()I

    move-result v1

    .line 164
    .local v1, "tabStripChildCount":I
    if-eqz v1, :cond_0

    if-gez p1, :cond_1

    .line 165
    :cond_0
    return-void

    .line 164
    :cond_1
    if-ge p1, v1, :cond_0

    .line 168
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mTabStrip:Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    invoke-virtual {v3, p1}, Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, "selectedChild":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int v2, v3, p2

    .line 172
    .local v2, "targetScrollX":I
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 173
    :cond_2
    iget v3, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mTitleOffset:I

    sub-int/2addr v2, v3

    .line 176
    :cond_3
    invoke-virtual {p0, v2, v4}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->scrollTo(II)V

    .line 162
    .end local v2    # "targetScrollX":I
    :cond_4
    return-void
.end method


# virtual methods
.method protected createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 104
    .local v1, "textView":Landroid/widget/TextView;
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 105
    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 106
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 108
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 109
    .local v0, "outValue":Landroid/util/TypedValue;
    const v2, 0x7f020146

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 110
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 111
    iget v2, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mPaddingDips:I

    iget v3, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mPaddingDips:I

    iget v4, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mPaddingDips:I

    iget v5, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mPaddingDips:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 113
    return-object v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 157
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->scrollToTab(II)V

    .line 154
    :cond_0
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mTabStrip:Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;->removeAllViews()V

    .line 95
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 96
    if-eqz p1, :cond_0

    .line 97
    new-instance v0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 98
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->populateTabStrip()V

    .line 92
    :cond_0
    return-void
.end method
