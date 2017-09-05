.class public Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;
.super Landroid/app/DialogFragment;
.source "AutoSyncDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoSyncDialogFragment"
.end annotation


# instance fields
.field private mEnabling:Z


# direct methods
.method static synthetic -get0(Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->mEnabling:Z

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "fm"    # Landroid/app/FragmentManager;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "enabling"    # Z

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 63
    new-instance v1, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;

    invoke-direct {v1}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;-><init>()V

    .line 64
    .local v1, "dialog":Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "enabling"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    invoke-virtual {v1, v0}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {v1, p0, p1}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 61
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "dialog":Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 75
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "enabling"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->mEnabling:Z

    .line 77
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 78
    const/4 v2, 0x5

    .line 77
    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 80
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-boolean v2, p0, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->mEnabling:Z

    if-eqz v2, :cond_0

    .line 81
    const v2, 0x7f090078

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 82
    const v2, 0x7f090079

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 89
    :goto_0
    new-instance v2, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment$1;-><init>(Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;)V

    const v3, 0x104000a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 85
    :cond_0
    const v2, 0x7f09007b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 86
    const v2, 0x7f09007c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 112
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 110
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    const-string/jumbo v0, "enabling"

    iget-boolean v1, p0, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    return-void
.end method
