.class public Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;
.super Landroid/app/Fragment;
.source "GroupsTabFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowserActionListener;


# static fields
.field private static final KEY_MENU_VISIBLE:Ljava/lang/String; = "keyMenuVisible"


# instance fields
.field private mGroupBrowseListFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

.field private mGroupDetailFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

.field private mMenuVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mMenuVisible:Z

    .line 23
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0e0186

    const v5, 0x7f0e0184

    .line 36
    const v3, 0x7f040093

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 37
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 39
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mGroupBrowseListFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    .line 41
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mGroupBrowseListFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    if-nez v3, :cond_0

    .line 42
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mGroupBrowseListFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    .line 43
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 44
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mGroupBrowseListFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-virtual {v2, v5, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 45
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 48
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    invoke-virtual {v0, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mGroupDetailFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    .line 50
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mGroupDetailFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    if-nez v3, :cond_1

    .line 51
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mGroupDetailFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    .line 52
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 53
    .restart local v2    # "transaction":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mGroupDetailFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-virtual {v2, v6, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 54
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 57
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_1
    if-eqz p3, :cond_2

    .line 58
    const-string/jumbo v3, "keyMenuVisible"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mMenuVisible:Z

    .line 61
    :cond_2
    return-object v1
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 71
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 96
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mMenuVisible:Z

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->setMenuVisibility(Z)V

    .line 94
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 67
    const-string/jumbo v0, "keyMenuVisible"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mMenuVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    return-void
.end method

.method public onViewGroupAction(Landroid/net/Uri;)V
    .locals 1
    .param p1, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mGroupDetailFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mGroupDetailFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->loadGroup(Landroid/net/Uri;)V

    .line 77
    :cond_0
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 2
    .param p1, "menuVisible"    # Z

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mMenuVisible:Z

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mGroupBrowseListFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mGroupBrowseListFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mMenuVisible:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->setMenuVisibility(Z)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mGroupDetailFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mGroupDetailFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/GroupsTabFragment;->mMenuVisible:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->setMenuVisibility(Z)V

    .line 84
    :cond_1
    return-void
.end method
