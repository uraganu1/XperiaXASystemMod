.class Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$2;
.super Ljava/lang/Object;
.source "BatteryThresholdHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$sb:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;
    .param p2, "val$sb"    # Landroid/widget/SeekBar;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$2;->this$0:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    iput-object p2, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$2;->val$sb:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 92
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$2;->this$0:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$2;->val$sb:Landroid/widget/SeekBar;

    invoke-static {v1, v2}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->-wrap0(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;Landroid/widget/SeekBar;)I

    move-result v0

    .line 94
    .local v0, "level":I
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$2;->this$0:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->-get0(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;)Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;->setValue(I)V

    .line 95
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$2;->this$0:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->-get1(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;)Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$2;->this$0:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->-get1(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;)Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;->onLevelUpdated(I)V

    .line 98
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 91
    .end local v0    # "level":I
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 100
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
