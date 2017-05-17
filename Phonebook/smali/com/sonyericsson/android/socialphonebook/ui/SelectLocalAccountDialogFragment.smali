.class public Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectLocalAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$SelectLocalAccountListener;,
        Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;,
        Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$1;
    }
.end annotation


# static fields
.field private static final ARG_IS_STARTED_FOR_SIM:Ljava/lang/String; = "arg_local_accounts_key"


# instance fields
.field private mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

.field private mChooseAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;

.field private mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mIsStartedToIncludeSimAccount:Z

.field private mListener:Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$SelectLocalAccountListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;)Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mChooseAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;)Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$SelectLocalAccountListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$SelectLocalAccountListener;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 31
    return-void
.end method

.method public static newInstance(Z)Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;
    .locals 3
    .param p0, "isStartedForSim"    # Z

    .prologue
    .line 55
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;-><init>()V

    .line 56
    .local v1, "frag":Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "arg_local_accounts_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 66
    instance-of v0, p1, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$SelectLocalAccountListener;

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$SelectLocalAccountListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$SelectLocalAccountListener;

    .line 64
    return-void

    .line 69
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 70
    const-string/jumbo v2, " must implement "

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    const-string/jumbo v2, "SelectLocalAccountDialogFragment.SelectLocalAccountListener"

    .line 69
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
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$SelectLocalAccountListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$SelectLocalAccountListener;->onSelectLocalAccountCancelled()V

    .line 124
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 122
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mContext:Landroid/content/Context;

    .line 79
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "arg_local_accounts_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mIsStartedToIncludeSimAccount:Z

    .line 76
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, "localAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mChooseAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;

    .line 90
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    const v2, 0x7f0902e6

    .line 90
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mChooseAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x0

    .line 90
    invoke-virtual {v1, v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 101
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mIsStartedToIncludeSimAccount:Z

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getLocalWritableAccounts(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    .local v0, "localAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 104
    .local v1, "numLocalAccounts":I
    if-nez v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->dismiss()V

    .line 111
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$SelectLocalAccountListener;

    invoke-interface {v2}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$SelectLocalAccountListener;->onSelectLocalAccountCancelled()V

    .line 112
    return-void

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mChooseAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;->setNotifyOnChange(Z)V

    .line 116
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mChooseAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;->clear()V

    .line 117
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mChooseAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;->setNotifyOnChange(Z)V

    .line 118
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->mChooseAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$ChooseAccountAdapter;->addAll(Ljava/util/Collection;)V

    .line 97
    return-void
.end method
