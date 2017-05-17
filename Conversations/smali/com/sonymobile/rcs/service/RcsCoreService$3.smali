.class Lcom/sonymobile/rcs/service/RcsCoreService$3;
.super Ljava/lang/Thread;
.source "RcsCoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/service/RcsCoreService;->downloadPhotoForMe(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

.field final synthetic val$etag:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/service/RcsCoreService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/sonymobile/rcs/service/RcsCoreService$3;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    iput-object p2, p0, Lcom/sonymobile/rcs/service/RcsCoreService$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonymobile/rcs/service/RcsCoreService$3;->val$etag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 977
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/Core;->getPresenceService()Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->getXdmManager()Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/service/RcsCoreService$3;->val$url:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/rcs/service/RcsCoreService$3;->val$etag:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->downloadContactPhoto(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    move-result-object v1

    .line 979
    .local v1, "icon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    if-nez v1, :cond_1

    .line 998
    .end local v1    # "icon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    :cond_0
    :goto_0
    return-void

    .line 981
    .restart local v1    # "icon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/core/Core;->getInstance()Lcom/sonymobile/rcs/core/Core;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/Core;->getPresenceService()Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/presence/PresenceService;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->setPhotoIcon(Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;)V

    .line 985
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setMyPhotoIcon(Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;)V

    .line 989
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sonymobile.rcs.presence.MY_PRESENCE_INFO_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    .line 990
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 991
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService$3;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/service/RcsCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 997
    .end local v1    # "icon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 994
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService$3;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    # getter for: Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v3}, Lcom/sonymobile/rcs/service/RcsCoreService;->access$100(Lcom/sonymobile/rcs/service/RcsCoreService;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 995
    iget-object v3, p0, Lcom/sonymobile/rcs/service/RcsCoreService$3;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    # getter for: Lcom/sonymobile/rcs/service/RcsCoreService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v3}, Lcom/sonymobile/rcs/service/RcsCoreService;->access$100(Lcom/sonymobile/rcs/service/RcsCoreService;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v3

    const-string/jumbo v4, "Internal exception"

    invoke-virtual {v3, v4, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
