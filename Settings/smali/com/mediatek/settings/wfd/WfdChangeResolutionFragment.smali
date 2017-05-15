.class public final Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;
.super Landroid/app/DialogFragment;
.source "WfdChangeResolutionFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCurrentResolution:I

.field private mWhichIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 56
    iput v0, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mCurrentResolution:I

    .line 57
    iput v0, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mWhichIndex:I

    .line 52
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 77
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 78
    sget-object v1, Lcom/mediatek/settings/wfd/WfdSettingsExt;->DEVICE_RESOLUTION_LIST:Ljava/util/ArrayList;

    iget v2, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mWhichIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    .local v0, "userChoice":I
    const-string/jumbo v1, "@M_WfdChangeResolutionFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User click ok button, set resolution as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 82
    const-string/jumbo v2, "wifi_display_max_resolution"

    .line 81
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    .end local v0    # "userChoice":I
    :goto_0
    return-void

    .line 84
    :cond_0
    iput p2, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mWhichIndex:I

    .line 85
    const-string/jumbo v1, "@M_WfdChangeResolutionFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User select the item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mWhichIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 62
    const-string/jumbo v3, "wifi_display_max_resolution"

    const/4 v4, 0x0

    .line 61
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mCurrentResolution:I

    .line 63
    const-string/jumbo v2, "@M_WfdChangeResolutionFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "create dialog, current resolution is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mCurrentResolution:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const v0, 0x7f0a0045

    .line 66
    .local v0, "resolutionArray":I
    sget-object v2, Lcom/mediatek/settings/wfd/WfdSettingsExt;->DEVICE_RESOLUTION_LIST:Ljava/util/ArrayList;

    iget v3, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mCurrentResolution:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 67
    .local v1, "resolutionIndex":I
    iput v1, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mWhichIndex:I

    .line 68
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    const v3, 0x7f0b0095

    .line 68
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 72
    const v3, 0x104000a

    .line 68
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 92
    sget-object v0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->DEVICE_RESOLUTION_LIST:Ljava/util/ArrayList;

    iget v1, p0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->mCurrentResolution:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->dismiss()V

    .line 90
    :cond_0
    return-void
.end method
