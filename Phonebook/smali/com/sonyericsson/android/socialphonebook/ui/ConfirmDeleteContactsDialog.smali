.class public Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;
.super Landroid/app/DialogFragment;
.source "ConfirmDeleteContactsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog$DeleteContactsListener;
    }
.end annotation


# static fields
.field private static final ARG_CHECKED_CONTACTS_COUNT:Ljava/lang/String; = "checkedContactsCount"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog$DeleteContactsListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;)Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog$DeleteContactsListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog$DeleteContactsListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;->TAG:Ljava/lang/String;

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

.method public static newInstance(I)Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;
    .locals 3
    .param p0, "checkedContactsCount"    # I

    .prologue
    .line 47
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;-><init>()V

    .line 48
    .local v1, "fragment":Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "checkedContactsCount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 57
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog$DeleteContactsListener;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog$DeleteContactsListener;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog$DeleteContactsListener;

    .line 55
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Caller must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    const-class v2, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog$DeleteContactsListener;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "checkedContactsCount"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 68
    .local v1, "checkedContactsCount":I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 70
    const v3, 0x7f0f0001

    .line 69
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 73
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;)V

    .line 72
    const v3, 0x7f09012a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    const v2, 0x7f0901f9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
