.class Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$1;
.super Ljava/lang/Object;
.source "BatteryThresholdHelper.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->show(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;
    .param p2, "val$tv"    # Landroid/widget/TextView;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$1;->this$0:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    iput-object p2, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$1;->val$tv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$1;->this$0:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$1;->val$tv:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->-wrap1(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    .line 83
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 79
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 75
    return-void
.end method
