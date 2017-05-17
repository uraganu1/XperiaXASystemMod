.class Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$4$1;
.super Ljava/lang/Thread;
.source "HttpsProvisioningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$4;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$4;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$4$1;->this$1:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-class v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    const-string/jumbo v2, "com.sonymobile.rcs.PROVISIONING"

    .line 785
    invoke-static {v1, v2}, Lcom/sonymobile/rcs/utils/IntentUtil;->createExpicitIntent(Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "reProvIntent":Landroid/content/Intent;
    const-string/jumbo v1, "first"

    .line 787
    # getter for: Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->firstLaunch:Z
    invoke-static {}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->access$500()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 788
    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$4$1;->this$1:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$4;

    iget-object v1, v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$4;->this$0:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 789
    return-void
.end method
