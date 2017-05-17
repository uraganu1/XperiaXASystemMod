.class public Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;
.super Ljava/lang/Object;
.source "ConversationItemMergeAndSorter.java"


# instance fields
.field private mConversationItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->mConversationItems:Ljava/util/List;

    .line 18
    return-void
.end method

.method private getChatKey(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;
    .locals 1
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    const/4 v0, 0x0

    .line 141
    if-nez p1, :cond_0

    .line 142
    return-object v0

    .line 144
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addConversationsData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationItem;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conversationItem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .line 35
    .local v0, "conversationItem":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->mConversationItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    .end local v0    # "conversationItem":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    :cond_0
    return-void
.end method

.method public addConversationsData(Ljava/util/List;Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;)V
    .locals 3
    .param p2, "filter"    # Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationItem;",
            ">;",
            "Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationItem;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conversationItem$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .line 42
    .local v0, "conversationItem":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    invoke-interface {p2, v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;->shouldIgnoreConversationItem(Lcom/sonyericsson/conversations/conversation/ConversationItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->mConversationItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    .end local v0    # "conversationItem":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    :cond_1
    return-void
.end method

.method public addConversationsData(Ljava/util/List;Lcom/sonyericsson/conversations/conversation/MergeConversationItem;Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;)V
    .locals 5
    .param p2, "mergeConversationItem"    # Lcom/sonyericsson/conversations/conversation/MergeConversationItem;
    .param p3, "filter"    # Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationItem;",
            ">;",
            "Lcom/sonyericsson/conversations/conversation/MergeConversationItem;",
            "Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationItem;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conversationItem$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .line 56
    .local v0, "conversationItem":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    invoke-interface {p3, v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;->shouldIgnoreConversationItem(Lcom/sonyericsson/conversations/conversation/ConversationItem;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 59
    iget-object v4, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->mConversationItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 60
    .local v2, "index":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 62
    iget-object v4, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->mConversationItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .line 61
    invoke-interface {p2, v4, v0}, Lcom/sonyericsson/conversations/conversation/MergeConversationItem;->onMerge(Lcom/sonyericsson/conversations/conversation/ConversationItem;Lcom/sonyericsson/conversations/conversation/ConversationItem;)Lcom/sonyericsson/conversations/conversation/ConversationItem;

    move-result-object v3

    .line 63
    .local v3, "newData":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    if-eqz v3, :cond_0

    .line 64
    iget-object v4, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->mConversationItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 65
    iget-object v4, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->mConversationItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v3    # "newData":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->mConversationItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v0    # "conversationItem":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    .end local v2    # "index":I
    :cond_2
    return-void
.end method

.method public asCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 31
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 78
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 79
    .local v22, "columnNames":[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v22

    move/from16 v3, v30

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x4

    .line 81
    const-string/jumbo v29, "conversation_key"

    .line 80
    aput-object v29, v22, v28

    .line 82
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x3

    const-string/jumbo v29, "thread_id"

    aput-object v29, v22, v28

    .line 83
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x2

    const-string/jumbo v29, "chat_key"

    aput-object v29, v22, v28

    .line 84
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    .line 85
    const-string/jumbo v29, "conversation_type"

    .line 84
    aput-object v29, v22, v28

    .line 86
    const/16 v27, 0x0

    .line 88
    .local v27, "uniqueId":I
    new-instance v23, Landroid/database/MatrixCursor;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 89
    .local v23, "cursor":Landroid/database/MatrixCursor;
    const-string/jumbo v28, "_id"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 90
    .local v13, "colIndexId":I
    const-string/jumbo v28, "recipient_ids"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 91
    .local v14, "colIndexRecId":I
    const-string/jumbo v28, "snippet"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 93
    .local v16, "colIndexSnippet":I
    const-string/jumbo v28, "snippet_cs"

    .line 92
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 94
    .local v17, "colIndexSnippetCharset":I
    const-string/jumbo v28, "snippet_type"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 95
    .local v18, "colIndexSnippetType":I
    const-string/jumbo v28, "unread_count"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 97
    .local v21, "colIndexUnreadCount":I
    const-string/jumbo v28, "send_failed_count"

    .line 96
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 99
    .local v15, "colIndexSendFailedCount":I
    const-string/jumbo v28, "delivery_failed_count"

    .line 98
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 101
    .local v11, "colIndexDeliveryFailedCount":I
    const-string/jumbo v28, "download_failed_count"

    .line 100
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 102
    .local v12, "colIndexDownloadFailedCount":I
    const-string/jumbo v28, "address"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 103
    .local v6, "colIndexAddress":I
    const-string/jumbo v28, "date"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 104
    .local v10, "colIndexDate":I
    const-string/jumbo v28, "star_status"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 105
    .local v19, "colIndexStarStatus":I
    const-string/jumbo v28, "conversation_key"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 106
    .local v8, "colIndexConvKey":I
    const-string/jumbo v28, "thread_id"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 107
    .local v20, "colIndexThreadId":I
    const-string/jumbo v28, "chat_key"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 108
    .local v7, "colIndexChatKey":I
    const-string/jumbo v28, "conversation_type"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 110
    .local v9, "colIndexConvType":I
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    .line 111
    .local v26, "queryProjection":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->mConversationItems:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "data$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .line 112
    .local v24, "data":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v13

    .line 113
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mRecipientIds:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v26, v14

    .line 114
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippet:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v26, v16

    .line 115
    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippetCharset:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v17

    .line 116
    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippetType:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v18

    .line 117
    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mUnreadCount:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v21

    .line 118
    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSendFailedCount:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v15

    .line 119
    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDeliveryFailedCount:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v11

    .line 120
    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDownloadFailedCount:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v12

    .line 121
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v26, v6

    .line 122
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDate:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v26, v10

    .line 124
    const/16 v28, -0x1

    move/from16 v0, v19

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 125
    move-object/from16 v0, v24

    iget v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mStarStatus:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v19

    .line 128
    :cond_0
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v8

    .line 129
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v26, v20

    .line 130
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->getChatKey(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v7

    .line 132
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v9

    .line 134
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 135
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    .line 137
    .end local v24    # "data":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    :cond_1
    return-object v23
.end method

.method public sort()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->mConversationItems:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 73
    return-void
.end method
