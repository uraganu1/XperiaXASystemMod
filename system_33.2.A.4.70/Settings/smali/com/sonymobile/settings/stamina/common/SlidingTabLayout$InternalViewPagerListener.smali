.class Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    .line 208
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->-get2(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->-get2(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 205
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 185
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->-get0(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;->getChildCount()I

    move-result v2

    .line 186
    .local v2, "tabStripChildCount":I
    if-eqz v2, :cond_0

    if-gez p1, :cond_1

    .line 187
    :cond_0
    return-void

    .line 186
    :cond_1
    if-ge p1, v2, :cond_0

    .line 190
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->-get0(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 192
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->-get0(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 193
    .local v1, "selectedTitle":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 194
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v0, v3

    .line 196
    .local v0, "extraOffset":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-static {v3, p1, v0}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->-wrap0(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;II)V

    .line 198
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->-get2(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 199
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->-get2(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 184
    :cond_2
    return-void

    .line 195
    .end local v0    # "extraOffset":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "extraOffset":I
    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 215
    iget v4, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    if-nez v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->-get0(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 217
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-static {v4, p1, v6}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->-wrap0(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;II)V

    .line 220
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->-get2(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 221
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->-get2(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 225
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->-get0(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 226
    .local v1, "selectedTitle":Landroid/view/View;
    const-class v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v1

    .line 227
    check-cast v2, Landroid/widget/TextView;

    .line 228
    .local v2, "selectedTitleText":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-virtual {v4}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    .end local v2    # "selectedTitleText":Landroid/widget/TextView;
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->-get0(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 232
    if-eq v0, p1, :cond_3

    .line 233
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->-get0(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 234
    .local v3, "unSelectedTitleText":Landroid/view/View;
    check-cast v3, Landroid/widget/TextView;

    .end local v3    # "unSelectedTitleText":Landroid/view/View;
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-virtual {v4}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 235
    const v5, 0x7f0e0075

    .line 234
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_4
    return-void
.end method
