.class public Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity$GroupInfoLoadedListener;
    }
.end annotation


# static fields
.field public static final ACTION_SAVE_COMPLETED:Ljava/lang/String; = "saveCompleted"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

.field private mGroupName:Ljava/lang/String;

.field private mGroupUri:Landroid/net/Uri;


# direct methods
.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mAccountName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mAccountType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mGroupName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->initActionBar()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mAccountType:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mAccountName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->isLocalAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090278

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 74
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 67
    instance-of v0, p1, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity$GroupInfoLoadedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity$GroupInfoLoadedListener;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity$GroupInfoLoadedListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->setListener(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$OnGroupLoadedListener;)V

    .line 66
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mGroupUri:Landroid/net/Uri;

    .line 36
    const-string/jumbo v1, "saveCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->finish()V

    .line 38
    return-void

    .line 40
    :cond_0
    const v1, 0x7f040082

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    .line 43
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 47
    const v2, 0x7f0e0163

    .line 46
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    .line 49
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->loadGroup(Landroid/net/Uri;)V

    .line 50
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->mFragment:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    new-instance v2, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity$GroupInfoLoadedListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity$GroupInfoLoadedListener;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity$GroupInfoLoadedListener;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->setListener(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$OnGroupLoadedListener;)V

    .line 31
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 56
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 62
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 58
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->finish()V

    .line 59
    const/4 v0, 0x1

    return v0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
