.class Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$1;
.super Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;
.source "VoiceUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$1;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    invoke-direct {p0}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceCommandNotified(IILandroid/os/Bundle;)V
    .locals 2
    .param p1, "mainAction"    # I
    .param p2, "subAction"    # I
    .param p3, "extraData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$1;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    invoke-static {v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-get5(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)Landroid/os/Handler;

    move-result-object v0

    .line 108
    const/4 v1, 0x0

    .line 104
    invoke-static {v0, p1, p2, v1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 103
    return-void
.end method
