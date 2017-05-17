.class Lcom/sonymobile/rcs/service/RcsCoreService$5;
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
    .line 1427
    iput-object p1, p0, Lcom/sonymobile/rcs/service/RcsCoreService$5;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, "state"

    .line 1430
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1431
    .local v0, "state":Z
    if-eqz v0, :cond_0

    .line 1434
    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x5

    .line 1432
    invoke-static {p1, v1}, Lcom/sonymobile/rcs/utils/ContactUtils;->updateStatusTable(Landroid/content/Context;I)V

    goto :goto_0
.end method
