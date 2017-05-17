.class Lcom/sonymobile/rcs/service/RcsCoreService$6;
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
    .line 1437
    iput-object p1, p0, Lcom/sonymobile/rcs/service/RcsCoreService$6;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1440
    iget-object v1, p0, Lcom/sonymobile/rcs/service/RcsCoreService$6;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    # invokes: Lcom/sonymobile/rcs/service/RcsCoreService;->getBatteryLevel()I
    invoke-static {v1}, Lcom/sonymobile/rcs/service/RcsCoreService;->access$200(Lcom/sonymobile/rcs/service/RcsCoreService;)I

    move-result v0

    .line 1442
    .local v0, "level":I
    iget-object v1, p0, Lcom/sonymobile/rcs/service/RcsCoreService$6;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    # getter for: Lcom/sonymobile/rcs/service/RcsCoreService;->mMinBatteryLevel:I
    invoke-static {v1}, Lcom/sonymobile/rcs/service/RcsCoreService;->access$300(Lcom/sonymobile/rcs/service/RcsCoreService;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1446
    iget-object v1, p0, Lcom/sonymobile/rcs/service/RcsCoreService$6;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    iget-object v2, p0, Lcom/sonymobile/rcs/service/RcsCoreService$6;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    # getter for: Lcom/sonymobile/rcs/service/RcsCoreService;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/sonymobile/rcs/service/RcsCoreService;->access$500(Lcom/sonymobile/rcs/service/RcsCoreService;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/rcs/service/RcsCoreService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1450
    :goto_0
    return-void

    .line 1443
    :cond_0
    invoke-static {p1}, Lcom/sonymobile/rcs/service/LauncherUtils;->stopRcsService(Landroid/content/Context;)V

    .line 1444
    iget-object v1, p0, Lcom/sonymobile/rcs/service/RcsCoreService$6;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    const/4 v2, 0x1

    # setter for: Lcom/sonymobile/rcs/service/RcsCoreService;->disconnectedByBattery:Z
    invoke-static {v1, v2}, Lcom/sonymobile/rcs/service/RcsCoreService;->access$402(Lcom/sonymobile/rcs/service/RcsCoreService;Z)Z

    goto :goto_0
.end method
