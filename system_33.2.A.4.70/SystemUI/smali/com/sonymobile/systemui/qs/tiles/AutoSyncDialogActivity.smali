.class public Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity;
.super Landroid/app/Activity;
.source "AutoSyncDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 30
    .local v1, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 31
    .local v0, "config":Z
    if-eqz v1, :cond_0

    .line 32
    const-string/jumbo v2, "enabling"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 34
    .end local v0    # "config":Z
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 35
    const-string/jumbo v3, "AutoSyncDialogFragment"

    .line 34
    invoke-static {v2, v3, v0}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;Z)V

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 41
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 43
    .local v1, "fm":Landroid/app/FragmentManager;
    const-string/jumbo v2, "AutoSyncDialogFragment"

    .line 42
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 44
    .local v0, "firstfragment":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 39
    :cond_0
    return-void
.end method
