.class Lcom/gsma/services/rcs/capability/CapabilityService$1;
.super Ljava/lang/Object;
.source "CapabilityService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/capability/CapabilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/capability/CapabilityService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/capability/CapabilityService;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/gsma/services/rcs/capability/CapabilityService$1;->this$0:Lcom/gsma/services/rcs/capability/CapabilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService$1;->this$0:Lcom/gsma/services/rcs/capability/CapabilityService;

    invoke-static {p2}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/capability/ICapabilityService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/capability/CapabilityService;->setApi(Landroid/os/IInterface;)V

    .line 121
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService$1;->this$0:Lcom/gsma/services/rcs/capability/CapabilityService;

    # getter for: Lcom/gsma/services/rcs/capability/CapabilityService;->serviceListener:Lcom/gsma/services/rcs/JoynServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/capability/CapabilityService;->access$000(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/JoynServiceListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService$1;->this$0:Lcom/gsma/services/rcs/capability/CapabilityService;

    # getter for: Lcom/gsma/services/rcs/capability/CapabilityService;->serviceListener:Lcom/gsma/services/rcs/JoynServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/capability/CapabilityService;->access$100(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/JoynServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/gsma/services/rcs/JoynServiceListener;->onServiceConnected()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService$1;->this$0:Lcom/gsma/services/rcs/capability/CapabilityService;

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/capability/CapabilityService;->setApi(Landroid/os/IInterface;)V

    .line 128
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService$1;->this$0:Lcom/gsma/services/rcs/capability/CapabilityService;

    # getter for: Lcom/gsma/services/rcs/capability/CapabilityService;->serviceListener:Lcom/gsma/services/rcs/JoynServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/capability/CapabilityService;->access$200(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/JoynServiceListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService$1;->this$0:Lcom/gsma/services/rcs/capability/CapabilityService;

    # getter for: Lcom/gsma/services/rcs/capability/CapabilityService;->serviceListener:Lcom/gsma/services/rcs/JoynServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/capability/CapabilityService;->access$300(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/JoynServiceListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/JoynServiceListener;->onServiceDisconnected(I)V

    goto :goto_0
.end method
