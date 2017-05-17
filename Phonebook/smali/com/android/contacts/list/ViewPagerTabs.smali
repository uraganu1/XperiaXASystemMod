.class public Lcom/android/contacts/list/ViewPagerTabs;
.super Landroid/widget/HorizontalScrollView;
.source "ViewPagerTabs.java"

# interfaces
.implements Lcom/android/contacts/util/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ViewPagerTabs$OnTabLongClickListener;,
        Lcom/android/contacts/list/ViewPagerTabs$1;
    }
.end annotation


# static fields
.field private static final TAB_SIDE_PADDING_IN_DPS:I = 0xa

.field private static final VIEW_BOUNDS_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;


# instance fields
.field mFocusable:Z

.field mPager:Lcom/android/contacts/util/ViewPager;

.field mPrevSelected:I

.field mSidePadding:I

.field private mTabStrip:Lcom/android/contacts/list/ViewPagerTabStrip;

.field final mTextAllCaps:Z

.field final mTextColor:Landroid/content/res/ColorStateList;

.field final mTextSize:I

.field final mTextStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/android/contacts/list/ViewPagerTabs$1;

    invoke-direct {v0}, Lcom/android/contacts/list/ViewPagerTabs$1;-><init>()V

    .line 65
    sput-object v0, Lcom/android/contacts/list/ViewPagerTabs;->VIEW_BOUNDS_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/list/ViewPagerTabs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/list/ViewPagerTabs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput v5, p0, Lcom/android/contacts/list/ViewPagerTabs;->mPrevSelected:I

    .line 117
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ViewPagerTabs;->setFillViewport(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/android/contacts/list/ViewPagerTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mSidePadding:I

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 122
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/R$styleable;->ViewPagerTabs:[I

    .line 121
    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTextSize:I

    .line 125
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTextStyle:I

    .line 126
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTextColor:Landroid/content/res/ColorStateList;

    .line 127
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTextAllCaps:Z

    .line 128
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mFocusable:Z

    .line 130
    new-instance v1, Lcom/android/contacts/list/ViewPagerTabStrip;

    invoke-direct {v1, p1}, Lcom/android/contacts/list/ViewPagerTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/list/ViewPagerTabStrip;

    .line 131
    iget-object v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/list/ViewPagerTabStrip;

    iget-boolean v2, p0, Lcom/android/contacts/list/ViewPagerTabs;->mFocusable:Z

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ViewPagerTabStrip;->setShowUnderline(Z)V

    .line 132
    iget-object v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/list/ViewPagerTabStrip;

    .line 133
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 132
    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/ViewPagerTabs;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    sget-object v1, Lcom/android/contacts/list/ViewPagerTabs;->VIEW_BOUNDS_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ViewPagerTabs;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 115
    return-void
.end method

.method private addTab(Ljava/lang/CharSequence;I)V
    .locals 7
    .param p1, "tabTitle"    # Ljava/lang/CharSequence;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 159
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ViewPagerTabs;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 162
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 164
    iget-boolean v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mFocusable:Z

    if-eqz v1, :cond_0

    .line 165
    new-instance v1, Lcom/android/contacts/list/ViewPagerTabs$2;

    invoke-direct {v1, p0, p2}, Lcom/android/contacts/list/ViewPagerTabs$2;-><init>(Lcom/android/contacts/list/ViewPagerTabs;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v1, Lcom/android/contacts/list/ViewPagerTabs$OnTabLongClickListener;

    invoke-direct {v1, p0, p2}, Lcom/android/contacts/list/ViewPagerTabs$OnTabLongClickListener;-><init>(Lcom/android/contacts/list/ViewPagerTabs;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 176
    :cond_0
    iget v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTextStyle:I

    if-lez v1, :cond_1

    .line 177
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTextStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 179
    :cond_1
    iget v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTextSize:I

    if-lez v1, :cond_2

    .line 180
    iget v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    .line 183
    iget-object v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 185
    :cond_3
    iget-boolean v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTextAllCaps:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 186
    iget v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mSidePadding:I

    iget v2, p0, Lcom/android/contacts/list/ViewPagerTabs;->mSidePadding:I

    invoke-virtual {v0, v1, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 187
    iget-object v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/list/ViewPagerTabStrip;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 188
    const/high16 v3, 0x3f800000    # 1.0f

    .line 187
    const/4 v4, -0x2

    .line 188
    const/4 v5, -0x1

    .line 187
    invoke-direct {v2, v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/list/ViewPagerTabStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    if-nez p2, :cond_4

    .line 191
    iput v6, p0, Lcom/android/contacts/list/ViewPagerTabs;->mPrevSelected:I

    .line 192
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 158
    :cond_4
    return-void
.end method

.method private addTabs(Landroid/support/v4/view/PagerAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 146
    iget-object v2, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/list/ViewPagerTabStrip;

    invoke-virtual {v2}, Lcom/android/contacts/list/ViewPagerTabStrip;->removeAllViews()V

    .line 148
    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 149
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 150
    invoke-virtual {p1, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/contacts/list/ViewPagerTabs;->addTab(Ljava/lang/CharSequence;I)V

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public getRtlPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/contacts/list/ViewPagerTabs;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/list/ViewPagerTabStrip;

    invoke-virtual {v0}, Lcom/android/contacts/list/ViewPagerTabStrip;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0

    .line 230
    :cond_0
    return p1
.end method

.method public getViewPagerTabStrip()Lcom/android/contacts/list/ViewPagerTabStrip;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/list/ViewPagerTabStrip;

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 223
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ViewPagerTabs;->getRtlPosition(I)I

    move-result p1

    .line 199
    iget-object v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/list/ViewPagerTabStrip;

    invoke-virtual {v1}, Lcom/android/contacts/list/ViewPagerTabStrip;->getChildCount()I

    move-result v0

    .line 200
    .local v0, "tabStripChildCount":I
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    .line 201
    :cond_0
    return-void

    .line 200
    :cond_1
    if-ge p1, v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/list/ViewPagerTabStrip;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/contacts/list/ViewPagerTabStrip;->onPageScrolled(IFI)V

    .line 197
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ViewPagerTabs;->getRtlPosition(I)I

    move-result p1

    .line 210
    iget v2, p0, Lcom/android/contacts/list/ViewPagerTabs;->mPrevSelected:I

    if-ltz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/list/ViewPagerTabStrip;

    iget v3, p0, Lcom/android/contacts/list/ViewPagerTabs;->mPrevSelected:I

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/list/ViewPagerTabStrip;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 214
    .local v1, "selectedChild":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 217
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/contacts/list/ViewPagerTabs;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 218
    .local v0, "scrollPos":I
    invoke-virtual {p0, v0, v5}, Lcom/android/contacts/list/ViewPagerTabs;->smoothScrollTo(II)V

    .line 219
    iput p1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mPrevSelected:I

    .line 208
    return-void
.end method

.method public setViewPager(Lcom/android/contacts/util/ViewPager;)V
    .locals 1
    .param p1, "viewPager"    # Lcom/android/contacts/util/ViewPager;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/contacts/list/ViewPagerTabs;->mPager:Lcom/android/contacts/util/ViewPager;

    .line 142
    iget-object v0, p0, Lcom/android/contacts/list/ViewPagerTabs;->mPager:Lcom/android/contacts/util/ViewPager;

    invoke-virtual {v0}, Lcom/android/contacts/util/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ViewPagerTabs;->addTabs(Landroid/support/v4/view/PagerAdapter;)V

    .line 140
    return-void
.end method
