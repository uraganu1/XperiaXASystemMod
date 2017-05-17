.class Lcom/sonymobile/rcs/service/RcsCoreService$7;
.super Landroid/content/BroadcastReceiver;
.source "RcsCoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/RcsCoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/service/RcsCoreService;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/service/RcsCoreService;)V
    .locals 0

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/sonymobile/rcs/service/RcsCoreService$7;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string/jumbo v2, "level"

    .line 1456
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, "batteryLevel":I
    const-string/jumbo v2, "plugged"

    .line 1457
    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1458
    .local v1, "batteryPlugged":I
    iget-object v2, p0, Lcom/sonymobile/rcs/service/RcsCoreService$7;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    # getter for: Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v2}, Lcom/sonymobile/rcs/service/RcsCoreService;->access$100(Lcom/sonymobile/rcs/service/RcsCoreService;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1462
    :goto_0
    if-eqz v1, :cond_2

    .line 1468
    iget-object v2, p0, Lcom/sonymobile/rcs/service/RcsCoreService$7;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    # invokes: Lcom/sonymobile/rcs/service/RcsCoreService;->unRegisterBatteryLevelReceiver()V
    invoke-static {v2}, Lcom/sonymobile/rcs/service/RcsCoreService;->access$600(Lcom/sonymobile/rcs/service/RcsCoreService;)V

    .line 1470
    :cond_0
    :goto_1
    return-void

    .line 1459
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/service/RcsCoreService$7;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    # getter for: Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v2}, Lcom/sonymobile/rcs/service/RcsCoreService;->access$100(Lcom/sonymobile/rcs/service/RcsCoreService;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Battery level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "% plugged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1463
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/rcs/service/RcsCoreService$7;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    # getter for: Lcom/sonymobile/rcs/service/RcsCoreService;->mMinBatteryLevel:I
    invoke-static {v2}, Lcom/sonymobile/rcs/service/RcsCoreService;->access$300(Lcom/sonymobile/rcs/service/RcsCoreService;)I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 1464
    iget-object v2, p0, Lcom/sonymobile/rcs/service/RcsCoreService$7;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    # setter for: Lcom/sonymobile/rcs/service/RcsCoreService;->disconnectedByBattery:Z
    invoke-static {v2, v5}, Lcom/sonymobile/rcs/service/RcsCoreService;->access$402(Lcom/sonymobile/rcs/service/RcsCoreService;Z)Z

    .line 1465
    invoke-static {p1}, Lcom/sonymobile/rcs/service/LauncherUtils;->stopRcsService(Landroid/content/Context;)V

    goto :goto_1
.end method
