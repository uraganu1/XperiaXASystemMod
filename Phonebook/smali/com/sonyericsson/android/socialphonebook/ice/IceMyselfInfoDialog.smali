.class public Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;
.super Landroid/app/DialogFragment;
.source "IceMyselfInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog$Listener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog$Listener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;)Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog$Listener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog$Listener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private createMyselfMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090340

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    const v1, 0x7f090341

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog$Listener;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog$Listener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Target fragment must implement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 50
    const-class v3, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog$Listener;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09033f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;->createMyselfMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 59
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;)V

    const v2, 0x7f090342

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    const v1, 0x7f090129

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
