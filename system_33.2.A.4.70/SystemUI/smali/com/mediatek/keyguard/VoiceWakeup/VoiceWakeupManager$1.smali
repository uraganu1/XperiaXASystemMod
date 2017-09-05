.class Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$1;
.super Ljava/lang/Object;
.source "VoiceWakeupManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 239
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$1;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$1;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    const-string/jumbo v1, "onServiceConnected   "

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-wrap2(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$1;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    invoke-static {p2}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-set3(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 244
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$1;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$1;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    invoke-static {v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-get4(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-wrap3(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$1;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    const-string/jumbo v1, "onServiceDisconnected  "

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-wrap2(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$1;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-set1(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Z)Z

    .line 250
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager$1;->this$0:Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;->-set3(Lcom/mediatek/keyguard/VoiceWakeup/VoiceWakeupManager;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 247
    return-void
.end method
