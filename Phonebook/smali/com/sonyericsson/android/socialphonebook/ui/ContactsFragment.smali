.class public Lcom/sonyericsson/android/socialphonebook/ui/ContactsFragment;
.super Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;
.source "ContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ui/ContactsFragment$ContactsListFragmentListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFragment$ContactsListFragmentListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFragment$ContactsListFragmentListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFragment;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFragment$ContactsListFragmentListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setListener(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$OnContactsListActionListener;)V

    .line 77
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0e00dc

    .line 61
    const v3, 0x7f040050

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 63
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 64
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    .line 66
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    if-nez v3, :cond_0

    .line 67
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    .line 68
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 69
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-virtual {v2, v5, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 70
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 73
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    return-object v1
.end method
