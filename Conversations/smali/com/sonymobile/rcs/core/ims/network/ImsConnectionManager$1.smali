.class Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager$1;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;
.source "ImsConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;

    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-class v0, Lcom/sonymobile/rcs/core/ims/network/ConnectivityWakefulService;

    .line 343
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 344
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->access$000(Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    :goto_0
    invoke-static {p1, p2}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager$1;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 348
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;->access$000(Lcom/sonymobile/rcs/core/ims/network/ImsConnectionManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    const-string/jumbo v1, "ConnectivityWakefulService starting the service for : IMSConnectionManager: networkStateListener"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
