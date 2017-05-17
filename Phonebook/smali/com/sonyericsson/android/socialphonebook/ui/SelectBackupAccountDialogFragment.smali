.class public Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectBackupAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$SelectBackupAccountListener;,
        Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;,
        Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$1;
    }
.end annotation


# static fields
.field private static final ARG_IS_STARTED_FOR_SIM:Ljava/lang/String; = "arg_is_started_for_sim"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

.field private mChooseAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;

.field private mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mContext:Landroid/app/Activity;

.field private mIsPaused:Z

.field private mIsStartedToIncludeSimAccount:Z

.field private mListener:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$SelectBackupAccountListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;)Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mChooseAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mIsPaused:Z

    return v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;)Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$SelectBackupAccountListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$SelectBackupAccountListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 53
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 36
    return-void
.end method

.method private getAccountsListToDisplay(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "backupAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .local p2, "localAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "accountsToDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    return-object v0
.end method

.method public static newInstance(Z)Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;
    .locals 3
    .param p0, "isStartedForSim"    # Z

    .prologue
    .line 65
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;-><init>()V

    .line 66
    .local v1, "frag":Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "arg_is_started_for_sim"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 76
    instance-of v0, p1, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$SelectBackupAccountListener;

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$SelectBackupAccountListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$SelectBackupAccountListener;

    .line 74
    return-void

    .line 79
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    const-string/jumbo v2, " must implement "

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    const-string/jumbo v2, "SelectBackupAccountDialogFragment.SelectBackupAccountListener"

    .line 79
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
    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$SelectBackupAccountListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$SelectBackupAccountListener;->onSelectBackupAccountCancelled()V

    .line 162
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 160
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mContext:Landroid/app/Activity;

    .line 89
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "arg_is_started_for_sim"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mIsStartedToIncludeSimAccount:Z

    .line 86
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v2, "backupAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v4, "localAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->getAccountsListToDisplay(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 104
    .local v1, "accountsToDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v5, v6, v1}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mChooseAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;

    .line 106
    const/high16 v5, 0x7f040000

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, "accountSelectionDialog":Landroid/view/View;
    const v5, 0x102000a

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 109
    .local v3, "listView":Landroid/widget/ListView;
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mChooseAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mIsPaused:Z

    .line 116
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 123
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 124
    iput-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mIsPaused:Z

    .line 127
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getRemoteAccountsToBackup()Ljava/util/ArrayList;

    move-result-object v1

    .line 128
    .local v1, "backupAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 130
    .local v3, "numRemoteAccounts":I
    if-nez v3, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->dismiss()V

    .line 135
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$SelectBackupAccountListener;

    invoke-interface {v4}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$SelectBackupAccountListener;->onSelectBackupAccountCancelled()V

    .line 136
    return-void

    .line 140
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    iget-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mIsStartedToIncludeSimAccount:Z

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getLocalWritableAccounts(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 142
    .local v2, "localAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->getAccountsListToDisplay(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 144
    .local v0, "accountsToDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mChooseAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;

    invoke-virtual {v4, v6}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->setNotifyOnChange(Z)V

    .line 145
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mChooseAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->clear()V

    .line 146
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mChooseAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->setNotifyOnChange(Z)V

    .line 147
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->mChooseAccountAdapter:Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$ChooseAccountAdapter;->addAll(Ljava/util/Collection;)V

    .line 122
    return-void
.end method
