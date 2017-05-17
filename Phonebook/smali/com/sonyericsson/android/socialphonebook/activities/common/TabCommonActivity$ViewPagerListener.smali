.class public Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;
.super Ljava/lang/Object;
.source "TabCommonActivity.java"

# interfaces
.implements Lcom/android/contacts/util/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewPagerListener"
.end annotation


# instance fields
.field private mCurrentFragment:Landroid/app/Fragment;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;
    .param p2, "position"    # I

    .prologue
    .line 460
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->updateFragmentVisibility(I)V

    .line 460
    return-void
.end method

.method private updateFragmentVisibility(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 518
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/socialphonebook/activities/ViewPageAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 520
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->mCurrentFragment:Landroid/app/Fragment;

    if-eq v1, v0, :cond_1

    .line 522
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->mCurrentFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 524
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->mCurrentFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 527
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->mCurrentFragment:Landroid/app/Fragment;

    .line 529
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    .line 530
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->mCurrentFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v3}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 531
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->mCurrentFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v3}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 517
    :cond_1
    return-void
.end method

.method private updateFragments(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 513
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;I)V

    .line 514
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->updateFragmentVisibility(I)V

    .line 512
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 466
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerTabs:Lcom/android/contacts/list/ViewPagerTabs;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ViewPagerTabs;->onPageScrollStateChanged(I)V

    .line 465
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerTabs:Lcom/android/contacts/list/ViewPagerTabs;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/list/ViewPagerTabs;->onPageScrolled(IFI)V

    .line 472
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 480
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getTabState(I)Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v0

    .line 486
    .local v0, "currentTab":Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->setCurrentTab(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V

    .line 487
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTabPosition()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->isSearchMode()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->setCurrentItem(IZ)V

    .line 488
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerTabs:Lcom/android/contacts/list/ViewPagerTabs;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTabPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ViewPagerTabs;->onPageSelected(I)V

    .line 490
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->notifyTabStateChange(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;Z)V

    .line 491
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->updateSoftInputVisibility(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V

    .line 492
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mFloatingButtonController:Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;->onTabSelected(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V

    .line 494
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->updateFragments(I)V

    .line 479
    return-void
.end method

.method public onResume(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 505
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPagerTabs:Lcom/android/contacts/list/ViewPagerTabs;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ViewPagerTabs;->onPageSelected(I)V

    .line 507
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mViewPager:Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mActionBarAdapter:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTabPosition()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->isSearchMode()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsViewPager;->setCurrentItem(IZ)V

    .line 508
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->updateFragments(I)V

    .line 509
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method public setFragmentVisibility(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 545
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->mCurrentFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 546
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$ViewPagerListener;->mCurrentFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 544
    :cond_0
    return-void
.end method
