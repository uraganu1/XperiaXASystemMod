.class Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi$1;
.super Ljava/lang/Object;
.source "MessagingApi.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    invoke-static {p2}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    move-result-object v1

    # setter for: Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;
    invoke-static {v0, v1}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->access$002(Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;)Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    .line 100
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->mIsServiceConnected:Z

    .line 102
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    # invokes: Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->notifyEventApiConnected()V
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->access$100(Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;)V

    .line 103
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->mIsServiceConnected:Z

    .line 108
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    # invokes: Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->notifyEventApiDisconnected()V
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->access$200(Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;)V

    .line 110
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;
    invoke-static {v0, v1}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;->access$002(Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;)Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    .line 111
    return-void
.end method
