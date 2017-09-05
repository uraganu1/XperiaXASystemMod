.class Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$3;
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
    .line 273
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$3;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 275
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$3;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-wrap0(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Landroid/os/Bundle;Z)V

    .line 274
    return-void
.end method
