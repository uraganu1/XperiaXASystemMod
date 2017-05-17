.class Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$1;
.super Ljava/lang/Object;
.source "TapiRcsConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$1;->this$0:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 223
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onServiceConnected() called"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$1;->this$0:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;->BOUND_CONNECTED:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->-set0(Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;)Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    .line 225
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$1;->this$0:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->-set1(Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 228
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$1;->this$0:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->-get1(Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$1;->this$0:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->-get2(Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;)Landroid/os/Messenger;

    move-result-object v2

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$1;->this$0:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->-get1(Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Unable to send queued message!"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 238
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected() called"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$1;->this$0:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;->BOUND_DISCONNECTED:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->-set0(Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;)Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ConnectorState;

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$1;->this$0:Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;->-set1(Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 237
    return-void
.end method
