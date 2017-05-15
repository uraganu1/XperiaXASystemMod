.class public Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;
.super Landroid/app/DialogFragment;
.source "DataRoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoamingWarningDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance(II)Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;
    .locals 3
    .param p0, "titleId"    # I
    .param p1, "messageId"    # I

    .prologue
    .line 558
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 559
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "titleId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 560
    const-string/jumbo v2, "messageId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    new-instance v1, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;

    invoke-direct {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;-><init>()V

    .line 562
    .local v1, "fragment":Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;
    invoke-virtual {v1, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 563
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 579
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 581
    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;->getTargetRequestCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 580
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 577
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 568
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 569
    .local v0, "adb":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "titleId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 570
    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "messageId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 569
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 571
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 569
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 572
    const v2, 0x104000a

    .line 569
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
