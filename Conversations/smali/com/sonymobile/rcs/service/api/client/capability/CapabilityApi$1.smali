.class Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi$1;
.super Ljava/lang/Object;
.source "CapabilityApi.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    invoke-static {p2}, Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;

    move-result-object v1

    # setter for: Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;
    invoke-static {v0, v1}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->access$002(Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;)Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;

    .line 107
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->mIsServiceConnected:Z

    .line 109
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    # invokes: Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->notifyEventApiConnected()V
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->access$100(Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;)V

    .line 110
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->mIsServiceConnected:Z

    .line 115
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    # invokes: Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->notifyEventApiDisconnected()V
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->access$200(Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;)V

    .line 117
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi$1;->this$0:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->coreApi:Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;
    invoke-static {v0, v1}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->access$002(Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;)Lcom/sonymobile/rcs/service/api/client/capability/ICapabilityApi;

    .line 118
    return-void
.end method
