.class Lcom/sonymobile/rcs/service/api/client/ClientApi$1;
.super Ljava/lang/Object;
.source "ClientApi.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 122
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/ClientApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/ClientApi;

    invoke-static {p2}, Lcom/sonymobile/rcs/service/api/client/IImsApi$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/IImsApi;

    move-result-object v2

    iput-object v2, v1, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsCoreApi:Lcom/sonymobile/rcs/service/api/client/IImsApi;

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/ClientApi;

    iget-object v1, v1, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsCoreApi:Lcom/sonymobile/rcs/service/api/client/IImsApi;

    if-nez v1, :cond_1

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/ClientApi;

    const/4 v2, 0x0

    # setter for: Lcom/sonymobile/rcs/service/api/client/ClientApi;->lastImsStatus:Z
    invoke-static {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApi;->access$002(Lcom/sonymobile/rcs/service/api/client/ClientApi;Z)Z

    .line 132
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/ClientApi;

    const/4 v2, 0x0

    # invokes: Lcom/sonymobile/rcs/service/api/client/ClientApi;->notifyEventImsDisconnected(I)V
    invoke-static {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApi;->access$200(Lcom/sonymobile/rcs/service/api/client/ClientApi;I)V

    .line 137
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/ClientApi;

    iget-object v1, v1, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsCoreApi:Lcom/sonymobile/rcs/service/api/client/IImsApi;

    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/IImsApi;->isImsConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/ClientApi;

    const/4 v2, 0x1

    # setter for: Lcom/sonymobile/rcs/service/api/client/ClientApi;->lastImsStatus:Z
    invoke-static {v1, v2}, Lcom/sonymobile/rcs/service/api/client/ClientApi;->access$002(Lcom/sonymobile/rcs/service/api/client/ClientApi;Z)Z

    .line 129
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/ClientApi;

    # invokes: Lcom/sonymobile/rcs/service/api/client/ClientApi;->notifyEventImsConnected()V
    invoke-static {v1}, Lcom/sonymobile/rcs/service/api/client/ClientApi;->access$100(Lcom/sonymobile/rcs/service/api/client/ClientApi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/ClientApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/ClientApi;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sonymobile/rcs/service/api/client/ClientApi;->imsCoreApi:Lcom/sonymobile/rcs/service/api/client/IImsApi;

    .line 141
    return-void
.end method
