.class public Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "WelcomeScreenFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter;
    }
.end annotation


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mDoneButton:Landroid/view/View;

.field private mIsRtl:Z

.field private mNextButton:Landroid/view/View;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mPaginationImageView:[Landroid/widget/ImageView;

.field private mSkipButton:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->gotoNextPage()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->gotoPreviousPage()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;I)V
    .locals 0
    .param p1, "newPosition"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->updatePaginationBar(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private getConvertedPosition(I)I
    .locals 1
    .param p1, "newPosition"    # I

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .end local p1    # "newPosition":I
    :cond_0
    return p1
.end method

.method private gotoFirstPage()V
    .locals 2

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 181
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method private gotoNextPage()V
    .locals 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 189
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method private gotoPreviousPage()V
    .locals 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 198
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method private isFirstPage(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 207
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mIsRtl:Z

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 210
    :cond_1
    if-nez p1, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private isLastPage(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mIsRtl:Z

    if-eqz v2, :cond_1

    .line 216
    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private loadPaginationImages()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 267
    const v4, 0x7f0d0135

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 269
    .local v3, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 270
    const v5, 0x7f0c00bf

    .line 269
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 271
    .local v2, "padding":I
    iget-object v4, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 272
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 273
    iget-object v4, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v0

    .line 274
    iget-object v4, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 275
    iget-object v4, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    .line 276
    const v5, 0x7f02014f

    .line 275
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    .line 282
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 281
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v4, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2, v7, v2, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 285
    iget-object v4, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const v5, 0x7f020150

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 266
    :cond_1
    return-void
.end method

.method private updatePaginationBar(I)V
    .locals 6
    .param p1, "newPosition"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 228
    iget-object v5, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mBackButton:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->isFirstPage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v5, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mSkipButton:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->isFirstPage(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 231
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->isLastPage(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mDoneButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :goto_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->getConvertedPosition(I)I

    move-result v1

    .line 242
    .local v1, "pagePosition":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 243
    if-ne v0, v1, :cond_3

    .line 244
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    .line 245
    const v3, 0x7f02014f

    .line 244
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    .end local v1    # "pagePosition":I
    :cond_0
    move v2, v4

    .line 228
    goto :goto_0

    :cond_1
    move v2, v3

    .line 229
    goto :goto_1

    .line 236
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mDoneButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 247
    .restart local v0    # "i":I
    .restart local v1    # "pagePosition":I
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const v3, 0x7f020150

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 227
    :cond_4
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 157
    const v0, 0xbada

    if-ne p1, v0, :cond_1

    .line 158
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->finish()V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 171
    .local v0, "currentPage":I
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->isFirstPage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonyericsson.conversations.action.WELCOME_SCREEN_BACK_PRESSED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 175
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 168
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->gotoPreviousPage()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v2, 0x7f030070

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->setContentView(I)V

    .line 69
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->setRequestedOrientation(I)V

    .line 74
    :cond_0
    const v2, 0x7f0d0134

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mBackButton:Landroid/view/View;

    .line 75
    const v2, 0x7f0d0136

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mNextButton:Landroid/view/View;

    .line 76
    const v2, 0x7f0d0137

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mDoneButton:Landroid/view/View;

    .line 77
    const v2, 0x7f0d0133

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mSkipButton:Landroid/view/View;

    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mIsRtl:Z

    .line 82
    const v2, 0x7f0d0047

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 83
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setLayoutDirection(I)V

    .line 84
    new-instance v2, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mIsRtl:Z

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$ScreenPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Z)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 85
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 86
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$1;-><init>(Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 107
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    .line 108
    invoke-direct {p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->loadPaginationImages()V

    .line 110
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mBackButton:Landroid/view/View;

    new-instance v3, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$2;-><init>(Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mNextButton:Landroid/view/View;

    new-instance v3, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$3;

    invoke-direct {v3, p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$3;-><init>(Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity$4;-><init>(Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;)V

    .line 133
    .local v0, "dismissWelcomeScreenListener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mDoneButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mSkipButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-direct {p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->gotoFirstPage()V

    .line 138
    const-string/jumbo v2, "Welcome Screen Attachments"

    invoke-static {v2}, Lcom/sonymobile/conversations/analytics/Analytics;->pushAppView(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->updatePaginationBar(I)V

    .line 141
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    :cond_1
    :goto_1
    return-void

    .line 79
    .end local v0    # "dismissWelcomeScreenListener":Landroid/view/View$OnClickListener;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 143
    .restart local v0    # "dismissWelcomeScreenListener":Landroid/view/View$OnClickListener;
    :cond_3
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v2

    .line 144
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getChangeDefaultSmsPackageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 145
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0xbada

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 151
    const v0, 0xbada

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;->finishActivity(I)V

    .line 152
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 150
    return-void
.end method
