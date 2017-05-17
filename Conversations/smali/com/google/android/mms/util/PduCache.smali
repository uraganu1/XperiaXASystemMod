.class public final Lcom/google/android/mms/util/PduCache;
.super Lcom/google/android/mms/util/AbstractCache;
.source "PduCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/mms/util/AbstractCache",
        "<",
        "Landroid/net/Uri;",
        "Lcom/google/android/mms/util/PduCacheEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final MATCH_TO_MSGBOX_ID_MAP:Landroid/util/SparseIntArray;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static sInstance:Lcom/google/android/mms/util/PduCache;


# instance fields
.field private final mMessageBoxes:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mThreads:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 58
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 59
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "mms"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "mms"

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "mms"

    const-string/jumbo v2, "inbox"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "mms"

    const-string/jumbo v2, "inbox/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "mms"

    const-string/jumbo v2, "sent"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "mms"

    const-string/jumbo v2, "sent/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "mms"

    const-string/jumbo v2, "drafts"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "mms"

    const-string/jumbo v2, "drafts/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "mms"

    const-string/jumbo v2, "outbox"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "mms"

    const-string/jumbo v2, "outbox/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "mms-sms"

    const-string/jumbo v2, "conversations"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "mms-sms"

    const-string/jumbo v2, "conversations/#"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/mms/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Landroid/util/SparseIntArray;

    .line 73
    sget-object v0, Lcom/google/android/mms/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    sget-object v0, Lcom/google/android/mms/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    sget-object v0, Lcom/google/android/mms/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    sget-object v0, Lcom/google/android/mms/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/android/mms/util/AbstractCache;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    .line 84
    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/google/android/mms/util/PduCache;
    .locals 2

    .prologue
    const-class v1, Lcom/google/android/mms/util/PduCache;

    monitor-enter v1

    .line 90
    :try_start_0
    sget-object v0, Lcom/google/android/mms/util/PduCache;->sInstance:Lcom/google/android/mms/util/PduCache;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/google/android/mms/util/PduCache;

    invoke-direct {v0}, Lcom/google/android/mms/util/PduCache;-><init>()V

    sput-object v0, Lcom/google/android/mms/util/PduCache;->sInstance:Lcom/google/android/mms/util/PduCache;

    .line 96
    :cond_0
    sget-object v0, Lcom/google/android/mms/util/PduCache;->sInstance:Lcom/google/android/mms/util/PduCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private normalizeKey(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 178
    sget-object v3, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 179
    .local v0, "match":I
    const/4 v2, 0x0

    .line 181
    .local v2, "normalizedKey":Landroid/net/Uri;
    packed-switch v0, :pswitch_data_0

    .line 193
    :pswitch_0
    const/4 v3, 0x0

    return-object v3

    .line 183
    :pswitch_1
    move-object v2, p1

    .line 199
    .local v2, "normalizedKey":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 189
    .local v2, "normalizedKey":Landroid/net/Uri;
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "msgId":Ljava/lang/String;
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .local v2, "normalizedKey":Landroid/net/Uri;
    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private purgeByMessageBox(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "msgBoxId"    # Ljava/lang/Integer;

    .prologue
    .line 207
    if-eqz p1, :cond_1

    .line 208
    iget-object v4, p0, Lcom/google/android/mms/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 209
    .local v3, "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v3, :cond_1

    .line 210
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 211
    .local v1, "key":Landroid/net/Uri;
    invoke-super {p0, v1}, Lcom/google/android/mms/util/AbstractCache;->purge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/PduCacheEntry;

    .line 212
    .local v0, "entry":Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0, v1, v0}, Lcom/google/android/mms/util/PduCache;->removeFromThreads(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)V

    goto :goto_0

    .line 202
    .end local v0    # "entry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local v1    # "key":Landroid/net/Uri;
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    .end local v3    # "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    :cond_1
    return-void
.end method

.method private purgeByThreadId(J)V
    .locals 7
    .param p1, "threadId"    # J

    .prologue
    .line 232
    iget-object v4, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 233
    .local v3, "thread":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v3, :cond_1

    .line 234
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 235
    .local v1, "key":Landroid/net/Uri;
    invoke-super {p0, v1}, Lcom/google/android/mms/util/AbstractCache;->purge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/PduCacheEntry;

    .line 236
    .local v0, "entry":Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0, v1, v0}, Lcom/google/android/mms/util/PduCache;->removeFromMessageBoxes(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)V

    goto :goto_0

    .line 227
    .end local v0    # "entry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local v1    # "key":Landroid/net/Uri;
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private purgeSingleEntry(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;
    .locals 2
    .param p1, "key"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-super {p0, p1}, Lcom/google/android/mms/util/AbstractCache;->purge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/PduCacheEntry;

    .line 157
    .local v0, "entry":Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/google/android/mms/util/PduCache;->removeFromThreads(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)V

    .line 159
    invoke-direct {p0, p1, v0}, Lcom/google/android/mms/util/PduCache;->removeFromMessageBoxes(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)V

    .line 160
    return-object v0

    .line 162
    :cond_0
    return-object v1
.end method

.method private removeFromMessageBoxes(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)V
    .locals 4
    .param p1, "key"    # Landroid/net/Uri;
    .param p2, "entry"    # Lcom/google/android/mms/util/PduCacheEntry;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/google/android/mms/util/PduCacheEntry;->getMessageBox()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 245
    .local v0, "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 243
    :cond_0
    return-void
.end method

.method private removeFromThreads(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)V
    .locals 4
    .param p1, "key"    # Landroid/net/Uri;
    .param p2, "entry"    # Lcom/google/android/mms/util/PduCacheEntry;

    .prologue
    .line 221
    iget-object v1, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/google/android/mms/util/PduCacheEntry;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 222
    .local v0, "thread":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 126
    :try_start_0
    sget-object v2, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 127
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    monitor-exit p0

    .line 151
    return-object v4

    .line 129
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/mms/util/PduCache;->purgeSingleEntry(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 134
    :pswitch_1
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "msgId":Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/mms/util/PduCache;->purgeSingleEntry(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 139
    .end local v1    # "msgId":Ljava/lang/String;
    :pswitch_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/mms/util/PduCache;->purgeAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 140
    return-object v4

    .line 145
    :pswitch_3
    :try_start_4
    sget-object v2, Lcom/google/android/mms/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/mms/util/PduCache;->purgeByMessageBox(Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 146
    return-object v4

    .line 148
    :pswitch_4
    :try_start_5
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/mms/util/PduCache;->purgeByThreadId(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 149
    return-object v4

    .end local v0    # "match":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic purge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "uri"    # Ljava/lang/Object;

    .prologue
    .line 125
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "uri":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized purgeAll()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 167
    :try_start_0
    invoke-super {p0}, Lcom/google/android/mms/util/AbstractCache;->purgeAll()V

    .line 169
    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 170
    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 166
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "entry"    # Lcom/google/android/mms/util/PduCacheEntry;

    .prologue
    monitor-enter p0

    .line 101
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/mms/util/PduCacheEntry;->getMessageBox()I

    move-result v2

    .line 102
    .local v2, "msgBoxId":I
    iget-object v5, p0, Lcom/google/android/mms/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 103
    .local v1, "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-nez v1, :cond_0

    .line 104
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 105
    .restart local v1    # "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    iget-object v5, p0, Lcom/google/android/mms/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/mms/util/PduCacheEntry;->getThreadId()J

    move-result-wide v6

    .line 109
    .local v6, "threadId":J
    iget-object v5, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 110
    .local v4, "thread":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-nez v4, :cond_1

    .line 111
    new-instance v4, Ljava/util/HashSet;

    .end local v4    # "thread":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 112
    .restart local v4    # "thread":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    iget-object v5, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/mms/util/PduCache;->normalizeKey(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 116
    .local v0, "finalKey":Landroid/net/Uri;
    invoke-super {p0, v0, p2}, Lcom/google/android/mms/util/AbstractCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 117
    .local v3, "result":Z
    if-eqz v3, :cond_2

    .line 118
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    .line 121
    return v3

    .end local v0    # "finalKey":Landroid/net/Uri;
    .end local v1    # "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .end local v2    # "msgBoxId":I
    .end local v3    # "result":Z
    .end local v4    # "thread":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .end local v6    # "threadId":J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/Object;
    .param p2, "entry"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "uri":Ljava/lang/Object;
    check-cast p2, Lcom/google/android/mms/util/PduCacheEntry;

    .end local p2    # "entry":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z

    move-result v0

    return v0
.end method
