.class public Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;
.super Landroid/app/DialogFragment;
.source "NoContactsDialogFragment.java"


# static fields
.field private static final ARG_ACCOUNT_NAME:Ljava/lang/String; = "ArgAccountName"

.field private static final ARG_ACCOUNT_TYPE:Ljava/lang/String; = "ArgAccountType"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private getNoContactsInfoMessageResourceId()I
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->mAccountName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->isLocalAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const v0, 0x7f090369

    return v0

    .line 65
    :cond_0
    const v0, 0x7f09036b

    return v0
.end method

.method private getNoContactsInfoTitleResourceId()I
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->mAccountName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->isLocalAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const v0, 0x7f090368

    return v0

    .line 57
    :cond_0
    const v0, 0x7f09036a

    return v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;
    .locals 3
    .param p0, "accountType"    # Ljava/lang/String;
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;-><init>()V

    .line 30
    .local v1, "frag":Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "ArgAccountType"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v2, "ArgAccountName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "ArgAccountType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->mAccountType:Ljava/lang/String;

    .line 43
    const-string/jumbo v1, "ArgAccountName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->mAccountName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->getNoContactsInfoTitleResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 49
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->getNoContactsInfoMessageResourceId()I

    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 50
    const v1, 0x104000a

    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
