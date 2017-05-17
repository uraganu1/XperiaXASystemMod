.class Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$2;
.super Ljava/lang/Thread;
.source "HttpsProvisioningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->startUpdateConfig()V
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
    .line 359
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$2;->this$0:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$2;->this$0:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    # invokes: Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->updateConfig()V
    invoke-static {v0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->access$100(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;)V

    .line 362
    return-void
.end method
