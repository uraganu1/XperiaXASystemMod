.class public Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;
.super Landroid/app/DialogFragment;
.source "AppUsageDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmForceStopFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;

    invoke-direct {v0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;-><init>()V

    .line 261
    .local v0, "fragment":Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 267
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b061a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 267
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 269
    const v1, 0x1010355

    .line 267
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b061b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 267
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 271
    new-instance v1, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment$1;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;)V

    const v2, 0x7f0b05fc

    .line 267
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 277
    const v1, 0x7f0b05fd

    const/4 v2, 0x0

    .line 267
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
