.class Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/NetworkConnectivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/common/NetworkConnectivityListener;


# direct methods
.method private constructor <init>(Lcom/android/common/NetworkConnectivityListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/common/NetworkConnectivityListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/NetworkConnectivityListener;Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/common/NetworkConnectivityListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;-><init>(Lcom/android/common/NetworkConnectivityListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    iget-object v5, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    invoke-static {v5}, Lcom/android/common/NetworkConnectivityListener;->-get1(Lcom/android/common/NetworkConnectivityListener;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 70
    :cond_0
    const-string/jumbo v5, "NetworkConnectivityListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceived() called with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    invoke-static {v7}, Lcom/android/common/NetworkConnectivityListener;->-get2(Lcom/android/common/NetworkConnectivityListener;)Lcom/android/common/NetworkConnectivityListener$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/common/NetworkConnectivityListener$State;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 75
    :cond_1
    const-string/jumbo v5, "noConnectivity"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 77
    .local v3, "noConnectivity":Z
    if-eqz v3, :cond_2

    .line 78
    iget-object v5, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    sget-object v6, Lcom/android/common/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcom/android/common/NetworkConnectivityListener$State;

    invoke-static {v5, v6}, Lcom/android/common/NetworkConnectivityListener;->-set4(Lcom/android/common/NetworkConnectivityListener;Lcom/android/common/NetworkConnectivityListener$State;)Lcom/android/common/NetworkConnectivityListener$State;

    .line 83
    :goto_0
    iget-object v6, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    .line 84
    const-string/jumbo v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 83
    invoke-static {v6, v5}, Lcom/android/common/NetworkConnectivityListener;->-set1(Lcom/android/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 85
    iget-object v6, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    .line 86
    const-string/jumbo v5, "otherNetwork"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 85
    invoke-static {v6, v5}, Lcom/android/common/NetworkConnectivityListener;->-set2(Lcom/android/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 88
    iget-object v5, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    const-string/jumbo v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/NetworkConnectivityListener;->-set3(Lcom/android/common/NetworkConnectivityListener;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    iget-object v5, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    .line 90
    const-string/jumbo v6, "isFailover"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 89
    invoke-static {v5, v6}, Lcom/android/common/NetworkConnectivityListener;->-set0(Lcom/android/common/NetworkConnectivityListener;Z)Z

    .line 99
    iget-object v5, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    invoke-static {v5}, Lcom/android/common/NetworkConnectivityListener;->-get0(Lcom/android/common/NetworkConnectivityListener;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 100
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Handler;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 102
    .local v4, "target":Landroid/os/Handler;
    iget-object v5, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    invoke-static {v5}, Lcom/android/common/NetworkConnectivityListener;->-get0(Lcom/android/common/NetworkConnectivityListener;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 103
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 80
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Handler;>;"
    .end local v2    # "message":Landroid/os/Message;
    .end local v4    # "target":Landroid/os/Handler;
    :cond_2
    iget-object v5, p0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/android/common/NetworkConnectivityListener;

    sget-object v6, Lcom/android/common/NetworkConnectivityListener$State;->CONNECTED:Lcom/android/common/NetworkConnectivityListener$State;

    invoke-static {v5, v6}, Lcom/android/common/NetworkConnectivityListener;->-set4(Lcom/android/common/NetworkConnectivityListener;Lcom/android/common/NetworkConnectivityListener$State;)Lcom/android/common/NetworkConnectivityListener$State;

    goto :goto_0

    .line 65
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Handler;>;"
    :cond_3
    return-void
.end method
