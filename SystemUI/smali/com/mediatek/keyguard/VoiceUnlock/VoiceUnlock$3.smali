.class Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$3;
.super Ljava/lang/Object;
.source "VoiceUnlock.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 571
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$3;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$3;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    invoke-static {p2}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-set1(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 575
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$3;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$3;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    invoke-static {v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-get3(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-wrap2(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$3;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    const-string/jumbo v1, "onServiceConnected   "

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-wrap1(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$3;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    invoke-static {v0}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-wrap4(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)V

    .line 573
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$3;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    const-string/jumbo v1, "onServiceDisconnected   "

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-wrap1(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$3;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-set0(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;Z)Z

    .line 583
    iget-object v0, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$3;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-set1(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 580
    return-void
.end method
