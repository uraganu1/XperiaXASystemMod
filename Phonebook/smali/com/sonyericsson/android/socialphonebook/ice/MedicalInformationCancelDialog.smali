.class public Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;
.super Landroid/app/DialogFragment;
.source "MedicalInformationCancelDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog$Listener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog$Listener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;)Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog$Listener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog$Listener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;-><init>()V

    .line 32
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 40
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog$Listener;

    if-eqz v1, :cond_0

    .line 41
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog$Listener;

    .end local v0    # "fragment":Landroid/app/Fragment;
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog$Listener;

    .line 36
    return-void

    .line 43
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must implement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 44
    const-class v3, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog$Listener;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    const v2, 0x1010355

    .line 50
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 52
    const v2, 0x7f090162

    .line 50
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 54
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;)V

    .line 53
    const v3, 0x7f090200

    .line 50
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 59
    const v2, 0x7f0901f9

    const/4 v3, 0x0

    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 60
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method
