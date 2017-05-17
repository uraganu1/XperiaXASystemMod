.class Lcom/sonymobile/jms/permission/ImPermissionManager$2;
.super Ljava/lang/Object;
.source "ImPermissionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/jms/permission/ImPermissionManager;->createRequestRcsCapabilitiesTask(Lcom/sonymobile/jms/contact/ImContactNumber;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/jms/permission/ImPermissionManager;

.field final synthetic val$imContactNumber:Lcom/sonymobile/jms/contact/ImContactNumber;


# direct methods
.method constructor <init>(Lcom/sonymobile/jms/permission/ImPermissionManager;Lcom/sonymobile/jms/contact/ImContactNumber;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager$2;->this$0:Lcom/sonymobile/jms/permission/ImPermissionManager;

    iput-object p2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager$2;->val$imContactNumber:Lcom/sonymobile/jms/contact/ImContactNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/permission/ImPermissionManager$2;->this$0:Lcom/sonymobile/jms/permission/ImPermissionManager;

    # getter for: Lcom/sonymobile/jms/permission/ImPermissionManager;->mRcsCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;
    invoke-static {v1}, Lcom/sonymobile/jms/permission/ImPermissionManager;->access$300(Lcom/sonymobile/jms/permission/ImPermissionManager;)Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager$2;->val$imContactNumber:Lcom/sonymobile/jms/contact/ImContactNumber;

    invoke-virtual {v2}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->requestCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to request updated ImPermissions for ImContact \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/jms/permission/ImPermissionManager$2;->val$imContactNumber:Lcom/sonymobile/jms/contact/ImContactNumber;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'! ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
