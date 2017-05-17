.class public Lcom/sonyericsson/conversations/notifications/BadgeController;
.super Ljava/lang/Object;
.source "BadgeController.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBadgeProviderAvailable:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentNbr:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/notifications/BadgeController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BadgeController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 32
    const-string/jumbo v1, "SUM(unread_count) AS sum_of_unread_messages"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 31
    sput-object v0, Lcom/sonyericsson/conversations/notifications/BadgeController;->PROJECTION:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v2, -0x1

    iput v2, p0, Lcom/sonyericsson/conversations/notifications/BadgeController;->mCurrentNbr:I

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/BadgeController;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "BadgeController"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 46
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/BadgeController;->checkBadgeProviderAvailability()V

    .line 47
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 48
    .local v1, "looper":Landroid/os/Looper;
    if-nez v1, :cond_0

    .line 49
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/conversations/notifications/BadgeController;->mHandler:Landroid/os/Handler;

    .line 42
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/notifications/BadgeController;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private checkBadgeProviderAvailability()V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/BadgeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 138
    sget-object v2, Lcom/sonymobile/home/resourceprovider/BadgeProviderContract;->CONTENT_URI:Landroid/net/Uri;

    .line 137
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 139
    .local v0, "badgeProviderClient":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_0

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/notifications/BadgeController;->mBadgeProviderAvailable:Z

    .line 141
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 136
    :cond_0
    return-void
.end method

.method private getNumberOfUnreadIms()I
    .locals 4

    .prologue
    .line 124
    const/4 v2, 0x0

    .line 125
    .local v2, "nbrOfUnread":I
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v1

    .line 126
    .local v1, "imMessageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    if-eqz v1, :cond_0

    .line 128
    :try_start_0
    invoke-interface {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->retrieveIncomingUnreadMessages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 133
    :cond_0
    :goto_0
    return v2

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v3, "Failed to retrieve unread messages"

    invoke-static {v3, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getNumberOfUnreadXms()I
    .locals 8

    .prologue
    .line 102
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_0
    const/4 v6, 0x0

    .line 107
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 109
    .local v7, "nbrOfUnread":I
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/BadgeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    .line 110
    sget-object v2, Lcom/sonyericsson/conversations/notifications/BadgeController;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "unread_count > 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 109
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 111
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const-string/jumbo v0, "sum_of_unread_messages"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 115
    :cond_1
    if-eqz v6, :cond_2

    .line 116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_2
    return v7

    .line 114
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 115
    if-eqz v6, :cond_3

    .line 116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_3
    throw v0
.end method


# virtual methods
.method public updateIcon()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-boolean v3, p0, Lcom/sonyericsson/conversations/notifications/BadgeController;->mBadgeProviderAvailable:Z

    if-nez v3, :cond_1

    .line 63
    sget-boolean v2, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    .line 64
    const-string/jumbo v2, "Unable to update badge icon: Home Badge provider unavailable."

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void

    .line 69
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/BadgeController;->getNumberOfUnreadXms()I

    move-result v1

    .line 70
    .local v1, "nbrOfUnread":I
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/BadgeController;->getNumberOfUnreadIms()I

    move-result v3

    add-int/2addr v1, v3

    .line 74
    :cond_2
    iget v3, p0, Lcom/sonyericsson/conversations/notifications/BadgeController;->mCurrentNbr:I

    if-eq v1, v3, :cond_3

    .line 75
    iput v1, p0, Lcom/sonyericsson/conversations/notifications/BadgeController;->mCurrentNbr:I

    .line 76
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 77
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "badge_count"

    .line 78
    if-ltz v1, :cond_4

    .end local v1    # "nbrOfUnread":I
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 77
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string/jumbo v2, "package_name"

    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/BadgeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v2, "activity_name"

    .line 82
    const-class v3, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/BadgeController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sonyericsson/conversations/notifications/BadgeController$1;

    invoke-direct {v3, p0, v0}, Lcom/sonyericsson/conversations/notifications/BadgeController$1;-><init>(Lcom/sonyericsson/conversations/notifications/BadgeController;Landroid/content/ContentValues;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_3
    return-void

    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v1    # "nbrOfUnread":I
    :cond_4
    move v1, v2

    .line 78
    goto :goto_0
.end method
