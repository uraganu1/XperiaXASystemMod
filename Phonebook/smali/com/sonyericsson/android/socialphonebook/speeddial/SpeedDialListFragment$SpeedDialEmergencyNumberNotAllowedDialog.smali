.class public Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$SpeedDialEmergencyNumberNotAllowedDialog;
.super Landroid/app/DialogFragment;
.source "SpeedDialListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeedDialEmergencyNumberNotAllowedDialog"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$SpeedDialEmergencyNumberNotAllowedDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 407
    const-class v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$SpeedDialEmergencyNumberNotAllowedDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$SpeedDialEmergencyNumberNotAllowedDialog;->TAG:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$SpeedDialEmergencyNumberNotAllowedDialog;
    .locals 1

    .prologue
    .line 411
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$SpeedDialEmergencyNumberNotAllowedDialog;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$SpeedDialEmergencyNumberNotAllowedDialog;-><init>()V

    .line 412
    .local v0, "instance":Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$SpeedDialEmergencyNumberNotAllowedDialog;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 417
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$SpeedDialEmergencyNumberNotAllowedDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 419
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09028c

    .line 418
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 420
    const v1, 0x7f0903a5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 421
    const v1, 0x7f0901f9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 422
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
