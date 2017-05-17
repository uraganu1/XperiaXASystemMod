.class Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 223
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 328
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_f

    .line 333
    :goto_1
    return-void

    .line 223
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    const-string/jumbo v2, "Incoming number is either empty or null"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callState:I
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$100(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 238
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_4

    .line 244
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    const/4 v2, 0x1

    # setter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callState:I
    invoke-static {v1, v2}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$102(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;I)I

    .line 245
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isRcseProvisioned()Z

    move-result v1

    if-nez v1, :cond_5

    .line 250
    :goto_3
    # setter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$402(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 230
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # setter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mRingingNumber:Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$202(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 235
    :goto_4
    return-void

    .line 232
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call established already. Ringing number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mRingingNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$200(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 239
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call is RINGING: incoming number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 246
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # invokes: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->triggerRichcallPermissionNotification()V
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$300(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)V

    goto :goto_3

    .line 254
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_6

    .line 257
    :goto_5
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mProximityManager:Lcom/sonymobile/rcs/utils/ProximitySensorManager;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$500(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/ProximitySensorManager;

    move-result-object v1

    if-nez v1, :cond_7

    .line 262
    :goto_6
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # invokes: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->stopScreenMonitoring()V
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$600(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)V

    .line 265
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    const/4 v2, 0x3

    # setter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callState:I
    invoke-static {v1, v2}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$102(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;I)I

    .line 266
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # setter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->multipartyCall:Z
    invoke-static {v1, v4}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$702(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;Z)Z

    .line 267
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # setter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callHold:Z
    invoke-static {v1, v4}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$802(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;Z)Z

    .line 268
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # setter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mRichcallPermissionStates:Z
    invoke-static {v1, v4}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$902(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;Z)Z

    .line 271
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$1000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getRichcallService()Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->abortAllSessions()V

    .line 279
    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 288
    :goto_7
    # setter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;
    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # setter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mRingingNumber:Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$202(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 255
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call is IDLE: last number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 259
    :cond_7
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mProximityManager:Lcom/sonymobile/rcs/utils/ProximitySensorManager;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$500(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/ProximitySensorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/ProximitySensorManager;->disable()V

    goto :goto_6

    .line 281
    :cond_8
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$1000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v1

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->resetContactCapabilitiesForContentSharing(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$1000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCapabilityService()Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    move-result-object v1

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    goto :goto_7

    .line 293
    :pswitch_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mRingingNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$200(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    .line 294
    :cond_9
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_b

    .line 298
    :goto_8
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$1000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getRichcallService()Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->resetSessions()V

    .line 300
    :goto_9
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mProximityManager:Lcom/sonymobile/rcs/utils/ProximitySensorManager;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$500(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/ProximitySensorManager;

    move-result-object v1

    if-nez v1, :cond_c

    .line 305
    :goto_a
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # invokes: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->startScreenMonitoring()V
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$1100(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)V

    .line 307
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_d

    .line 311
    :goto_b
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # setter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callState:I
    invoke-static {v1, v6}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$102(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;I)I

    .line 312
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isRcseProvisioned()Z

    move-result v1

    if-nez v1, :cond_e

    .line 318
    :goto_c
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 319
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1$1;-><init>(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 293
    .end local v0    # "timer":Ljava/util/Timer;
    :cond_a
    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$400()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mRingingNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$200(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_9

    .line 295
    :cond_b
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call reset sessions. Received Call State Offhook"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_8

    .line 302
    :cond_c
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->mProximityManager:Lcom/sonymobile/rcs/utils/ProximitySensorManager;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$500(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/ProximitySensorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/ProximitySensorManager;->enable()V

    goto :goto_a

    .line 308
    :cond_d
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call is CONNECTED: connected number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_b

    .line 313
    :cond_e
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # invokes: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->triggerRichcallPermissionNotification()V
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$300(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)V

    goto :goto_c

    .line 329
    :cond_f
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$000(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown call state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
