.class public Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "PackageDisplayListSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;,
        Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$MyPagerAdapter;
    }
.end annotation


# static fields
.field private static sBeforeFragmentCount:I

.field private static sFragmentCount:I


# instance fields
.field protected mAdapterApps:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

.field protected mAdapterOthers:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

.field protected mAdapterWhitelisted:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPackageDisplayList:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

.field private mProgress:Landroid/widget/LinearLayout;

.field private mRootView:Landroid/view/View;

.field private mSlidingTabLayout:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field protected mWhiteList:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

.field private onPauseFlag:Z

.field private reloadFlag:Z


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mPackageDisplayList:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mProgress:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mSlidingTabLayout:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    sput v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->sBeforeFragmentCount:I

    .line 76
    sput v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->sFragmentCount:I

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 70
    iput-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->reloadFlag:Z

    .line 72
    iput-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->onPauseFlag:Z

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mTabs:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method private reloadWhitelist()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mAdapterWhitelisted:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->reloadWhitelist()V

    .line 325
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mAdapterApps:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->reloadWhitelist()V

    .line 326
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mAdapterOthers:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->reloadWhitelist()V

    .line 323
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 166
    sget v4, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->sFragmentCount:I

    sput v4, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->sBeforeFragmentCount:I

    .line 167
    sget v4, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->sFragmentCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->sFragmentCount:I

    .line 168
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->setRetainInstance(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 170
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 174
    .local v1, "manager":Landroid/app/FragmentManager;
    const-string/jumbo v4, "stamina_uidlist"

    .line 173
    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    iput-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mPackageDisplayList:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    .line 175
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mPackageDisplayList:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    if-nez v4, :cond_0

    .line 176
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 177
    .local v3, "transaction":Landroid/app/FragmentTransaction;
    new-instance v4, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    invoke-direct {v4}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;-><init>()V

    iput-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mPackageDisplayList:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    .line 178
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mPackageDisplayList:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    const-string/jumbo v5, "stamina_uidlist"

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 179
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 182
    .end local v3    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    const-string/jumbo v4, "stamina_whitelist"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    iput-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mWhiteList:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    .line 183
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mWhiteList:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    if-nez v4, :cond_1

    .line 184
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 185
    .restart local v3    # "transaction":Landroid/app/FragmentTransaction;
    new-instance v4, Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-direct {v4}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;-><init>()V

    iput-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mWhiteList:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    .line 186
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mWhiteList:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    const-string/jumbo v5, "stamina_whitelist"

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 187
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 190
    .end local v3    # "transaction":Landroid/app/FragmentTransaction;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.sonymobile.SHOW_BATTERY_OPTIMIZATION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v2, "showBatteryOptimization":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 164
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    .line 199
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0c53

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 200
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 201
    const v0, 0x7f040111

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mRootView:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f13001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 203
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f130228

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mProgress:Landroid/widget/LinearLayout;

    .line 204
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mRootView:Landroid/view/View;

    .line 206
    const v1, 0x7f130227

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mSlidingTabLayout:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    .line 208
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mPackageDisplayList:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;

    new-instance v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;-><init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->executeWhenLoaded(Ljava/lang/Runnable;)V

    .line 250
    instance-of v0, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    .line 252
    const/4 v1, 0x1

    .line 251
    iput-boolean v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    sget v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->sFragmentCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->sFragmentCount:I

    .line 294
    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mRootView:Landroid/view/View;

    .line 295
    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 296
    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mProgress:Landroid/widget/LinearLayout;

    .line 297
    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mSlidingTabLayout:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    .line 298
    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mAdapterApps:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    .line 299
    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mAdapterOthers:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    .line 300
    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mAdapterWhitelisted:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    .line 301
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mWhiteList:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->clear()V

    .line 304
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v0, "intentGa":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.SUPER_STAMINA_GA_SCREEN_CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string/jumbo v1, "screen"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 309
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 292
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 314
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$TabInfo;->detachView()V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 284
    iput-boolean v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->onPauseFlag:Z

    .line 285
    sget v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->sFragmentCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 286
    iput-boolean v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->reloadFlag:Z

    .line 288
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 283
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 260
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 264
    .local v0, "intentGa":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.SUPER_STAMINA_GA_SCREEN_OPEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string/jumbo v1, "screen"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 268
    sget v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->sBeforeFragmentCount:I

    sget v2, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->sFragmentCount:I

    if-le v1, v2, :cond_0

    .line 269
    iput-boolean v4, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->reloadFlag:Z

    .line 271
    :cond_0
    iget-boolean v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->onPauseFlag:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->sFragmentCount:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 272
    iput-boolean v4, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->reloadFlag:Z

    .line 274
    :cond_1
    iget-boolean v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->reloadFlag:Z

    if-eqz v1, :cond_2

    .line 275
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->reloadWhitelist()V

    .line 276
    iput-boolean v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->reloadFlag:Z

    .line 278
    :cond_2
    iput-boolean v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->onPauseFlag:Z

    .line 279
    sget v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->sFragmentCount:I

    sput v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->sBeforeFragmentCount:I

    .line 259
    return-void
.end method
