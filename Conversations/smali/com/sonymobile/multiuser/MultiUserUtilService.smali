.class public Lcom/sonymobile/multiuser/MultiUserUtilService;
.super Landroid/app/Service;
.source "MultiUserUtilService.java"


# instance fields
.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/sonymobile/multiuser/MultiUserUtilService$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/multiuser/MultiUserUtilService$1;-><init>(Lcom/sonymobile/multiuser/MultiUserUtilService;)V

    iput-object v1, p0, Lcom/sonymobile/multiuser/MultiUserUtilService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    iget-object v1, p0, Lcom/sonymobile/multiuser/MultiUserUtilService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/multiuser/MultiUserUtilService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/multiuser/MultiUserUtilService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonymobile/multiuser/MultiUserUtilService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 52
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method
