.class Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$4;
.super Ljava/lang/Object;
.source "VoiceUnlock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;-><init>(Landroid/content/Context;Landroid/view/View;)V
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
    .line 184
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$4;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 187
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$4;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    invoke-static {v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-get4(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$4;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    const-string/jumbo v1, "sendCommand RECOGNIZE_INTENSITY"

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-wrap1(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$4;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$4;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    invoke-static {v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-get3(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)Ljava/lang/String;

    move-result-object v1

    .line 190
    const/4 v2, 0x4

    .line 191
    const/4 v3, 0x2

    .line 189
    invoke-static {v0, v1, v2, v3, v4}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-wrap3(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$4;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    invoke-static {v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-get2(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x5a

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    return-void
.end method
