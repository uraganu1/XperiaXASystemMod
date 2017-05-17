.class public Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.source "DualSdnContactsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;,
        Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;,
        Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$PagerListener;,
        Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$AddTabListener;
    }
.end annotation


# static fields
.field private static final SDN_SIM1_TAG:Ljava/lang/String; = "sdn1-fragment"

.field private static final SDN_SIM2_TAG:Ljava/lang/String; = "sdn2-fragment"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mCurrentTab:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

.field private mSdn1ContactsListFragment:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

.field private mSdn2ContactsListFragment:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

.field private mViewPager:Lcom/android/contacts/util/ViewPager;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;)Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mSdn1ContactsListFragment:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;)Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mSdn2ContactsListFragment:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;)V
    .locals 0
    .param p1, "tab"    # Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->setCurrentTab(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;-><init>()V

    .line 45
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->SDN1LIST:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mCurrentTab:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    .line 26
    return-void
.end method

.method private addTab(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;I)V
    .locals 2
    .param p1, "tabState"    # Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;
    .param p2, "description"    # I

    .prologue
    .line 129
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 130
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 131
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$AddTabListener;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$AddTabListener;-><init>(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 132
    invoke-virtual {v0, p2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 133
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 128
    return-void
.end method

.method private initTab()V
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->SDN1LIST:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    const v1, 0x7f09004f

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->addTab(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;I)V

    .line 125
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->SDN2LIST:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    const v1, 0x7f090050

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->addTab(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;I)V

    .line 123
    return-void
.end method

.method private onSelectedTabChanged()V
    .locals 4

    .prologue
    .line 280
    sget-boolean v1, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 281
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSelectedTabChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mCurrentTab:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mCurrentTab:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->ordinal()I

    move-result v0

    .line 284
    .local v0, "tabIndex":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mViewPager:Lcom/android/contacts/util/ViewPager;

    invoke-virtual {v1}, Lcom/android/contacts/util/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 285
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mViewPager:Lcom/android/contacts/util/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/util/ViewPager;->setCurrentItem(IZ)V

    .line 279
    :cond_1
    return-void
.end method

.method private setCurrentTab(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;)V
    .locals 3
    .param p1, "tab"    # Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    .prologue
    .line 265
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mCurrentTab:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    if-ne p1, v1, :cond_0

    .line 266
    return-void

    .line 268
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mCurrentTab:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    .line 270
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mCurrentTab:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->ordinal()I

    move-result v0

    .line 271
    .local v0, "index":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 272
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 276
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->onSelectedTabChanged()V

    .line 264
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "aIcicle"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0e0132

    const/4 v4, 0x1

    .line 63
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mActionBar:Landroid/app/ActionBar;

    .line 72
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 73
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 75
    const v2, 0x7f040069

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->setContentView(I)V

    .line 76
    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/util/ViewPager;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mViewPager:Lcom/android/contacts/util/ViewPager;

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 79
    .local v0, "fm":Landroid/app/FragmentManager;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mViewPager:Lcom/android/contacts/util/ViewPager;

    new-instance v3, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabPagerAdapter;-><init>(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/util/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 80
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mViewPager:Lcom/android/contacts/util/ViewPager;

    new-instance v3, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$PagerListener;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$PagerListener;-><init>(Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/util/ViewPager;->setOnPageChangeListener(Lcom/android/contacts/util/ViewPager$OnPageChangeListener;)V

    .line 83
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 84
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const-string/jumbo v2, "sdn1-fragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mSdn1ContactsListFragment:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    .line 85
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mSdn1ContactsListFragment:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    if-nez v2, :cond_1

    .line 87
    const/4 v2, 0x0

    .line 86
    invoke-static {v2, v4}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->newInstance(IZ)Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mSdn1ContactsListFragment:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    .line 88
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mSdn1ContactsListFragment:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    const-string/jumbo v3, "sdn1-fragment"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 91
    :cond_1
    const-string/jumbo v2, "sdn2-fragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mSdn2ContactsListFragment:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    .line 92
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mSdn2ContactsListFragment:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    if-nez v2, :cond_2

    .line 93
    invoke-static {v4, v4}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->newInstance(IZ)Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mSdn2ContactsListFragment:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    .line 95
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mSdn2ContactsListFragment:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    const-string/jumbo v3, "sdn2-fragment"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 100
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mSdn1ContactsListFragment:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 101
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->mSdn2ContactsListFragment:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 103
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 104
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 106
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->initTab()V

    .line 108
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 115
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;->finish()V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
