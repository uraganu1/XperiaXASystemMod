.class public Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;
.super Ljava/lang/Object;
.source "SearchDataSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SearchDataChangeListener;,
        Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$DataCachingHandler;,
        Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$ContactsDataObserver;,
        Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SmartSearchDataObserver;
    }
.end annotation


# static fields
.field protected static final OBSERVER_TYPE_CONTACTS_DATA:I = 0x1

.field protected static final OBSERVER_TYPE_SMART_SEARCH_DATA:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SearchDataSync"

.field protected static final TOKEN_QUERY_CONTACTS_DATA:I = 0x1

.field protected static final TOKEN_QUERY_SMART_SEARCH_DATA:I = 0x2

.field private static final UPDATE_DELAY_MILLIS:I = 0x1f4


# instance fields
.field private mContactsDataObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SearchDataChangeListener;

.field private mSmartSearchDataObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->loadContactsData()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->loadSmartSearchData()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->queryContactsDatabase()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->querySmartSearchDatabase()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mContext:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->registerObserver(Landroid/content/ContentResolver;)V

    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->loadContactsData()V

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->loadSmartSearchData()V

    .line 63
    return-void
.end method

.method private createSelectionForLoadContacts()Ljava/lang/String;
    .locals 7

    .prologue
    .line 178
    const-string/jumbo v1, ""

    .line 180
    .local v1, "onlineSelect":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 181
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "online_contacts"

    .line 182
    const/4 v5, 0x0

    .line 181
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 183
    .local v0, "displayOnlyOnlineContacts":Z
    sget-boolean v4, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 184
    const-string/jumbo v4, "SearchDataSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "displayOnlyOnlineContacts ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    if-eqz v0, :cond_1

    .line 188
    const-string/jumbo v1, " AND NOT contact_presence=0"

    .line 191
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND in_visible_group=1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "selection":Ljava/lang/String;
    sget-boolean v4, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 194
    const-string/jumbo v4, "SearchDataSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "load contacts selection = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_2
    return-object v3
.end method

.method private destroyHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 273
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mHandler:Landroid/os/Handler;

    .line 268
    :cond_0
    return-void
.end method

.method private loadContactsData()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->constructHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mHandler:Landroid/os/Handler;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 236
    return-void
.end method

.method private loadSmartSearchData()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->constructHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mHandler:Landroid/os/Handler;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    return-void
.end method

.method private queryContactsDatabase()V
    .locals 7

    .prologue
    .line 203
    const-string/jumbo v0, "SearchDataSync"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 204
    const/4 v6, 0x0

    .line 206
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 208
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->isJapanLocale()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 210
    const-string/jumbo v0, "SearchDataSync"

    const-string/jumbo v1, "is Japan Locale"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchContants;->CONTACT_DATA_JP_PROJECTION:[Ljava/lang/String;

    .line 218
    .local v2, "projection":[Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->createSelectionForLoadContacts()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "selection":Ljava/lang/String;
    const-string/jumbo v5, "contact_id ASC"

    .line 220
    .local v5, "order":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 222
    const/4 v4, 0x0

    .line 221
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 224
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->getInstance()Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;

    invoke-direct {v1, v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->setContactsCacheData(Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;)V

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mListener:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SearchDataChangeListener;

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mListener:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SearchDataChangeListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SearchDataChangeListener;->notifyChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_2
    if-eqz v6, :cond_3

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_3
    const-string/jumbo v0, "SearchDataSync"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 202
    return-void

    .line 216
    .end local v3    # "selection":Ljava/lang/String;
    .end local v5    # "order":Ljava/lang/String;
    .local v2, "projection":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchContants;->CONTACT_DATA_PROJECTION:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v2, "projection":[Ljava/lang/String;
    goto :goto_0

    .line 228
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 229
    if-eqz v6, :cond_5

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_5
    throw v0
.end method

.method private querySmartSearchDatabase()V
    .locals 12

    .prologue
    .line 129
    const-string/jumbo v0, "SearchDataSync"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 130
    const/4 v7, 0x0

    .line 132
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type = 1 OR type & "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->getLocaleType()I

    move-result v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    const-string/jumbo v1, " != 0"

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "selection":Ljava/lang/String;
    const-string/jumbo v5, "contact_id ASC"

    .line 135
    .local v5, "order":Ljava/lang/String;
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 136
    const-string/jumbo v0, "SearchDataSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "load smart search selection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns$DigitizedData;->CONTENT_URI:Landroid/net/Uri;

    .line 140
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns$DigitizedData;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 139
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 142
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-nez v7, :cond_3

    .line 167
    if-eqz v7, :cond_2

    .line 168
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_2
    return-void

    .line 146
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 147
    .local v6, "count":I
    new-instance v9, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;

    invoke-direct {v9, v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;-><init>(I)V

    .line 148
    .local v9, "tinyCursor":Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;
    const/4 v8, 0x0

    .line 149
    .local v8, "i":I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    if-lt v8, v6, :cond_7

    .line 152
    const-string/jumbo v0, "SearchDataSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadSmartSearchTable outbound "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_4
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->getInstance()Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->setSmartSearchCacheData(Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;)V

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mListener:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SearchDataChangeListener;

    if-eqz v0, :cond_5

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mListener:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SearchDataChangeListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SearchDataChangeListener;->notifyChange()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :cond_5
    if-eqz v7, :cond_6

    .line 168
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_6
    const-string/jumbo v0, "SearchDataSync"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 128
    return-void

    .line 156
    :cond_7
    :try_start_2
    iget-object v0, v9, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;->mContactId:[J

    .line 157
    const/4 v1, 0x1

    .line 156
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v10, v1

    aput-wide v10, v0, v8

    .line 158
    iget-object v0, v9, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;->mKey:[Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 159
    iget-object v0, v9, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;->mType:[I

    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v0, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 166
    .end local v3    # "selection":Ljava/lang/String;
    .end local v5    # "order":Ljava/lang/String;
    .end local v6    # "count":I
    .end local v8    # "i":I
    .end local v9    # "tinyCursor":Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;
    :catchall_0
    move-exception v0

    .line 167
    if-eqz v7, :cond_8

    .line 168
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_8
    throw v0
.end method

.method private registerObserver(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    .line 95
    if-nez p1, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mContactsDataObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->constructContentObserver(I)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mContactsDataObserver:Landroid/database/ContentObserver;

    .line 100
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mContactsDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mContactsDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mSmartSearchDataObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_2

    .line 104
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->constructContentObserver(I)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mSmartSearchDataObserver:Landroid/database/ContentObserver;

    .line 105
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns$DigitizedData;->CONTENT_URI:Landroid/net/Uri;

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mSmartSearchDataObserver:Landroid/database/ContentObserver;

    .line 105
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mSmartSearchDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 94
    :cond_2
    return-void
.end method

.method private unregisterObserver(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x0

    .line 112
    if-nez p1, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mContactsDataObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mContactsDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 117
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mContactsDataObserver:Landroid/database/ContentObserver;

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mSmartSearchDataObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mSmartSearchDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 121
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mSmartSearchDataObserver:Landroid/database/ContentObserver;

    .line 111
    :cond_2
    return-void
.end method


# virtual methods
.method protected constructContentObserver(I)Landroid/database/ContentObserver;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 86
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 87
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$ContactsDataObserver;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$ContactsDataObserver;-><init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;)V

    return-object v0

    .line 88
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 89
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SmartSearchDataObserver;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SmartSearchDataObserver;-><init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;)V

    return-object v0

    .line 91
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected constructHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 258
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "SearchDataSync"

    .line 259
    const/16 v3, 0xa

    .line 258
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 260
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 261
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 262
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 263
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Thread.getLooper() returned null."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_0
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$DataCachingHandler;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$DataCachingHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;Landroid/os/Looper;)V

    return-object v2
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mListener:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SearchDataChangeListener;

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->unregisterObserver(Landroid/content/ContentResolver;)V

    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->destroyHandler()V

    .line 82
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method public setListener(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SearchDataChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SearchDataChangeListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mListener:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$SearchDataChangeListener;

    .line 74
    return-void
.end method

.method protected syncSmartSearchData()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->startConvertService(Landroid/content/Context;)V

    .line 252
    return-void
.end method
