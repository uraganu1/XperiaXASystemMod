.class public Lcom/sonymobile/conversations/transaction/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# static fields
.field static mStartingService:Landroid/os/PowerManager$WakeLock;

.field static final mStartingServiceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/conversations/transaction/SmsReceiver;->mStartingServiceSync:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    sget-object v2, Lcom/sonymobile/conversations/transaction/SmsReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v2

    .line 80
    :try_start_0
    sget-object v1, Lcom/sonymobile/conversations/transaction/SmsReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 82
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 84
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "StartingAlertService"

    .line 83
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/conversations/transaction/SmsReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 85
    sget-object v1, Lcom/sonymobile/conversations/transaction/SmsReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 87
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/sonymobile/conversations/transaction/SmsReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 88
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 2
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "startId"    # I

    .prologue
    .line 97
    sget-object v1, Lcom/sonymobile/conversations/transaction/SmsReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v0, Lcom/sonymobile/conversations/transaction/SmsReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/sonymobile/conversations/transaction/SmsReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 96
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    const-string/jumbo v0, "Conversations"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Intent received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 50
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/conversations/transaction/SmsReceiver;->onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 46
    return-void
.end method

.method protected onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "privileged"    # Z

    .prologue
    .line 58
    if-nez p3, :cond_1

    const-string/jumbo v0, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const-string/jumbo v0, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 60
    :cond_0
    return-void

    .line 63
    :cond_1
    const-class v0, Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 64
    const-string/jumbo v0, "result"

    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/SmsReceiver;->getResultCode()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    invoke-static {p1, p2}, Lcom/sonymobile/conversations/transaction/SmsReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 53
    return-void
.end method
