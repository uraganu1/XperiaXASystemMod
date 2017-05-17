.class Lcom/sonyericsson/conversations/model/StarredMessageListModel$StarredMessageCursorLoader;
.super Landroid/content/CursorLoader;
.source "StarredMessageListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/StarredMessageListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StarredMessageCursorLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/model/StarredMessageListModel$StarredMessageCursorLoader$1;
    }
.end annotation


# static fields
.field private static final sStarredMessageComparer:Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/sonyericsson/conversations/model/StarredMessageListModel$StarredMessageCursorLoader$1;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/model/StarredMessageListModel$StarredMessageCursorLoader$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/model/StarredMessageListModel$StarredMessageCursorLoader;->sStarredMessageComparer:Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct/range {p0 .. p6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method private getImCursor()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 105
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    .line 106
    .local v0, "apis":Lcom/sonyericsson/conversations/Apis;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v4

    .line 107
    .local v4, "imMessageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    if-nez v4, :cond_0

    .line 108
    return-object v9

    .line 110
    :cond_0
    const/4 v2, 0x0

    .line 112
    .local v2, "imCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getStarStatusManager()Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    move-result-object v9

    invoke-interface {v9}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi;->getStarredMessageKeys()Ljava/util/Collection;

    move-result-object v8

    .line 114
    .local v8, "starredMessageKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 115
    .local v3, "imMessageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "starredMessageKey$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 116
    .local v6, "starredMessageKey":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asImUserMessageId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "messageId":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v3    # "imMessageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "messageId":Ljava/lang/String;
    .end local v6    # "starredMessageKey":Ljava/lang/String;
    .end local v7    # "starredMessageKey$iterator":Ljava/util/Iterator;
    .end local v8    # "starredMessageKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Terminal "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageException;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    .line 123
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 125
    const-string/jumbo v10, " occurred during execution in background thread while fetching im messages associated with message ids!"

    .line 123
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 121
    invoke-static {v9, v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 128
    .end local v1    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    .end local v2    # "imCursor":Landroid/database/Cursor;
    :goto_1
    return-object v2

    .line 119
    .restart local v2    # "imCursor":Landroid/database/Cursor;
    .restart local v3    # "imMessageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "starredMessageKey$iterator":Ljava/util/Iterator;
    .restart local v8    # "starredMessageKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-interface {v4, v3}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->searchMessages(Ljava/util/Collection;)Landroid/database/Cursor;
    :try_end_1
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .local v2, "imCursor":Landroid/database/Cursor;
    goto :goto_1
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, "xmsCursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    .line 100
    .end local v1    # "xmsCursor":Landroid/database/Cursor;
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/StarredMessageListModel$StarredMessageCursorLoader;->getImCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 101
    .local v0, "imCursor":Landroid/database/Cursor;
    new-instance v2, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;

    sget-object v3, Lcom/sonyericsson/conversations/model/StarredMessageListModel$StarredMessageCursorLoader;->sStarredMessageComparer:Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;

    invoke-direct {v2, v1, v0, v3}, Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;)V

    return-object v2
.end method
