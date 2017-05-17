.class public Lcom/sonymobile/rcs/permission/PermissionsController;
.super Ljava/lang/Object;
.source "PermissionsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;
    }
.end annotation


# static fields
.field private static logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private static final mCallbackLock:Ljava/lang/Object;

.field private static mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "PermissionsController"

    .line 25
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/permission/PermissionsController;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/permission/PermissionsController;->mCallbackLock:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/permission/PermissionsController;->mCallbacks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public static addPermissionRequest(Ljava/util/ArrayList;Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;ZI)V
    .locals 6
    .param p1, "callback"    # Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;
    .param p2, "isMandatoryPermissionRequest"    # Z
    .param p3, "redirectingPermissionFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .local p0, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 41
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v3, "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .line 43
    .local v1, "needRequest":Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    if-nez v1, :cond_2

    .line 55
    sget-object v4, Lcom/sonymobile/rcs/permission/PermissionsController;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 58
    :goto_1
    invoke-static {v3}, Lcom/sonymobile/rcs/permission/PermissionsController;->createNewResponseMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v4

    invoke-interface {p1, v4, p3}, Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;->requestDone(Ljava/util/HashMap;I)V

    .line 60
    :goto_2
    return-void

    .line 43
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    .local v2, "permission":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sonymobile/rcs/permission/PermissionUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 45
    :cond_1
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const/4 v1, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "permission":Ljava/lang/String;
    :cond_2
    invoke-static {v3, p1, p2, p3}, Lcom/sonymobile/rcs/permission/PermissionsController;->startPermissionControlActivity(Ljava/util/HashMap;Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;ZI)V

    goto :goto_2

    .line 56
    :cond_3
    sget-object v4, Lcom/sonymobile/rcs/permission/PermissionsController;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Permissions pre-granted, return true for all permission requests"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static createNewResponseMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v2, "responseMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    return-object v2

    .line 114
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    .local v1, "key":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static getCallBackKey(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "permissionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v1, "key":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 94
    .local v3, "sortedPermissionMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    sget-object v4, Lcom/sonymobile/rcs/permission/PermissionsController;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 100
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 94
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 98
    .end local v2    # "permission":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/sonymobile/rcs/permission/PermissionsController;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static invokeCallback(Ljava/util/HashMap;I)V
    .locals 8
    .param p1, "redirectingPermissionFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "permissionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    sget-object v6, Lcom/sonymobile/rcs/permission/PermissionsController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v6

    .line 129
    :try_start_0
    sget-object v5, Lcom/sonymobile/rcs/permission/PermissionsController;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/sonymobile/rcs/permission/PermissionsController;->getCallBackKey(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 131
    .local v2, "callbackList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;>;"
    if-eqz v2, :cond_0

    .line 134
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 137
    sget-object v5, Lcom/sonymobile/rcs/permission/PermissionsController;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/sonymobile/rcs/permission/PermissionsController;->getCallBackKey(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    sget-object v5, Lcom/sonymobile/rcs/permission/PermissionsController;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_2

    .line 147
    :goto_1
    return-void

    .line 132
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v6

    return-void

    .line 134
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;

    .line 135
    .local v1, "callback":Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;
    invoke-interface {v1, p0, p1}, Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;->requestDone(Ljava/util/HashMap;I)V

    goto :goto_0

    .line 138
    .end local v1    # "callback":Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;
    .end local v2    # "callbackList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 140
    .restart local v2    # "callbackList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Callback invoked with following result: {"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 145
    sget-object v5, Lcom/sonymobile/rcs/permission/PermissionsController;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "}"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 142
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static startPermissionControlActivity(Ljava/util/HashMap;Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;ZI)V
    .locals 6
    .param p1, "callback"    # Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;
    .param p2, "isMandatoryPermissionRequest"    # Z
    .param p3, "permissionFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    sget-object v3, Lcom/sonymobile/rcs/permission/PermissionsController;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 68
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, "context":Landroid/content/Context;
    sget-object v4, Lcom/sonymobile/rcs/permission/PermissionsController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v4

    .line 71
    :try_start_0
    sget-object v3, Lcom/sonymobile/rcs/permission/PermissionsController;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/sonymobile/rcs/permission/PermissionsController;->getCallBackKey(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 76
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x10008000

    .line 78
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "permissions"

    .line 80
    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v3, "is_mandatory"

    .line 81
    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "redirecting_flag"

    .line 82
    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x4

    .line 83
    if-ne v3, p3, :cond_3

    .line 85
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 86
    return-void

    .line 66
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    sget-object v3, Lcom/sonymobile/rcs/permission/PermissionsController;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "Starting PermissionControllerActivity for user input"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v3, Lcom/sonymobile/rcs/permission/PermissionsController;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/sonymobile/rcs/permission/PermissionsController;->getCallBackKey(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 76
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v3, 0x3

    .line 83
    if-eq v3, p3, :cond_0

    .line 88
    invoke-static {v0, v1}, Lcom/sonymobile/rcs/permission/PermissionNotification;->createPermissionNotification(Landroid/content/Context;Landroid/content/Intent;)V

    .line 89
    return-void
.end method
