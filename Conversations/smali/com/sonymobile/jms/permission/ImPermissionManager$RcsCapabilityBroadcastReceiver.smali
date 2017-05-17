.class Lcom/sonymobile/jms/permission/ImPermissionManager$RcsCapabilityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImPermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/permission/ImPermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RcsCapabilityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/jms/permission/ImPermissionManager;


# direct methods
.method private constructor <init>(Lcom/sonymobile/jms/permission/ImPermissionManager;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager$RcsCapabilityBroadcastReceiver;->this$0:Lcom/sonymobile/jms/permission/ImPermissionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/jms/permission/ImPermissionManager;Lcom/sonymobile/jms/permission/ImPermissionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/jms/permission/ImPermissionManager;
    .param p2, "x1"    # Lcom/sonymobile/jms/permission/ImPermissionManager$1;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/permission/ImPermissionManager$RcsCapabilityBroadcastReceiver;-><init>(Lcom/sonymobile/jms/permission/ImPermissionManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 102
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string/jumbo v6, "contact"

    .line 105
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "unNormalizedNumber":Ljava/lang/String;
    const-string/jumbo v6, "capabilities"

    .line 106
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 109
    .local v4, "rcsCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-static {v5}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v2

    .line 114
    .local v2, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    iget-object v6, p0, Lcom/sonymobile/jms/permission/ImPermissionManager$RcsCapabilityBroadcastReceiver;->this$0:Lcom/sonymobile/jms/permission/ImPermissionManager;

    # getter for: Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsCapabilitiesCache:Ljava/util/Map;
    invoke-static {v6}, Lcom/sonymobile/jms/permission/ImPermissionManager;->access$000(Lcom/sonymobile/jms/permission/ImPermissionManager;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v6, p0, Lcom/sonymobile/jms/permission/ImPermissionManager$RcsCapabilityBroadcastReceiver;->this$0:Lcom/sonymobile/jms/permission/ImPermissionManager;

    # getter for: Lcom/sonymobile/jms/permission/ImPermissionManager;->mImContactPermissionChangeListeners:Ljava/util/Set;
    invoke-static {v6}, Lcom/sonymobile/jms/permission/ImPermissionManager;->access$100(Lcom/sonymobile/jms/permission/ImPermissionManager;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 119
    return-void

    .line 99
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v4    # "rcsCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .end local v5    # "unNormalizedNumber":Ljava/lang/String;
    :cond_0
    return-void

    .line 103
    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    return-void

    .line 116
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .restart local v4    # "rcsCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .restart local v5    # "unNormalizedNumber":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/jms/permission/ImContactPermissionChangeListener;

    .line 117
    .local v3, "listener":Lcom/sonymobile/jms/permission/ImContactPermissionChangeListener;
    invoke-interface {v3, v2}, Lcom/sonymobile/jms/permission/ImContactPermissionChangeListener;->onCapabilityChanged(Lcom/sonymobile/jms/contact/ImContactNumber;)V

    goto :goto_0
.end method
