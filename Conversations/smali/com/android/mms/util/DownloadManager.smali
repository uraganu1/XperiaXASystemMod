.class public Lcom/android/mms/util/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/DownloadManager$DownloadManagerHolder;,
        Lcom/android/mms/util/DownloadManager$1;,
        Lcom/android/mms/util/DownloadManager$2;
    }
.end annotation


# instance fields
.field private mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private final mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mRoamingStateListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/mms/util/DownloadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/android/mms/util/DownloadManager$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DownloadManager$1;-><init>(Lcom/android/mms/util/DownloadManager;)V

    .line 65
    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 78
    new-instance v0, Lcom/android/mms/util/DownloadManager$2;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DownloadManager$2;-><init>(Lcom/android/mms/util/DownloadManager;)V

    .line 77
    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mRoamingStateListener:Landroid/content/BroadcastReceiver;

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/util/DownloadManager;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/mms/util/DownloadManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/mms/util/DownloadManager;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/android/mms/util/DownloadManager$DownloadManagerHolder;->INSTANCE:Lcom/android/mms/util/DownloadManager;

    return-object v0
.end method


# virtual methods
.method getAutoDownloadState()Z
    .locals 4

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 157
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    .line 158
    const-string/jumbo v3, "phone"

    .line 157
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 160
    :cond_0
    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 162
    .local v0, "isRoaming":Z
    invoke-virtual {p0, v0}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Z)Z

    move-result v2

    return v2

    .line 164
    .end local v0    # "isRoaming":Z
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Z)Z

    move-result v2

    return v2
.end method

.method getAutoDownloadState(Z)Z
    .locals 6
    .param p1, "roaming"    # Z

    .prologue
    const/4 v5, 0x2

    .line 169
    iget-object v3, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v2

    .line 170
    .local v2, "settings":Lcom/sonyericsson/conversations/settings/Settings;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->isMmsAutoRetrievalEnabled()Z

    move-result v1

    .line 172
    .local v1, "autoDownload":Z
    const-string/jumbo v3, "Conversations"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Should auto download without roaming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 176
    :cond_0
    if-eqz v1, :cond_3

    .line 177
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->isMmsRetrievalDuringRoamingEnabled()Z

    move-result v0

    .line 179
    .local v0, "alwaysAuto":Z
    const-string/jumbo v3, "Conversations"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Should auto download during roaming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 183
    :cond_1
    if-eqz p1, :cond_2

    if-eqz v0, :cond_3

    .line 184
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 187
    .end local v0    # "alwaysAuto":Z
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public getState(Landroid/net/Uri;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 216
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 217
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string/jumbo v2, "st"

    aput-object v2, v3, v5

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    .line 216
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 219
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 221
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    and-int/lit8 v0, v0, -0x5

    .line 225
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 222
    return v0

    .line 225
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_1
    const/16 v0, 0x80

    return v0

    .line 224
    :catchall_0
    move-exception v0

    .line 225
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 224
    throw v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 121
    const-string/jumbo v1, "Already initialized."

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 122
    return-void

    .line 125
    :cond_0
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    .line 126
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 127
    .local v0, "preferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 130
    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mRoamingStateListener:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SERVICE_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 138
    :cond_1
    sget-boolean v1, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v1, :cond_2

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Should auto download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 119
    :cond_2
    return-void
.end method

.method public isAuto()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public markState(Landroid/net/Uri;I)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 192
    const/16 v0, 0x87

    if-ne p2, v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 201
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "st"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 190
    return-void

    .line 194
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    or-int/lit8 p2, p2, 0x4

    goto :goto_0
.end method

.method public showToastToUser(Ljava/lang/String;I)V
    .locals 1
    .param p1, "toast"    # Ljava/lang/String;
    .param p2, "lengthType"    # I

    .prologue
    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    .line 210
    if-nez p2, :cond_1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 207
    :cond_1
    return-void
.end method
