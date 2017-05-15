.class public Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;
.super Landroid/app/DialogFragment;
.source "BandwidthUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/hotspot/BandwidthUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LimitEditorFragment"
.end annotation


# static fields
.field private static final KEY_LIMIT_BYTES:Ljava/lang/String; = "limit_bytes"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/mediatek/wifi/hotspot/BandwidthUsage;J)V
    .locals 5
    .param p0, "parent"    # Lcom/mediatek/wifi/hotspot/BandwidthUsage;
    .param p1, "limitBytes"    # J

    .prologue
    .line 401
    new-instance v1, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;

    invoke-direct {v1}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;-><init>()V

    .line 402
    .local v1, "dialog":Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "limit_bytes"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 404
    invoke-virtual {v1, v0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 405
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 406
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "limitEditor"

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 400
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 412
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    .line 415
    .local v6, "target":Lcom/mediatek/wifi/hotspot/BandwidthUsage;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 416
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 418
    .local v3, "dialogInflater":Landroid/view/LayoutInflater;
    const v9, 0x7f040017

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 419
    .local v8, "view":Landroid/view/View;
    const v9, 0x7f130029

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    .line 420
    .local v1, "bytesPicker":Landroid/widget/NumberPicker;
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "limit_bytes"

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 421
    .local v4, "limitBytes":J
    const/16 v9, 0xa

    invoke-virtual {v1, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 422
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 424
    const-wide/32 v10, 0x100000

    div-long v10, v4, v10

    long-to-int v9, v10

    invoke-virtual {v1, v9}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 425
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 426
    const v9, 0x7f13002a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 427
    .local v7, "text":Landroid/widget/TextView;
    const v9, 0x7f0b007e

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 429
    const v9, 0x7f0b0940

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 430
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 432
    new-instance v9, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;

    invoke-direct {v9, p0, v1, v6}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;Landroid/widget/NumberPicker;Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    .line 431
    const v10, 0x7f0b093e

    invoke-virtual {v0, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 445
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9
.end method
