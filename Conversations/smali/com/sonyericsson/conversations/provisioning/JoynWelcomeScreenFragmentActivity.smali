.class public Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "JoynWelcomeScreenFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity$ScreenPagerAdapter;
    }
.end annotation


# instance fields
.field private mNextButton:Landroid/widget/Button;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mPaginationImageView:[Landroid/widget/ImageView;

.field private mPaginationLayout:Landroid/widget/LinearLayout;

.field private mPaginationPadding:I


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->onNextPressed()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;I)V
    .locals 0
    .param p1, "newPosition"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->updatePaginationBar(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private finishActivity()V
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->setJoynWelcomeScreenDisplayed(Z)V

    .line 205
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->setResult(I)V

    .line 206
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->finish()V

    .line 203
    return-void
.end method

.method private getSystemDimenValue(Ljava/lang/String;)I
    .locals 4
    .param p1, "res"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "dimen"

    const-string/jumbo v3, "android"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, "resourceId":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method

.method private loadPaginationImages()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 162
    if-nez v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f0200d6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPaginationPadding:I

    iget v3, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPaginationPadding:I

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 171
    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPaginationLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f0200d7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 159
    :cond_1
    return-void
.end method

.method private onNextPressed()V
    .locals 5

    .prologue
    .line 185
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 186
    .local v0, "currentPage":I
    add-int/lit8 v1, v0, 0x1

    .line 188
    .local v1, "nextPage":I
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 189
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->paginationDotMovements(II)V

    .line 195
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 197
    const v4, 0x7f0b024f

    .line 196
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 184
    return-void

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->finishActivity()V

    .line 192
    return-void
.end method

.method private paginationDotMovements(II)V
    .locals 2
    .param p1, "currentPage"    # I
    .param p2, "nextPage"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, p2

    .line 180
    const v1, 0x7f0200d6

    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    return-void
.end method

.method private updatePaginationBar(I)V
    .locals 4
    .param p1, "newPosition"    # I

    .prologue
    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 139
    if-ne v0, p1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f0200d6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f0200d7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 146
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    const v1, 0x7f0b024f

    .line 145
    :goto_2
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void

    .line 147
    :cond_2
    const v1, 0x7f0b024e

    goto :goto_2
.end method


# virtual methods
.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 118
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 119
    .local v0, "currentPage":I
    add-int/lit8 v1, v0, -0x1

    .line 121
    .local v1, "nextPage":I
    if-gez v1, :cond_1

    .line 123
    new-instance v2, Landroid/content/Intent;

    .line 124
    const-string/jumbo v3, "com.sonyericsson.conversations.action.WELCOME_SCREEN_BACK_PRESSED"

    .line 123
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v2}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 125
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->paginationDotMovements(II)V

    .line 128
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 129
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 131
    const v4, 0x7f0b024e

    .line 130
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->setContentView(I)V

    .line 76
    const v1, 0x7f0d0045

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "rootView":Landroid/view/View;
    const-string/jumbo v1, "status_bar_height"

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->getSystemDimenValue(Ljava/lang/String;)I

    move-result v1

    .line 78
    const-string/jumbo v2, "navigation_bar_height"

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->getSystemDimenValue(Ljava/lang/String;)I

    move-result v2

    .line 77
    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 80
    const v1, 0x7f0d0047

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 81
    new-instance v1, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity$ScreenPagerAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity$ScreenPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 82
    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 83
    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity$1;-><init>(Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 98
    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 100
    const v1, 0x7f0d0046

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPaginationLayout:Landroid/widget/LinearLayout;

    .line 101
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPaginationImageView:[Landroid/widget/ImageView;

    .line 102
    const v1, 0x7f0d0049

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mNextButton:Landroid/widget/Button;

    .line 103
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 104
    const v2, 0x7f0c00cf

    .line 103
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mPaginationPadding:I

    .line 106
    invoke-direct {p0}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->loadPaginationImages()V

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;->mNextButton:Landroid/widget/Button;

    new-instance v2, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity$2;-><init>(Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method
