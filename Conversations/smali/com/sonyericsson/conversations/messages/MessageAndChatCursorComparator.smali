.class public Lcom/sonyericsson/conversations/messages/MessageAndChatCursorComparator;
.super Ljava/lang/Object;
.source "MessageAndChatCursorComparator.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextCursor(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 5
    .param p1, "xmsCursor"    # Landroid/database/Cursor;
    .param p2, "chatCursor"    # Landroid/database/Cursor;

    .prologue
    .line 21
    const-string/jumbo v4, "normalized_date"

    .line 20
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 22
    .local v2, "xmsDate":J
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v4

    invoke-interface {v4, p2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asLocalTimestamp(Landroid/database/Cursor;)J

    move-result-wide v0

    .line 24
    .local v0, "chatDate":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 25
    return-object p1

    .line 27
    :cond_0
    return-object p2
.end method
