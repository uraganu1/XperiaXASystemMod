.class public Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;,
        Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$SelectAccountListener;,
        Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$1;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

.field private mAccountsAdapter:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;

.field final mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$SelectAccountListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;)Lcom/android/contacts/common/model/AccountTypeManager;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;)Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->mAccountsAdapter:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;)Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$SelectAccountListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$SelectAccountListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 92
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 34
    return-void
.end method

.method private getAvailableAccounts()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 75
    invoke-static {v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    .line 78
    .local v0, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v3, "availableAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v4

    .line 82
    .local v4, "writable":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "adnAccount$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 83
    .local v1, "adnAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v5, v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 84
    const-string/jumbo v5, "com.sonyericsson.sdncontacts"

    iget-object v6, v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 85
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    .end local v1    # "adnAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_1
    return-object v3
.end method

.method public static newInstance()Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;-><init>()V

    .line 46
    .local v0, "frag":Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 52
    instance-of v0, p1, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$SelectAccountListener;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$SelectAccountListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$SelectAccountListener;

    .line 50
    return-void

    .line 55
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    const-string/jumbo v2, " must implement SelectAccountDialogFragment.SelectAccountListener"

    .line 55
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
    .line 103
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$SelectAccountListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$SelectAccountListener;->onCancel()V

    .line 102
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->mContext:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 66
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->getAvailableAccounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;-><init>(Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->mAccountsAdapter:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;

    .line 68
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    const v1, 0x7f090264

    .line 68
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->mAccountsAdapter:Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$AvailableAccountsAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, 0x0

    .line 68
    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
