.class public Lcom/sonyericsson/conversations/ui/controller/SettingsController;
.super Ljava/lang/Object;
.source "SettingsController.java"


# instance fields
.field protected mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

.field protected mFragmentManager:Landroid/app/FragmentManager;

.field protected mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/SettingsActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/sonyericsson/conversations/ui/SettingsActivity;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 21
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    .line 23
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    .line 26
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    .line 27
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 25
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 43
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mActivity:Lcom/sonyericsson/conversations/ui/SettingsActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 44
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 45
    const/16 v1, 0xf

    .line 47
    .local v1, "flag":I
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 42
    .end local v1    # "flag":I
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->removeFragments()V

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->initActionBar()V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->setSettingsFragmentVisibility(Z)V

    .line 30
    return-void
.end method

.method protected removeFragments()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->setSettingsFragmentVisibility(Z)V

    .line 38
    return-void
.end method

.method protected setSettingsFragmentVisibility(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const/4 v3, 0x0

    .line 52
    if-eqz p1, :cond_2

    .line 53
    const-string/jumbo v2, "Settings"

    invoke-static {v2}, Lcom/sonymobile/conversations/analytics/Analytics;->pushAppView(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    if-nez v2, :cond_0

    .line 55
    new-instance v2, Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 60
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    const v3, 0x1020002

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 61
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 51
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 65
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 66
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 68
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 69
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->mSettingsFragment:Lcom/sonyericsson/conversations/ui/SettingsFragment;

    goto :goto_0
.end method
