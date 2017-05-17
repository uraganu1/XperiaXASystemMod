.class public Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;
.super Landroid/app/DialogFragment;
.source "AutoSyncDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$AutoSyncListener;,
        Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$1;
    }
.end annotation


# static fields
.field private static final KEY_TURN_ON_AUTO_SYNC:Ljava/lang/String; = "key_turn_on_auto_sync"


# instance fields
.field private mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mListener:Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$AutoSyncListener;

.field mTurnOnAutoSync:Z


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;->setMasterSync(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 34
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 23
    return-void
.end method

.method private setMasterSync(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 86
    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 85
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 45
    instance-of v0, p1, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$AutoSyncListener;

    if-eqz v0, :cond_0

    .line 46
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$AutoSyncListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$AutoSyncListener;

    .line 43
    return-void

    .line 48
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    const-string/jumbo v2, " must implement AutoSyncDialogFragment.AutoSyncListener"

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$AutoSyncListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$AutoSyncListener;->onAutoSyncClosed()V

    .line 98
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    const-string/jumbo v0, "key_turn_on_auto_sync"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;->mTurnOnAutoSync:Z

    .line 54
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 64
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04005a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 65
    .local v2, "syncView":Landroid/view/View;
    const v3, 0x7f0e00eb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 66
    .local v0, "autoSyncCheckbox":Landroid/widget/CheckBox;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;->mTurnOnAutoSync:Z

    .line 67
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;->mTurnOnAutoSync:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$2;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    const v4, 0x7f0902e9

    .line 76
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 78
    const v4, 0x7f0902ea

    .line 76
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 81
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v5, 0x7f0902ec

    .line 76
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    const-string/jumbo v0, "key_turn_on_auto_sync"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;->mTurnOnAutoSync:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    return-void
.end method
