.class Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$5;
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
    .line 798
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$5;->this$0:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 801
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$5;->this$0:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->retryCount:I
    invoke-static {v0, v1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->access$602(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;I)I

    .line 802
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$5;->this$0:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getProvisioningValidity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    # invokes: Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->startRetryAlarm(J)V
    invoke-static {v0, v2, v3}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->access$700(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;J)V

    .line 804
    return-void
.end method
