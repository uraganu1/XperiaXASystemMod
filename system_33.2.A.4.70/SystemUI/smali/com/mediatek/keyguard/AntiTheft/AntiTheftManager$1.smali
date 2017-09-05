.class Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AntiTheftManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$1;->this$0:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 342
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "AntiTheftManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleAntiTheftViewUpdate() - action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string/jumbo v1, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    const-string/jumbo v1, "AntiTheftManager"

    const-string/jumbo v2, "receive OMADM_LAWMO_LOCK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$1;->this$0:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    invoke-static {v1, v4, v5}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->-wrap1(Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;II)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    const-string/jumbo v1, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    const-string/jumbo v1, "AntiTheftManager"

    const-string/jumbo v2, "receive OMADM_LAWMO_UNLOCK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$1;->this$0:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    invoke-static {v1, v4, v4}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->-wrap1(Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;II)V

    goto :goto_0

    .line 356
    :cond_2
    const-string/jumbo v1, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 357
    const-string/jumbo v1, "AntiTheftManager"

    const-string/jumbo v2, "receive PPL_LOCK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$1;->this$0:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    invoke-static {v1, v6, v5}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->-wrap1(Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;II)V

    goto :goto_0

    .line 359
    :cond_3
    const-string/jumbo v1, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 360
    const-string/jumbo v1, "AntiTheftManager"

    const-string/jumbo v2, "receive PPL_UNLOCK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$1;->this$0:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    invoke-static {v1, v6, v4}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->-wrap1(Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;II)V

    goto :goto_0

    .line 363
    :cond_4
    const-string/jumbo v1, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager$1;->this$0:Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;

    invoke-virtual {v1}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->doBindAntiThftLockServices()V

    goto :goto_0
.end method
