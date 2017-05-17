.class public Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "SimImportProgressDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static final ARG_NUMBER_OF_CONTACTS:Ljava/lang/String; = "numberOfSimContacts"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment$Listener;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(II)Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;
    .locals 3
    .param p0, "numberOfSimContacts"    # I
    .param p1, "subscription"    # I

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "numberOfSimContacts"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    const-string/jumbo v2, "subscription"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;-><init>()V

    .line 40
    .local v1, "dialog":Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v1
.end method


# virtual methods
.method public incrementProgressDialog(I)V
    .locals 1
    .param p1, "incrementValue"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 80
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 47
    instance-of v0, p1, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment$Listener;

    if-eqz v0, :cond_0

    .line 48
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment$Listener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment$Listener;

    .line 45
    return-void

    .line 50
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 51
    const-class v2, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment$Listener;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 50
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
    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment$Listener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment$Listener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment$Listener;->onProgressCanceled()V

    .line 87
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment$Listener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment$Listener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment$Listener;->onProgressCanceled()V

    .line 101
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v5, "numberOfSimContacts"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 60
    .local v2, "numberOfSimContacts":I
    const-string/jumbo v5, "subscription"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 62
    .local v3, "subscription":I
    const v5, 0x7f0902b7

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/sonyericsson/android/socialphonebook/util/SimStringUtil;->getImportingSimContacts(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "message":Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 66
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 69
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 70
    const/high16 v6, 0x1040000

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 69
    const/4 v7, -0x2

    invoke-virtual {v5, v7, v6, p0}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 71
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 72
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const v6, 0x7f09029a

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 73
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 74
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 75
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 77
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v5
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment$Listener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment$Listener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/SimImportProgressDialogFragment$Listener;->onProgressDismissed()V

    .line 94
    :cond_0
    return-void
.end method
