.class public Lcom/sonyericsson/conversations/ApiHolder;
.super Lcom/sonymobile/jms/ImApiHolder;
.source "ApiHolder.java"

# interfaces
.implements Lcom/sonyericsson/conversations/Apis;
.implements Lcom/sonymobile/jms/ImApis;


# instance fields
.field private mContactManager:Lcom/sonyericsson/conversations/contact/ContactManager;

.field private mConversationItemManager:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

.field private mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

.field private mConversationPropertiesDAO:Lcom/sonyericsson/conversations/persistence/ConversationPropertiesApi;

.field private mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

.field private mDraftsManager:Lcom/sonyericsson/conversations/draft/DraftsManager;

.field private mNetworkManager:Lcom/sonymobile/network/NetworkManager;

.field private mNewApiNotificationManagerProxy:Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;

.field private mNotificationManager:Lcom/sonyericsson/conversations/notifications/NotificationManager;

.field private mResizeManager:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

.field private mSettingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;

.field private mStarStatusManager:Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

.field private mStickerManager:Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

.field private mXmsManager:Lcom/sonyericsson/conversations/sms/XmsManager;

.field private mXmsResendManager:Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sonymobile/jms/ImApiHolder;-><init>()V

    .line 70
    return-void
.end method

.method public static exitApis()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ApiHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ApiHolder;->exit()V

    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sonyericsson/conversations/ApiHolder;->setApis(Lcom/sonymobile/jms/ImApiHolder;)V

    .line 78
    return-void
.end method

.method public static getApis()Lcom/sonyericsson/conversations/Apis;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/sonymobile/jms/ImApiHolder;->getApis()Lcom/sonymobile/jms/ImApis;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/Apis;

    return-object v0
.end method

.method public static initApis(Landroid/app/Application;)V
    .locals 1
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 75
    new-instance v0, Lcom/sonyericsson/conversations/ApiHolder;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ApiHolder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ApiHolder;->init(Landroid/app/Application;)Lcom/sonyericsson/conversations/ApiHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/ApiHolder;->setApis(Lcom/sonymobile/jms/ImApiHolder;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected final exit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;->close()V

    .line 132
    iput-object v1, p0, Lcom/sonyericsson/conversations/ApiHolder;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    .line 133
    iput-object v1, p0, Lcom/sonyericsson/conversations/ApiHolder;->mDraftsManager:Lcom/sonyericsson/conversations/draft/DraftsManager;

    .line 134
    iput-object v1, p0, Lcom/sonyericsson/conversations/ApiHolder;->mStarStatusManager:Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    .line 135
    iput-object v1, p0, Lcom/sonyericsson/conversations/ApiHolder;->mConversationPropertiesDAO:Lcom/sonyericsson/conversations/persistence/ConversationPropertiesApi;

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->cleanup()V

    .line 138
    iput-object v1, p0, Lcom/sonyericsson/conversations/ApiHolder;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mContactManager:Lcom/sonyericsson/conversations/contact/ContactManager;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mContactManager:Lcom/sonyericsson/conversations/contact/ContactManager;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/contact/ContactManager;->cleanup()V

    .line 141
    iput-object v1, p0, Lcom/sonyericsson/conversations/ApiHolder;->mContactManager:Lcom/sonyericsson/conversations/contact/ContactManager;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mNetworkManager:Lcom/sonymobile/network/NetworkManager;

    if-eqz v0, :cond_1

    .line 144
    iput-object v1, p0, Lcom/sonyericsson/conversations/ApiHolder;->mNetworkManager:Lcom/sonymobile/network/NetworkManager;

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mXmsManager:Lcom/sonyericsson/conversations/sms/XmsManager;

    if-eqz v0, :cond_2

    .line 148
    iput-object v1, p0, Lcom/sonyericsson/conversations/ApiHolder;->mXmsManager:Lcom/sonyericsson/conversations/sms/XmsManager;

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mSettingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mSettingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->cleanup()V

    .line 153
    iput-object v1, p0, Lcom/sonyericsson/conversations/ApiHolder;->mSettingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mXmsResendManager:Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;

    if-eqz v0, :cond_4

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mXmsResendManager:Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->cleanup()V

    .line 158
    iput-object v1, p0, Lcom/sonyericsson/conversations/ApiHolder;->mXmsResendManager:Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mConversationItemManager:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->cleanup()V

    .line 162
    iput-object v1, p0, Lcom/sonyericsson/conversations/ApiHolder;->mConversationItemManager:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mNotificationManager:Lcom/sonyericsson/conversations/notifications/NotificationManager;

    if-eqz v0, :cond_5

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mNotificationManager:Lcom/sonyericsson/conversations/notifications/NotificationManager;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/notifications/NotificationManager;->cleanup()V

    .line 166
    iput-object v1, p0, Lcom/sonyericsson/conversations/ApiHolder;->mNotificationManager:Lcom/sonyericsson/conversations/notifications/NotificationManager;

    .line 169
    :cond_5
    iput-object v1, p0, Lcom/sonyericsson/conversations/ApiHolder;->mNewApiNotificationManagerProxy:Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;

    .line 171
    iput-object v1, p0, Lcom/sonyericsson/conversations/ApiHolder;->mStickerManager:Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    .line 173
    invoke-super {p0}, Lcom/sonymobile/jms/ImApiHolder;->exit()V

    .line 130
    return-void
.end method

.method public getContactManager()Lcom/sonyericsson/conversations/contact/ContactManager;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mContactManager:Lcom/sonyericsson/conversations/contact/ContactManager;

    return-object v0
.end method

.method public bridge synthetic getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemApi;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ApiHolder;->getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    move-result-object v0

    return-object v0
.end method

.method public getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemManager;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mConversationItemManager:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    return-object v0
.end method

.method public getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    return-object v0
.end method

.method public getConversationPropertiesManager()Lcom/sonyericsson/conversations/persistence/ConversationPropertiesApi;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mConversationPropertiesDAO:Lcom/sonyericsson/conversations/persistence/ConversationPropertiesApi;

    return-object v0
.end method

.method public getDraftsManager()Lcom/sonyericsson/conversations/draft/DraftsApi;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mDraftsManager:Lcom/sonyericsson/conversations/draft/DraftsManager;

    return-object v0
.end method

.method public getNetworkApi()Lcom/sonymobile/network/NetworkApi;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mNetworkManager:Lcom/sonymobile/network/NetworkManager;

    return-object v0
.end method

.method public getNotificationManager()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mNotificationManager:Lcom/sonyericsson/conversations/notifications/NotificationManager;

    return-object v0
.end method

.method public getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mNewApiNotificationManagerProxy:Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;

    return-object v0
.end method

.method public getResizeManager()Lcom/sonyericsson/conversations/ui/controller/ResizeManager;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mResizeManager:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    return-object v0
.end method

.method public getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mSettingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;

    return-object v0
.end method

.method public getStarStatusManager()Lcom/sonyericsson/conversations/starstatus/StarStatusApi;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mStarStatusManager:Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    return-object v0
.end method

.method public getStickerManager()Lcom/sonyericsson/conversations/ui/stickers/StickerManager;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mStickerManager:Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    return-object v0
.end method

.method public getXmsManager()Lcom/sonyericsson/conversations/sms/XmsManager;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mXmsManager:Lcom/sonyericsson/conversations/sms/XmsManager;

    return-object v0
.end method

.method public getXmsResendManager()Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mXmsResendManager:Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;

    return-object v0
.end method

.method protected final init(Landroid/app/Application;)Lcom/sonyericsson/conversations/ApiHolder;
    .locals 13
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/sonymobile/jms/ImApiHolder;->init(Landroid/app/Application;)Lcom/sonymobile/jms/ImApiHolder;

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ApiHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 92
    .local v1, "appCtx":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ApiHolder;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v2

    .line 93
    .local v2, "imMessageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ApiHolder;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v3

    .line 95
    .local v3, "imConversationApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v11

    .line 96
    .local v11, "contactLookup":Lcom/sonyericsson/conversations/util/ContactLookup;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ApiHolder;->getImContactApi()Lcom/sonymobile/jms/contact/ImContactApi;

    move-result-object v12

    .line 97
    .local v12, "imContactApi":Lcom/sonymobile/jms/contact/ImContactApi;
    new-instance v0, Lcom/sonyericsson/conversations/contact/ContactManager;

    invoke-direct {v0, p1, v11, v12}, Lcom/sonyericsson/conversations/contact/ContactManager;-><init>(Landroid/app/Application;Lcom/sonyericsson/conversations/util/ContactLookup;Lcom/sonymobile/jms/contact/ImContactApi;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mContactManager:Lcom/sonyericsson/conversations/contact/ContactManager;

    .line 98
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationManager;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ApiHolder;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/conversations/conversation/ConversationManager;-><init>(Landroid/content/Context;Lcom/sonymobile/jms/environment/ImEnvironmentApi;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 99
    new-instance v0, Lcom/sonymobile/network/NetworkManager;

    invoke-direct {v0, v1}, Lcom/sonymobile/network/NetworkManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mNetworkManager:Lcom/sonymobile/network/NetworkManager;

    .line 100
    new-instance v0, Lcom/sonyericsson/conversations/sms/XmsManager;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/sms/XmsManager;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mXmsManager:Lcom/sonyericsson/conversations/sms/XmsManager;

    .line 101
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mNewApiNotificationManagerProxy:Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;

    .line 103
    new-instance v0, Lcom/sonyericsson/conversations/notifications/NotificationManager;

    .line 104
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ApiHolder;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ApiHolder;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 105
    iget-object v6, p0, Lcom/sonyericsson/conversations/ApiHolder;->mNewApiNotificationManagerProxy:Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;

    .line 103
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/notifications/NotificationManager;-><init>(Landroid/content/Context;Lcom/sonymobile/jms/message/ImMessageStorageApi;Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonyericsson/conversations/conversation/ConversationManager;Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mNotificationManager:Lcom/sonyericsson/conversations/notifications/NotificationManager;

    .line 107
    new-instance v0, Lcom/sonyericsson/conversations/settings/SettingsManager;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mSettingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mSettingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->init()V

    .line 110
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;-><init>(Landroid/content/Context;Lcom/sonymobile/jms/message/ImMessageStorageApi;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mXmsResendManager:Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mXmsResendManager:Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->init()V

    .line 113
    new-instance v0, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    .line 114
    new-instance v0, Lcom/sonyericsson/conversations/persistence/ConversationPropertiesDAO;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ApiHolder;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    invoke-direct {v0, v4}, Lcom/sonyericsson/conversations/persistence/ConversationPropertiesDAO;-><init>(Lcom/sonyericsson/conversations/persistence/DatabaseHelper;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mConversationPropertiesDAO:Lcom/sonyericsson/conversations/persistence/ConversationPropertiesApi;

    .line 115
    new-instance v0, Lcom/sonyericsson/conversations/draft/DraftsManager;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ApiHolder;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    invoke-direct {v0, v4}, Lcom/sonyericsson/conversations/draft/DraftsManager;-><init>(Lcom/sonyericsson/conversations/persistence/DatabaseHelper;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mDraftsManager:Lcom/sonyericsson/conversations/draft/DraftsManager;

    .line 116
    new-instance v0, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ApiHolder;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    invoke-direct {v0, v4}, Lcom/sonyericsson/conversations/starstatus/StarStatusManager;-><init>(Lcom/sonyericsson/conversations/persistence/DatabaseHelper;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mStarStatusManager:Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    .line 118
    new-instance v4, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    .line 119
    iget-object v7, p0, Lcom/sonyericsson/conversations/ApiHolder;->mDraftsManager:Lcom/sonyericsson/conversations/draft/DraftsManager;

    iget-object v8, p0, Lcom/sonyericsson/conversations/ApiHolder;->mStarStatusManager:Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    .line 120
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ApiHolder;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ApiHolder;->getImContactApi()Lcom/sonymobile/jms/contact/ImContactApi;

    move-result-object v10

    move-object v5, v1

    move-object v6, v2

    .line 118
    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;-><init>(Landroid/content/Context;Lcom/sonymobile/jms/message/ImMessageStorageApi;Lcom/sonyericsson/conversations/draft/DraftsApi;Lcom/sonyericsson/conversations/starstatus/StarStatusApi;Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonymobile/jms/contact/ImContactApi;)V

    iput-object v4, p0, Lcom/sonyericsson/conversations/ApiHolder;->mConversationItemManager:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mConversationItemManager:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->init()V

    .line 123
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mResizeManager:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    .line 125
    new-instance v0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ApiHolder;->mStickerManager:Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    .line 127
    return-object p0
.end method

.method protected bridge synthetic init(Landroid/app/Application;)Lcom/sonymobile/jms/ImApiHolder;
    .locals 1
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ApiHolder;->init(Landroid/app/Application;)Lcom/sonyericsson/conversations/ApiHolder;

    move-result-object v0

    return-object v0
.end method
