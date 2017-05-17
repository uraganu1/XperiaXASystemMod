.class Lcom/sonymobile/jms/permission/ImPermissionManager$1;
.super Ljava/lang/Object;
.source "ImPermissionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/jms/permission/ImPermissionManager;->createLoadRcsCapabilitiesTask(Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/jms/permission/ImPermissionManager;

.field final synthetic val$contactsApi:Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;


# direct methods
.method constructor <init>(Lcom/sonymobile/jms/permission/ImPermissionManager;Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager$1;->this$0:Lcom/sonymobile/jms/permission/ImPermissionManager;

    iput-object p2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager$1;->val$contactsApi:Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 166
    iget-object v4, p0, Lcom/sonymobile/jms/permission/ImPermissionManager$1;->val$contactsApi:Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;->getRcsContacts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 177
    return-void

    .line 166
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 167
    .local v3, "rcsPhoneNumber":Ljava/lang/String;
    invoke-static {v3}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    .line 173
    .local v1, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    iget-object v4, p0, Lcom/sonymobile/jms/permission/ImPermissionManager$1;->this$0:Lcom/sonymobile/jms/permission/ImPermissionManager;

    # getter for: Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;
    invoke-static {v4}, Lcom/sonymobile/jms/permission/ImPermissionManager;->access$300(Lcom/sonymobile/jms/permission/ImPermissionManager;)Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->getContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v2

    .line 175
    .local v2, "rcsCapabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    iget-object v4, p0, Lcom/sonymobile/jms/permission/ImPermissionManager$1;->this$0:Lcom/sonymobile/jms/permission/ImPermissionManager;

    # getter for: Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsCapabilitiesCache:Ljava/util/Map;
    invoke-static {v4}, Lcom/sonymobile/jms/permission/ImPermissionManager;->access$000(Lcom/sonymobile/jms/permission/ImPermissionManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
