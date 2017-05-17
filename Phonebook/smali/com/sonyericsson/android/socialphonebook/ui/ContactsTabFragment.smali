.class public Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;
.super Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;
.source "ContactsTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment$ContactsListFragmentListener;
    }
.end annotation


# static fields
.field private static final SUBACTIVITY_EDIT_CONTACT:I = 0x3

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment$ContactsListFragmentListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment$ContactsListFragmentListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment$ContactsListFragmentListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setListener(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$OnContactsListActionListener;)V

    .line 86
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 93
    packed-switch p1, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 95
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setSelectedContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0e00dc

    .line 68
    const v3, 0x7f040056

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 71
    .local v0, "fm":Landroid/app/FragmentManager;
    const/4 v2, 0x0

    .line 72
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    .line 74
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    if-nez v3, :cond_0

    .line 75
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    .line 76
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 77
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-virtual {v2, v5, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 79
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 82
    :cond_1
    return-object v1
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->onHiddenChanged(Z)V

    .line 37
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsTabFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 35
    return-void
.end method
