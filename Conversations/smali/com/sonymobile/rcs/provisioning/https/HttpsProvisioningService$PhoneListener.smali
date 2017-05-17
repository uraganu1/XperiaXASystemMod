.class Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$PhoneListener;
.super Landroid/telephony/PhoneStateListener;
.source "HttpsProvisioningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;


# direct methods
.method private constructor <init>(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$PhoneListener;->this$0:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;
    .param p2, "x1"    # Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$1;

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$PhoneListener;-><init>(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 415
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 422
    :goto_0
    return-void

    .line 417
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService$PhoneListener;->this$0:Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    # invokes: Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->startUpdateConfig()V
    invoke-static {v0}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->access$300(Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;)V

    goto :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
