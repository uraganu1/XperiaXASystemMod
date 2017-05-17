.class final Lcom/sonyericsson/conversations/model/StarredMessageListModel$StarredMessageCursorLoader$1;
.super Ljava/lang/Object;
.source "StarredMessageListModel.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/StarredMessageListModel$StarredMessageCursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextCursor(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 5
    .param p1, "xmsCursor"    # Landroid/database/Cursor;
    .param p2, "imCursor"    # Landroid/database/Cursor;

    .prologue
    .line 77
    const-string/jumbo v4, "normalized_date"

    .line 76
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 79
    .local v2, "xmsDate":J
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v4

    invoke-interface {v4, p2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asLocalTimestamp(Landroid/database/Cursor;)J

    move-result-wide v0

    .line 80
    .local v0, "imDate":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 81
    return-object p1

    .line 83
    :cond_0
    return-object p2
.end method
