.class Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$5;
.super Landroid/content/BroadcastReceiver;
.source "VoiceWakeupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$5;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 690
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "action":Ljava/lang/String;
    const/4 v2, -0x1

    .line 693
    .local v2, "what":I
    const-string/jumbo v3, "com.android.keyguard.VoiceWakeupManager.LAUNCH_SEC_CAMERA_OWNER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 694
    const/16 v2, 0x3e8

    .line 713
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$5;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    invoke-static {v3}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-get6(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 714
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 689
    return-void

    .line 696
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    const-string/jumbo v3, "com.android.keyguard.VoiceWakeupManager.LAUNCH_INSEC_CAMERA_OWNER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 697
    const/16 v2, 0x3e9

    goto :goto_0

    .line 699
    :cond_2
    const-string/jumbo v3, "com.android.keyguard.VoiceWakeupManager.LAUNCH_SEC_CAMERA_ANYONE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 700
    const/16 v2, 0x3ea

    goto :goto_0

    .line 702
    :cond_3
    const-string/jumbo v3, "com.android.keyguard.VoiceWakeupManager.LAUNCH_INSEC_CAMERA_ANYONE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 703
    const/16 v2, 0x3eb

    goto :goto_0

    .line 705
    :cond_4
    const-string/jumbo v3, "com.android.keyguard.VoiceWakeupManager.LAUNCH_MMS_OWNER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 706
    const/16 v2, 0x3ec

    goto :goto_0

    .line 708
    :cond_5
    const-string/jumbo v3, "com.android.keyguard.VoiceWakeupManager.LAUNCH_MMS_ANYONE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 709
    const/16 v2, 0x3ed

    goto :goto_0
.end method
