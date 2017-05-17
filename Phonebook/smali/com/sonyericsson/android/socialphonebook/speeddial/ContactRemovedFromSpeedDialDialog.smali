.class public Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;
.super Landroid/app/DialogFragment;
.source "ContactRemovedFromSpeedDialDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog$OnDialogDismissListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mDialogDismissListener:Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog$OnDialogDismissListener;

.field private mResultIntent:Landroid/content/Intent;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;)Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog$OnDialogDismissListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;->mDialogDismissListener:Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog$OnDialogDismissListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;->mResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;->mResultIntent:Landroid/content/Intent;

    .line 45
    return-void
.end method

.method public static newInstance(Landroid/content/Intent;)Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;
    .locals 1
    .param p0, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 40
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;-><init>(Landroid/content/Intent;)V

    .line 42
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 53
    .local v0, "parentFragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog$OnDialogDismissListener;

    if-eqz v1, :cond_0

    .line 54
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog$OnDialogDismissListener;

    .end local v0    # "parentFragment":Landroid/app/Fragment;
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;->mDialogDismissListener:Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog$OnDialogDismissListener;

    .line 50
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09028c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 62
    const v1, 0x7f0903a6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 65
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog$1;-><init>(Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;)V

    .line 64
    const v2, 0x7f090200

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
