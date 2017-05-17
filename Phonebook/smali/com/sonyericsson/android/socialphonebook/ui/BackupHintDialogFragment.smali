.class public Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;
.super Landroid/app/DialogFragment;
.source "BackupHintDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$BackupHintListener;,
        Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$1;,
        Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$2;
    }
.end annotation


# instance fields
.field private mAddAccountClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mKeepLocalClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mListener:Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$BackupHintListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;)Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$BackupHintListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$BackupHintListener;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 28
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;)V

    .line 27
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;->mKeepLocalClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 37
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$2;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;)V

    .line 36
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;->mAddAccountClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 17
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 48
    instance-of v0, p1, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$BackupHintListener;

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$BackupHintListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$BackupHintListener;

    .line 46
    return-void

    .line 51
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    const-string/jumbo v2, " must implement BackupHintDialogFragment.BackupHintListener"

    .line 51
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
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$BackupHintListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$BackupHintListener;->onBackupHintCancelled()V

    .line 71
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 69
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    const v1, 0x7f0902e8

    .line 58
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;->mKeepLocalClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 61
    const v2, 0x7f0902ed

    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;->mAddAccountClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 63
    const v2, 0x7f0902ee

    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
