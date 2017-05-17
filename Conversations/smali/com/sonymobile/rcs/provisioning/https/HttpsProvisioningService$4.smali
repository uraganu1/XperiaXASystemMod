.class Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$4;
.super Landroid/content/BroadcastReceiver;
.source "HttpsProvisioningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;)V
    .locals 0

    .prologue
    .line 772
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$4;->this$0:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

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

    .line 775
    invoke-static {p1}, Lcom/sonymobile/rcs/platform/AndroidFactory;->setApplicationContext(Landroid/content/Context;)V

    .line 776
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$4;->this$0:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    # getter for: Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isRetry:Z
    invoke-static {v1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->access$400(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 779
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setConfigValidityStatus(I)V

    .line 781
    :goto_0
    new-instance v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$4$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$4$1;-><init>(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$4;)V

    .line 791
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 792
    return-void

    .line 777
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$4;->this$0:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    # setter for: Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isRetry:Z
    invoke-static {v1, v2}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->access$402(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;Z)Z

    goto :goto_0
.end method
