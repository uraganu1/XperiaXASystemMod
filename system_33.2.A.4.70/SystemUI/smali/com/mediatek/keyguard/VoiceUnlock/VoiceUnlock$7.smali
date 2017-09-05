.class Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$7;
.super Ljava/lang/Object;
.source "VoiceUnlock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;
    .param p2, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$7;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    iput-object p2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$7;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$7;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    invoke-static {v1}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-get0(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$7;->val$intent:Landroid/content/Intent;

    .line 479
    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 478
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 480
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$7;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivity intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$7;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-wrap1(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$7;->this$0:Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Activity not found for intent + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock$7;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;->-wrap1(Lcom/mediatek/keyguard/VoiceUnlock/VoiceUnlock;Ljava/lang/String;)V

    goto :goto_0
.end method
