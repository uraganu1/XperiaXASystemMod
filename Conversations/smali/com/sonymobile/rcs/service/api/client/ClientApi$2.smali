.class Lcom/sonymobile/rcs/service/api/client/ClientApi$2;
.super Landroid/content/BroadcastReceiver;
.source "ClientApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/ClientApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/service/api/client/ClientApi;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/service/api/client/ClientApi;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi$2;->this$0:Lcom/sonymobile/rcs/service/api/client/ClientApi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "status"

    .line 223
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi$2;->this$0:Lcom/sonymobile/rcs/service/api/client/ClientApi;

    # getter for: Lcom/sonymobile/rcs/service/api/client/ClientApi;->lastImsStatus:Z
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/ClientApi;->access$000(Lcom/sonymobile/rcs/service/api/client/ClientApi;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi$2;->this$0:Lcom/sonymobile/rcs/service/api/client/ClientApi;

    # getter for: Lcom/sonymobile/rcs/service/api/client/ClientApi;->lastImsStatus:Z
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/ClientApi;->access$000(Lcom/sonymobile/rcs/service/api/client/ClientApi;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi$2;->this$0:Lcom/sonymobile/rcs/service/api/client/ClientApi;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/rcs/service/api/client/ClientApi;->lastImsStatus:Z
    invoke-static {v0, v1}, Lcom/sonymobile/rcs/service/api/client/ClientApi;->access$002(Lcom/sonymobile/rcs/service/api/client/ClientApi;Z)Z

    .line 227
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi$2;->this$0:Lcom/sonymobile/rcs/service/api/client/ClientApi;

    # invokes: Lcom/sonymobile/rcs/service/api/client/ClientApi;->notifyEventImsConnected()V
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/ClientApi;->access$100(Lcom/sonymobile/rcs/service/api/client/ClientApi;)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi$2;->this$0:Lcom/sonymobile/rcs/service/api/client/ClientApi;

    # setter for: Lcom/sonymobile/rcs/service/api/client/ClientApi;->lastImsStatus:Z
    invoke-static {v0, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApi;->access$002(Lcom/sonymobile/rcs/service/api/client/ClientApi;Z)Z

    .line 233
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi$2;->this$0:Lcom/sonymobile/rcs/service/api/client/ClientApi;

    const-string/jumbo v1, "reason"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # invokes: Lcom/sonymobile/rcs/service/api/client/ClientApi;->notifyEventImsDisconnected(I)V
    invoke-static {v0, v1}, Lcom/sonymobile/rcs/service/api/client/ClientApi;->access$200(Lcom/sonymobile/rcs/service/api/client/ClientApi;I)V

    goto :goto_0
.end method
