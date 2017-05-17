.class public abstract Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "TabCommonActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/sonyericsson/android/socialphonebook/TabStateController;
.implements Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;
    }
.end annotation


# static fields
.field public static final EXTRA_FROM_NEW_INTENT:Ljava/lang/String; = "from-new-intent"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

.field protected mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

.field protected mFloatingButtonController:Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;

.field protected mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field protected mIntentResolver:Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;

.field protected mNewIntentListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/activities/listeners/OnNewIntentListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnUserLeaveAppListener:Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;

.field protected mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

.field protected mRequestListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$ContactsRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mTabStateListeners:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;",
            "Lcom/sonyericsson/android/socialphonebook/TabStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected mToolbar:Landroid/widget/Toolbar;

.field protected mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

.field protected mViewPagerAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;

.field protected mViewPagerListener:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;

.field protected mViewPagerTabs:Lcom/android/contacts/list/ViewPagerTabs;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->updateDelayedPage(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->TAG:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequestListeners:Ljava/util/ArrayList;

    .line 94
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mTabStateListeners:Lcom/google/common/collect/Multimap;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mFragments:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mNewIntentListeners:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mIntentResolver:Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;

    .line 108
    return-void
.end method

.method private updateDelayedPage(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 295
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 297
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/sonyericsson/android/socialphonebook/ui/BlankFragment;

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;

    .line 299
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getTabState(I)Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->phoneTabStateToFragmentClass(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)Ljava/lang/Class;

    move-result-object v2

    .line 298
    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->replace(ILjava/lang/Class;)V

    .line 300
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->notifyDataSetChanged()V

    .line 294
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract addPhoneTabs()V
.end method

.method protected abstract addTabletTabs()V
.end method

.method public findFragment(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mFragments:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "fragment$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 449
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    return-object v0

    .line 453
    .end local v0    # "fragment":Landroid/app/Fragment;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSelectedTab()Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ActionBarAdapter not initialized yet. You should not call getSelectedTab() before activity onCreate()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTab()Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTabFragment()Landroid/app/Fragment;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTabPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected initializeViewPager(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V
    .locals 8
    .param p1, "nextTab"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 361
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->getId()I

    move-result v6

    invoke-direct {v5, p0, v1, v6}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;I)V

    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;

    .line 362
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getTabs()Ljava/util/ArrayList;

    move-result-object v4

    .line 363
    .local v4, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;>;"
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getTabsDescriptions()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->setTabsDescriptions(Ljava/util/List;)V

    .line 370
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 371
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .line 372
    .local v3, "tabState":Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->phoneTabStateToFragmentClass(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)Ljava/lang/Class;

    move-result-object v0

    .line 374
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 375
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Class is not found for tabState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    :cond_0
    if-eq p1, v3, :cond_1

    .line 386
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->getId()I

    move-result v5

    .line 385
    invoke-static {v0, v2, v5}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->getPageTag(Ljava/lang/Class;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    if-nez v5, :cond_1

    .line 387
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;

    const-class v6, Lcom/sonyericsson/android/socialphonebook/ui/BlankFragment;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->addPage(Ljava/lang/Class;)V

    goto :goto_1

    .line 389
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->addPage(Ljava/lang/Class;)V

    goto :goto_1

    .line 393
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "tabState":Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 359
    return-void
.end method

.method protected initializeViews(Landroid/os/Bundle;)Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    .locals 5
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 321
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 322
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->setLayout()V

    .line 324
    const v1, 0x7f0e00cc

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mToolbar:Landroid/widget/Toolbar;

    .line 325
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/ThemeUtils;->getActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 326
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 328
    const v1, 0x7f0e00cb

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ViewPagerTabs;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerTabs:Lcom/android/contacts/list/ViewPagerTabs;

    .line 330
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerTabs:Lcom/android/contacts/list/ViewPagerTabs;

    if-nez v1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 332
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mToolbar:Landroid/widget/Toolbar;

    const v3, 0x7f040044

    const/4 v4, 0x0

    .line 331
    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ViewPagerTabs;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerTabs:Lcom/android/contacts/list/ViewPagerTabs;

    .line 333
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mToolbar:Landroid/widget/Toolbar;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerTabs:Lcom/android/contacts/list/ViewPagerTabs;

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 339
    :goto_0
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mToolbar:Landroid/widget/Toolbar;

    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mIsDualPane:Z

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;Landroid/widget/Toolbar;Z)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    .line 340
    const v1, 0x7f0e00c9

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    .line 342
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mIsDualPane:Z

    if-eqz v1, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->addTabletTabs()V

    .line 348
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->resolveTab(Landroid/os/Bundle;Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;)Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v0

    .line 349
    .local v0, "nextTab":Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->initializeViewPager(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V

    .line 351
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerTabs:Lcom/android/contacts/list/ViewPagerTabs;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ViewPagerTabs;->setViewPager(Lcom/android/contacts/util/ViewPager;)V

    .line 354
    const v1, 0x7f0e00c8

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/contacts/common/util/ViewUtil;->addRectangularOutlineProvider(Landroid/view/View;Landroid/content/res/Resources;)V

    .line 356
    return-object v0

    .line 335
    .end local v0    # "nextTab":Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerTabs:Lcom/android/contacts/list/ViewPagerTabs;

    invoke-virtual {v1}, Lcom/android/contacts/list/ViewPagerTabs;->getViewPagerTabStrip()Lcom/android/contacts/list/ViewPagerTabStrip;

    move-result-object v1

    .line 336
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/contacts/util/ThemeUtils;->getActionBarBackground(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 335
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ViewPagerTabStrip;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->addPhoneTabs()V

    goto :goto_1
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    return v0
.end method

.method public notifyTabStateChange(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;Z)V
    .locals 3
    .param p1, "tab"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    .param p2, "selected"    # Z

    .prologue
    .line 271
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mTabStateListeners:Lcom/google/common/collect/Multimap;

    invoke-interface {v2, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/TabStateObserver;

    .line 272
    .local v0, "listener":Lcom/sonyericsson/android/socialphonebook/TabStateObserver;
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/TabStateObserver;->onTabChanged(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;Z)V

    goto :goto_0

    .line 270
    .end local v0    # "listener":Lcom/sonyericsson/android/socialphonebook/TabStateObserver;
    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 193
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    instance-of v1, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$ContactsRequestListener;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 196
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$ContactsRequestListener;

    .line 198
    .local v0, "listener":Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$ContactsRequestListener;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequestListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequestListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$ContactsRequestListener;->onNewRequest(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;)V

    .line 207
    .end local v0    # "listener":Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$ContactsRequestListener;
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/android/socialphonebook/activities/listeners/OnNewIntentListener;

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mNewIntentListeners:Ljava/util/ArrayList;

    check-cast p1, Lcom/sonyericsson/android/socialphonebook/activities/listeners/OnNewIntentListener;

    .end local p1    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mFloatingButtonController:Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/common/fab/ContactsFloatingActionButtonController;->setSearchMode(Z)V

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerTabs:Lcom/android/contacts/list/ViewPagerTabs;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ViewPagerTabs;->setVisibility(I)V

    .line 225
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->invalidateOptionsMenu()V

    .line 219
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mOnUserLeaveAppListener:Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mOnUserLeaveAppListener:Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;->onBackButtonPressed()V

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->isSafeToCommitTransactions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->processIntent(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->finish()V

    .line 120
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->initializeViews(Landroid/os/Bundle;)Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v0

    .line 125
    .local v0, "nextTab":Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v1, p1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->configure(Landroid/os/Bundle;Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V

    .line 126
    const v1, 0x7f0e00ca

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/fab/FloatingActionButton;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    .line 128
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    if-eqz v1, :cond_1

    .line 129
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTabPosition()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;-><init>(Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;I)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerListener:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;

    .line 115
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mTabStateListeners:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 215
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 213
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 135
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->setIntent(Landroid/content/Intent;)V

    .line 136
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->processIntent(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->finish()V

    .line 138
    return-void

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v4, v6, v5}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->resolveTab(Landroid/os/Bundle;Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;)Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->reconfigure(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V

    .line 143
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTab()Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->updateSoftInputVisibility(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V

    .line 145
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;

    if-eqz v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTabPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->updateDelayedPage(I)V

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mNewIntentListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/activities/listeners/OnNewIntentListener;

    .line 150
    .local v0, "listener":Lcom/sonyericsson/android/socialphonebook/activities/listeners/OnNewIntentListener;
    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/activities/listeners/OnNewIntentListener;->onNewIntent()V

    goto :goto_0

    .line 134
    .end local v0    # "listener":Lcom/sonyericsson/android/socialphonebook/activities/listeners/OnNewIntentListener;
    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->setOnPageChangeListener(Lcom/android/contacts/util/ViewPager$OnPageChangeListener;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/sonymobile/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 181
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 158
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTab()Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->updateSoftInputVisibility(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V

    .line 160
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerListener:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->setOnPageChangeListener(Lcom/android/contacts/util/ViewPager$OnPageChangeListener;)V

    .line 162
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerListener:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTabPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->onResume(I)V

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequestListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$ContactsRequestListener;

    .line 166
    .local v0, "listener":Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$ContactsRequestListener;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$ContactsRequestListener;->onNewRequest(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;)V

    goto :goto_0

    .line 169
    .end local v0    # "listener":Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$ContactsRequestListener;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mFloatingButtonController:Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTab()Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;->onResume(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V

    .line 171
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mFloatingActionButton:Lcom/sonymobile/fab/FloatingActionButton;

    new-instance v3, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$1;-><init>(Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mFloatingButtonController:Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 252
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 249
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mOnUserLeaveAppListener:Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mOnUserLeaveAppListener:Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;->onUserLeaveAppHint()V

    .line 245
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onUserLeaveHint()V

    .line 241
    return-void
.end method

.method protected abstract phoneTabStateToFragmentClass(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method protected processIntent(Z)Z
    .locals 5
    .param p1, "forNewIntent"    # Z

    .prologue
    const/4 v4, 0x0

    .line 407
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mIntentResolver:Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    .line 409
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " processIntent: forNewIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 410
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 410
    const-string/jumbo v3, " request="

    .line 409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 410
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    .line 409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->setResult(I)V

    .line 414
    return v4

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v0

    .line 418
    .local v0, "redirect":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->startActivity(Landroid/content/Intent;)V

    .line 421
    return v4

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x8c

    if-ne v1, v2, :cond_2

    .line 426
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 434
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->getActionCode()I

    move-result v1

    if-nez v1, :cond_3

    .line 435
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    .line 438
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 427
    :cond_4
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "redirect":Landroid/content/Intent;
    const-class v1, Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    .restart local v0    # "redirect":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->startActivity(Landroid/content/Intent;)V

    .line 431
    return v4
.end method

.method public register(Lcom/sonyericsson/android/socialphonebook/TabStateObserver;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/TabStateObserver;
    .param p2, "tab"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mTabStateListeners:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method protected abstract setLayout()V
.end method

.method public setOnUserLeaveAppObserver(Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mOnUserLeaveAppListener:Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;

    .line 256
    return-void
.end method

.method public unregister(Lcom/sonyericsson/android/socialphonebook/TabStateObserver;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/TabStateObserver;
    .param p2, "tab"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mTabStateListeners:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 265
    return-void
.end method

.method protected updateSoftInputVisibility(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V
    .locals 3
    .param p1, "tab"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v0, v1, 0xf

    .line 313
    .local v0, "softInputModeState":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 309
    :cond_0
    return-void
.end method
