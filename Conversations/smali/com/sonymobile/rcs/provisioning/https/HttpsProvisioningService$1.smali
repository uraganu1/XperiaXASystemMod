.class Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$1;
.super Landroid/content/BroadcastReceiver;
.source "HttpsProvisioningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->onStartCommand(Landroid/content/Intent;II)I
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
    .line 301
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$1;->this$0:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$1;->this$0:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->connectionEvent(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->access$000(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;Ljava/lang/String;)Z

    .line 305
    return-void
.end method
