.class public Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;
.super Landroid/app/DialogFragment;
.source "MissingPrefixDialogFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090280

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 33
    const v1, 0x7f090281

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 34
    const v1, 0x7f0901f9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 36
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;)V

    .line 35
    const v2, 0x7f090200

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
