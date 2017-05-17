.class public Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "AddNewAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddNewAccountListener;,
        Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;,
        Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$1;
    }
.end annotation


# static fields
.field private static final ARG_WRITABLE_ONLY:Ljava/lang/String; = "arg_writable_only"

.field private static final TAG:Ljava/lang/String; = "AddNewAccountDialogFragment"


# instance fields
.field private mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

.field private mAddAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;

.field private mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/app/Activity;

.field private mIsPaused:Z

.field private mListener:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddNewAccountListener;

.field private mWritableOnly:Z


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;)Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mAddAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mIsPaused:Z

    return v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;)Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddNewAccountListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddNewAccountListener;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 31
    return-void
.end method

.method public static newInstance(Z)Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;
    .locals 3
    .param p0, "writableOnly"    # Z

    .prologue
    .line 57
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;-><init>()V

    .line 58
    .local v1, "frag":Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "arg_writable_only"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 62
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 68
    instance-of v0, p1, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddNewAccountListener;

    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddNewAccountListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddNewAccountListener;

    .line 66
    return-void

    .line 71
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    const-string/jumbo v2, " must implement AddNewAccountDialogFragment.AddNewAccountListener"

    .line 71
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
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddNewAccountListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddNewAccountListener;->onAddNewAccountCancelled()V

    .line 132
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 130
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mContext:Landroid/app/Activity;

    .line 80
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    .line 81
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "arg_writable_only"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mWritableOnly:Z

    .line 77
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "accountTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mAddAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;

    .line 92
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    const v2, 0x7f0902e5

    .line 92
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mAddAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x0

    .line 92
    invoke-virtual {v1, v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mIsPaused:Z

    .line 99
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 107
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mIsPaused:Z

    .line 110
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mWritableOnly:Z

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getRemoteAccountTypeStrings(Z)[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "accountTypes":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 116
    :cond_0
    const-string/jumbo v1, "AddNewAccountDialogFragment"

    const-string/jumbo v2, "No account types to display."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->dismiss()V

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddNewAccountListener;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddNewAccountListener;->onAddNewAccountCancelled()V

    .line 120
    return-void

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mAddAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;->setNotifyOnChange(Z)V

    .line 124
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mAddAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;->clear()V

    .line 125
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mAddAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;->setNotifyOnChange(Z)V

    .line 126
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->mAddAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddAccountAdapter;->addAll([Ljava/lang/Object;)V

    .line 105
    return-void
.end method
