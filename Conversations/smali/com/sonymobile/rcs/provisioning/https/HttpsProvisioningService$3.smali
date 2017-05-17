.class Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$3;
.super Ljava/util/TimerTask;
.source "HttpsProvisioningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->scheduleTokenValidityTimer(Lcom/sonymobile/rcs/provisioning/ProvisioningInfo;)V
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
    .line 682
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$3;->this$0:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 687
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setProvisioningToken(Ljava/lang/String;)V

    .line 688
    return-void
.end method
