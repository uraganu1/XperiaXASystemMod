.class public Lcom/sonymobile/jms/ImApiHolder;
.super Ljava/lang/Object;
.source "ImApiHolder.java"

# interfaces
.implements Lcom/sonymobile/jms/ImApis;


# static fields
.field private static sApiHolder:Lcom/sonymobile/jms/ImApiHolder;

.field private static sRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

.field private static sRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;


# instance fields
.field private mApp:Landroid/app/Application;

.field private mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

.field private mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

.field private mImConversationStorageManager:Lcom/sonymobile/jms/conversation/ImConversationStorageManager;

.field private mImEnvironmentManager:Lcom/sonymobile/jms/environment/ImEnvironmentManager;

.field private mImFileIconManager:Lcom/sonymobile/jms/message/ImFileIconManager;

.field private mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

.field private mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

.field private mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

.field private mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

.field private mImUndeliveredMessageManager:Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static getApis()Lcom/sonymobile/jms/ImApis;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/sonymobile/jms/ImApiHolder;->sApiHolder:Lcom/sonymobile/jms/ImApiHolder;

    return-object v0
.end method

.method public static getRcsIntentServiceApi()Lcom/sonymobile/jms/intent/RcsIntentServiceApi;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/sonymobile/jms/ImApiHolder;->sRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    return-object v0
.end method

.method protected static final setApis(Lcom/sonymobile/jms/ImApiHolder;)V
    .locals 0
    .param p0, "imApiHolder"    # Lcom/sonymobile/jms/ImApiHolder;

    .prologue
    .line 70
    sput-object p0, Lcom/sonymobile/jms/ImApiHolder;->sApiHolder:Lcom/sonymobile/jms/ImApiHolder;

    .line 71
    return-void
.end method


# virtual methods
.method protected exit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    sget-object v0, Lcom/sonymobile/jms/ImApiHolder;->sRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    if-nez v0, :cond_0

    .line 183
    :goto_0
    sget-object v0, Lcom/sonymobile/jms/ImApiHolder;->sRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    if-nez v0, :cond_1

    .line 187
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImEnvironmentManager:Lcom/sonymobile/jms/environment/ImEnvironmentManager;

    if-nez v0, :cond_2

    .line 191
    :goto_2
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImFileIconManager:Lcom/sonymobile/jms/message/ImFileIconManager;

    if-nez v0, :cond_3

    .line 195
    :goto_3
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    if-nez v0, :cond_4

    .line 199
    :goto_4
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImConversationStorageManager:Lcom/sonymobile/jms/conversation/ImConversationStorageManager;

    if-nez v0, :cond_5

    .line 203
    :goto_5
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImUndeliveredMessageManager:Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;

    if-nez v0, :cond_6

    .line 207
    :goto_6
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    if-nez v0, :cond_7

    .line 211
    :goto_7
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    if-nez v0, :cond_8

    .line 215
    :goto_8
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    if-nez v0, :cond_9

    .line 219
    :goto_9
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    if-nez v0, :cond_a

    .line 224
    :goto_a
    iput-object v1, p0, Lcom/sonymobile/jms/ImApiHolder;->mApp:Landroid/app/Application;

    const-string/jumbo v0, "ImApis cleanup ok."

    .line 225
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->d(Ljava/lang/String;)V

    .line 226
    return-void

    .line 180
    :cond_0
    sget-object v0, Lcom/sonymobile/jms/ImApiHolder;->sRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    invoke-virtual {v0}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->exit()V

    .line 181
    sput-object v1, Lcom/sonymobile/jms/ImApiHolder;->sRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    goto :goto_0

    .line 184
    :cond_1
    sget-object v0, Lcom/sonymobile/jms/ImApiHolder;->sRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    invoke-virtual {v0}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->exit()V

    .line 185
    sput-object v1, Lcom/sonymobile/jms/ImApiHolder;->sRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    goto :goto_1

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImEnvironmentManager:Lcom/sonymobile/jms/environment/ImEnvironmentManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->cleanup()V

    .line 189
    iput-object v1, p0, Lcom/sonymobile/jms/ImApiHolder;->mImEnvironmentManager:Lcom/sonymobile/jms/environment/ImEnvironmentManager;

    goto :goto_2

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImFileIconManager:Lcom/sonymobile/jms/message/ImFileIconManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/message/ImFileIconManager;->cleanup()V

    .line 193
    iput-object v1, p0, Lcom/sonymobile/jms/ImApiHolder;->mImFileIconManager:Lcom/sonymobile/jms/message/ImFileIconManager;

    goto :goto_3

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/conversation/ImConversationManager;->cleanup()V

    .line 197
    iput-object v1, p0, Lcom/sonymobile/jms/ImApiHolder;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    goto :goto_4

    .line 200
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImConversationStorageManager:Lcom/sonymobile/jms/conversation/ImConversationStorageManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->cleanup()V

    .line 201
    iput-object v1, p0, Lcom/sonymobile/jms/ImApiHolder;->mImConversationStorageManager:Lcom/sonymobile/jms/conversation/ImConversationStorageManager;

    goto :goto_5

    .line 204
    :cond_6
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImUndeliveredMessageManager:Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->cleanup()V

    .line 205
    iput-object v1, p0, Lcom/sonymobile/jms/ImApiHolder;->mImUndeliveredMessageManager:Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;

    goto :goto_6

    .line 208
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/contact/ImContactManager;->cleanup()V

    .line 209
    iput-object v1, p0, Lcom/sonymobile/jms/ImApiHolder;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    goto :goto_7

    .line 212
    :cond_8
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/setting/ImSettingManager;->cleanup()V

    .line 213
    iput-object v1, p0, Lcom/sonymobile/jms/ImApiHolder;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    goto :goto_8

    .line 216
    :cond_9
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/file/ImFileManager;->cleanup()V

    .line 217
    iput-object v1, p0, Lcom/sonymobile/jms/ImApiHolder;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    goto :goto_9

    .line 220
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/permission/ImPermissionManager;->cleanup()V

    .line 221
    iput-object v1, p0, Lcom/sonymobile/jms/ImApiHolder;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    goto :goto_a
.end method

.method protected final getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mApp:Landroid/app/Application;

    return-object v0
.end method

.method public getImContactApi()Lcom/sonymobile/jms/contact/ImContactApi;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    return-object v0
.end method

.method public getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    return-object v0
.end method

.method public getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImEnvironmentManager:Lcom/sonymobile/jms/environment/ImEnvironmentManager;

    return-object v0
.end method

.method public getImFileApi()Lcom/sonymobile/jms/file/ImFileApi;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    return-object v0
.end method

.method public getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    return-object v0
.end method

.method public getImPermissionApi()Lcom/sonymobile/jms/permission/ImPermissionApi;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    return-object v0
.end method

.method public getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sonymobile/jms/ImApiHolder;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    return-object v0
.end method

.method protected init(Landroid/app/Application;)Lcom/sonymobile/jms/ImApiHolder;
    .locals 36
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 91
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/jms/ImApiHolder;->mApp:Landroid/app/Application;

    .line 93
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->isRcsStackInstalledAndEnabled(Landroid/app/Application;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/ImApiHolder;->mApp:Landroid/app/Application;

    invoke-static {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->createInstance(Landroid/content/Context;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/ImApiHolder;->mApp:Landroid/app/Application;

    invoke-static {v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->createInstance(Landroid/content/Context;)V

    .line 104
    new-instance v11, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/ImApiHolder;->mApp:Landroid/app/Application;

    invoke-direct {v11, v4}, Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;-><init>(Landroid/content/Context;)V

    .line 105
    .local v11, "rcsMessagingApi":Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;
    new-instance v10, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/ImApiHolder;->mApp:Landroid/app/Application;

    invoke-direct {v10, v4}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;-><init>(Landroid/content/Context;)V

    .line 106
    .local v10, "rcsCapabilityApi":Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;
    new-instance v21, Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/ImApiHolder;->mApp:Landroid/app/Application;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;-><init>(Landroid/content/Context;)V

    .line 108
    .local v21, "rcsEventsLogApi":Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v9

    .line 109
    .local v9, "richMessaging":Lcom/sonymobile/rcs/provider/messaging/RichMessaging;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v35

    .line 110
    .local v35, "rcsSettings":Lcom/sonymobile/rcs/provider/settings/RcsSettings;
    new-instance v8, Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/ImApiHolder;->mApp:Landroid/app/Application;

    invoke-direct {v8, v4}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;-><init>(Landroid/content/Context;)V

    .line 112
    .local v8, "contactsApi":Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;
    new-instance v5, Lcom/sonymobile/jms/ApiStatusReader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/ImApiHolder;->mApp:Landroid/app/Application;

    invoke-direct {v5, v4, v11, v10}, Lcom/sonymobile/jms/ApiStatusReader;-><init>(Landroid/app/Application;Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;)V

    .line 114
    .local v5, "imApiStatusReader":Lcom/sonymobile/jms/ApiStatusReader;
    new-instance v6, Lcom/sonymobile/jms/setting/ImSettingManager;

    move-object/from16 v0, v35

    invoke-direct {v6, v0}, Lcom/sonymobile/jms/setting/ImSettingManager;-><init>(Lcom/sonymobile/rcs/provider/settings/RcsSettings;)V

    .line 115
    .local v6, "imSettingManager":Lcom/sonymobile/jms/setting/ImSettingManager;
    new-instance v15, Lcom/sonymobile/jms/file/ImFileManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/ImApiHolder;->mApp:Landroid/app/Application;

    invoke-direct {v15, v4, v6}, Lcom/sonymobile/jms/file/ImFileManager;-><init>(Landroid/app/Application;Lcom/sonymobile/jms/setting/ImSettingManager;)V

    .line 117
    .local v15, "imFileManager":Lcom/sonymobile/jms/file/ImFileManager;
    new-instance v7, Lcom/sonymobile/jms/contact/ImContactManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/ImApiHolder;->mApp:Landroid/app/Application;

    invoke-direct {v7, v4, v6, v8, v10}, Lcom/sonymobile/jms/contact/ImContactManager;-><init>(Landroid/app/Application;Lcom/sonymobile/jms/setting/ImSettingManager;Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;)V

    .line 120
    .local v7, "imContactManager":Lcom/sonymobile/jms/contact/ImContactManager;
    new-instance v3, Lcom/sonymobile/jms/permission/ImPermissionManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/ImApiHolder;->mApp:Landroid/app/Application;

    invoke-direct/range {v3 .. v11}, Lcom/sonymobile/jms/permission/ImPermissionManager;-><init>(Landroid/app/Application;Lcom/sonymobile/jms/ApiStatusReader;Lcom/sonymobile/jms/setting/ImSettingManager;Lcom/sonymobile/jms/contact/ImContactManager;Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;Lcom/sonymobile/rcs/provider/messaging/RichMessaging;Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;)V

    .line 124
    .local v3, "imPermissionManager":Lcom/sonymobile/jms/permission/ImPermissionManager;
    new-instance v16, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/ImApiHolder;->mApp:Landroid/app/Application;

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v6}, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;-><init>(Landroid/app/Application;Lcom/sonymobile/jms/setting/ImSettingManager;)V

    .line 127
    .local v16, "imUndeliveredMessageManager":Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;
    new-instance v18, Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6, v3, v7}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;-><init>(Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;Lcom/sonymobile/jms/setting/ImSettingManager;Lcom/sonymobile/jms/permission/ImPermissionManager;Lcom/sonymobile/jms/contact/ImContactManager;)V

    .line 131
    .local v18, "rcsMessageEventHandler":Lcom/sonymobile/jms/message/RcsMessageEventHandler;
    new-instance v19, Lcom/sonymobile/jms/message/ImFileIconManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/jms/ImApiHolder;->mApp:Landroid/app/Application;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Lcom/sonymobile/jms/message/ImFileIconManager;-><init>(Landroid/app/Application;)V

    .line 133
    .local v19, "imFileIconManager":Lcom/sonymobile/jms/message/ImFileIconManager;
    new-instance v12, Lcom/sonymobile/jms/message/ImMessageStorageManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/jms/ImApiHolder;->mApp:Landroid/app/Application;

    move-object v14, v7

    move-object/from16 v17, v3

    move-object/from16 v20, v9

    invoke-direct/range {v12 .. v21}, Lcom/sonymobile/jms/message/ImMessageStorageManager;-><init>(Landroid/app/Application;Lcom/sonymobile/jms/contact/ImContactManager;Lcom/sonymobile/jms/file/ImFileManager;Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;Lcom/sonymobile/jms/permission/ImPermissionManager;Lcom/sonymobile/jms/message/RcsMessageEventHandler;Lcom/sonymobile/jms/message/ImFileIconManager;Lcom/sonymobile/rcs/provider/messaging/RichMessaging;Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;)V

    .line 137
    .local v12, "imMessageStorageManager":Lcom/sonymobile/jms/message/ImMessageStorageManager;
    new-instance v22, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/ImApiHolder;->mApp:Landroid/app/Application;

    move-object/from16 v23, v0

    move-object/from16 v24, v7

    move-object/from16 v25, v12

    move-object/from16 v26, v15

    move-object/from16 v27, v21

    move-object/from16 v28, v9

    invoke-direct/range {v22 .. v28}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;-><init>(Landroid/app/Application;Lcom/sonymobile/jms/contact/ImContactManager;Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/file/ImFileManager;Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;Lcom/sonymobile/rcs/provider/messaging/RichMessaging;)V

    .line 141
    .local v22, "imConversationStorageManager":Lcom/sonymobile/jms/conversation/ImConversationStorageManager;
    new-instance v23, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    move-object/from16 v24, v12

    move-object/from16 v25, v7

    move-object/from16 v26, v3

    move-object/from16 v27, v6

    move-object/from16 v28, v18

    move-object/from16 v29, v5

    invoke-direct/range {v23 .. v29}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;-><init>(Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/contact/ImContactManager;Lcom/sonymobile/jms/permission/ImPermissionManager;Lcom/sonymobile/jms/setting/ImSettingManager;Lcom/sonymobile/jms/message/RcsMessageEventHandler;Lcom/sonymobile/jms/ApiStatusReader;)V

    .line 146
    .local v23, "rcsSessionEventHandler":Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;
    new-instance v24, Lcom/sonymobile/jms/conversation/ImConversationManager;

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v3

    move-object/from16 v28, v12

    move-object/from16 v29, v22

    move-object/from16 v30, v15

    move-object/from16 v31, v23

    move-object/from16 v32, v18

    move-object/from16 v33, v9

    move-object/from16 v34, v11

    invoke-direct/range {v24 .. v34}, Lcom/sonymobile/jms/conversation/ImConversationManager;-><init>(Lcom/sonymobile/jms/ApiStatusReader;Lcom/sonymobile/jms/setting/ImSettingManager;Lcom/sonymobile/jms/permission/ImPermissionManager;Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/conversation/ImConversationStorageManager;Lcom/sonymobile/jms/file/ImFileManager;Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;Lcom/sonymobile/jms/message/RcsMessageEventHandler;Lcom/sonymobile/rcs/provider/messaging/RichMessaging;Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;)V

    .line 151
    .local v24, "imConversationActionManager":Lcom/sonymobile/jms/conversation/ImConversationManager;
    new-instance v25, Lcom/sonymobile/jms/environment/ImEnvironmentManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/ImApiHolder;->mApp:Landroid/app/Application;

    move-object/from16 v26, v0

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v23

    move-object/from16 v30, v11

    move-object/from16 v31, v10

    invoke-direct/range {v25 .. v31}, Lcom/sonymobile/jms/environment/ImEnvironmentManager;-><init>(Landroid/app/Application;Lcom/sonymobile/jms/ApiStatusReader;Lcom/sonymobile/jms/setting/ImSettingManager;Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;)V

    .line 155
    .local v25, "imEnvironmentManager":Lcom/sonymobile/jms/environment/ImEnvironmentManager;
    sput-object v23, Lcom/sonymobile/jms/ImApiHolder;->sRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    .line 156
    sput-object v18, Lcom/sonymobile/jms/ImApiHolder;->sRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    .line 158
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/jms/ImApiHolder;->mImEnvironmentManager:Lcom/sonymobile/jms/environment/ImEnvironmentManager;

    .line 159
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sonymobile/jms/ImApiHolder;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    .line 160
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sonymobile/jms/ImApiHolder;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    .line 161
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sonymobile/jms/ImApiHolder;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    .line 162
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/jms/ImApiHolder;->mImFileIconManager:Lcom/sonymobile/jms/message/ImFileIconManager;

    .line 163
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/jms/ImApiHolder;->mImUndeliveredMessageManager:Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;

    .line 164
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/jms/ImApiHolder;->mImConversationStorageManager:Lcom/sonymobile/jms/conversation/ImConversationStorageManager;

    .line 165
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sonymobile/jms/ImApiHolder;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    .line 166
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/jms/ImApiHolder;->mImConversationActionManager:Lcom/sonymobile/jms/conversation/ImConversationManager;

    .line 167
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonymobile/jms/ImApiHolder;->mImPermissionManager:Lcom/sonymobile/jms/permission/ImPermissionManager;

    .line 169
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->init(Lcom/sonymobile/jms/message/ImMessageStorageManager;)V

    .line 170
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->init(Lcom/sonymobile/jms/environment/ApiConnectionStatusChanger;Lcom/sonymobile/jms/conversation/ImConversationManager;)V

    .line 171
    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->init()V

    const-class v4, Lcom/sonymobile/jms/ImApiHolder;

    .line 173
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v13, " initialized ok!"

    invoke-virtual {v4, v13}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 175
    return-object p0

    .end local v3    # "imPermissionManager":Lcom/sonymobile/jms/permission/ImPermissionManager;
    .end local v5    # "imApiStatusReader":Lcom/sonymobile/jms/ApiStatusReader;
    .end local v6    # "imSettingManager":Lcom/sonymobile/jms/setting/ImSettingManager;
    .end local v7    # "imContactManager":Lcom/sonymobile/jms/contact/ImContactManager;
    .end local v8    # "contactsApi":Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;
    .end local v9    # "richMessaging":Lcom/sonymobile/rcs/provider/messaging/RichMessaging;
    .end local v10    # "rcsCapabilityApi":Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;
    .end local v11    # "rcsMessagingApi":Lcom/sonymobile/rcs/service/api/client/messaging/MessagingApi;
    .end local v12    # "imMessageStorageManager":Lcom/sonymobile/jms/message/ImMessageStorageManager;
    .end local v15    # "imFileManager":Lcom/sonymobile/jms/file/ImFileManager;
    .end local v16    # "imUndeliveredMessageManager":Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;
    .end local v18    # "rcsMessageEventHandler":Lcom/sonymobile/jms/message/RcsMessageEventHandler;
    .end local v19    # "imFileIconManager":Lcom/sonymobile/jms/message/ImFileIconManager;
    .end local v21    # "rcsEventsLogApi":Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;
    .end local v22    # "imConversationStorageManager":Lcom/sonymobile/jms/conversation/ImConversationStorageManager;
    .end local v23    # "rcsSessionEventHandler":Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;
    .end local v24    # "imConversationActionManager":Lcom/sonymobile/jms/conversation/ImConversationManager;
    .end local v25    # "imEnvironmentManager":Lcom/sonymobile/jms/environment/ImEnvironmentManager;
    .end local v35    # "rcsSettings":Lcom/sonymobile/rcs/provider/settings/RcsSettings;
    :cond_0
    const-class v4, Lcom/sonymobile/jms/ImApiHolder;

    .line 94
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v13, " was not initialized since stack is not installed or enabled!"

    invoke-virtual {v4, v13}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 97
    return-object p0
.end method
