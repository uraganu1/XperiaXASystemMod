.class final Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$1;
.super Ljava/lang/Object;
.source "ConversationListModel.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextCursor(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 6
    .param p1, "xmsCursor"    # Landroid/database/Cursor;
    .param p2, "imCursor"    # Landroid/database/Cursor;

    .prologue
    .line 145
    const-string/jumbo v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, "firstDateIndex":I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 148
    .local v4, "xmsDate":J
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asLocalTimestamp(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 149
    .local v2, "imDate":J
    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 150
    return-object p1

    .line 152
    :cond_0
    return-object p2
.end method
