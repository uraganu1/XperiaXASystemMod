.class Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;
.super Ljava/lang/Object;
.source "BandwidthUsage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;

.field final synthetic val$bytesPicker:Landroid/widget/NumberPicker;

.field final synthetic val$target:Lcom/mediatek/wifi/hotspot/BandwidthUsage;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;Landroid/widget/NumberPicker;Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;
    .param p2, "val$bytesPicker"    # Landroid/widget/NumberPicker;
    .param p3, "val$target"    # Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;->this$1:Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;

    iput-object p2, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;->val$target:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 435
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 436
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x100000

    mul-long v0, v2, v4

    .line 437
    .local v0, "bytes":J
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;->val$target:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-static {v2}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->-get0(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Lcom/mediatek/widget/ChartBandwidthUsageView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setLimitBytes(J)V

    .line 438
    const-string/jumbo v2, "@M_BandwidthUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set Limit Bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;->val$target:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-static {v2}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->-get0(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Lcom/mediatek/widget/ChartBandwidthUsageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/widget/ChartBandwidthUsageView;->focusSweepLimit()V

    .line 440
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;->val$target:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-static {v2}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->-get0(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Lcom/mediatek/widget/ChartBandwidthUsageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/widget/ChartBandwidthUsageView;->updateVertAxisBounds(Lcom/mediatek/widget/ChartSweepView;)V

    .line 441
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;->val$target:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->-wrap1(Lcom/mediatek/wifi/hotspot/BandwidthUsage;Z)V

    .line 433
    return-void
.end method
