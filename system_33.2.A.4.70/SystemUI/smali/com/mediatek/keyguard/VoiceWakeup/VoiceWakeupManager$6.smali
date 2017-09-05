.class Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$6;
.super Landroid/os/Handler;
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
    .line 718
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$6;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 720
    const/4 v0, -0x1

    .line 721
    .local v0, "commandId":I
    const/4 v2, 0x2

    .line 723
    .local v2, "isUserDependentMode":I
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 752
    iget-object v3, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$6;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    const-string/jumbo v4, "handleMessage() : msg.what is invalid!"

    invoke-static {v3, v4}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-wrap2(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Ljava/lang/String;)V

    .line 756
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 757
    .local v1, "data":Landroid/os/Bundle;
    const-string/jumbo v3, "Result_Info"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 758
    const-string/jumbo v3, "Reslut_Info1"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 759
    iget-object v3, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$6;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-wrap0(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Landroid/os/Bundle;Z)V

    .line 719
    return-void

    .line 725
    .end local v1    # "data":Landroid/os/Bundle;
    :pswitch_0
    const/4 v0, 0x1

    .line 726
    const/4 v2, 0x2

    .line 727
    goto :goto_0

    .line 729
    :pswitch_1
    const/4 v0, 0x2

    .line 730
    const/4 v2, 0x2

    .line 731
    goto :goto_0

    .line 733
    :pswitch_2
    const/4 v0, 0x1

    .line 735
    const/4 v2, 0x1

    .line 736
    goto :goto_0

    .line 738
    :pswitch_3
    const/4 v0, 0x2

    .line 740
    const/4 v2, 0x1

    .line 741
    goto :goto_0

    .line 743
    :pswitch_4
    const/4 v0, 0x3

    .line 744
    const/4 v2, 0x2

    .line 745
    goto :goto_0

    .line 747
    :pswitch_5
    const/4 v0, 0x3

    .line 749
    const/4 v2, 0x1

    .line 750
    goto :goto_0

    .line 723
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
