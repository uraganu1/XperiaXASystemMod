.class public Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;
.super Ljava/lang/Object;
.source "ConversationItemMerger.java"

# interfaces
.implements Lcom/sonyericsson/conversations/conversation/MergeConversationItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "oldAddress"    # Ljava/lang/String;
    .param p2, "newAddress"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    return-object p1

    .line 58
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    :cond_1
    return-object p2

    .line 59
    :cond_2
    return-object p2
.end method

.method private getConversationId(Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 8
    .param p1, "oldConversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p2, "newConversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 77
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    return-object p2

    .line 80
    :cond_0
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    .line 81
    invoke-interface {p2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v6

    .line 80
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;->getThreadId(JJ)J

    move-result-wide v2

    .line 83
    .local v2, "threadId":J
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    invoke-interface {p2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v4

    .line 82
    invoke-direct {p0, v1, v4}, Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;->getImConversationId(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    .line 84
    .local v0, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-static {v2, v3, v0}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromThreadIdAndImConversationId(JLcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    return-object v1
.end method

.method private getImConversationId(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 0
    .param p1, "oldImConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "newImConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    return-object p1

    .line 103
    :cond_0
    return-object p2
.end method

.method private getRecipientIds(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "oldIds"    # Ljava/lang/String;
    .param p2, "newIds"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    return-object p1

    .line 69
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    :cond_1
    return-object p2

    .line 70
    :cond_2
    return-object p2
.end method

.method private getStarStatus(II)I
    .locals 1
    .param p1, "oldStarStatus"    # I
    .param p2, "newStarStatus"    # I

    .prologue
    .line 107
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 108
    return p1

    .line 110
    :cond_0
    return p2
.end method

.method private getThreadId(JJ)J
    .locals 5
    .param p1, "oldThreadId"    # J
    .param p3, "newThreadId"    # J

    .prologue
    const-wide/16 v2, -0x1

    .line 88
    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 89
    cmp-long v0, p3, v2

    if-nez v0, :cond_0

    .line 90
    return-wide p1

    .line 92
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 93
    return-wide p1

    .line 95
    :cond_1
    return-wide p3
.end method


# virtual methods
.method public onMerge(Lcom/sonyericsson/conversations/conversation/ConversationItem;Lcom/sonyericsson/conversations/conversation/ConversationItem;)Lcom/sonyericsson/conversations/conversation/ConversationItem;
    .locals 6
    .param p1, "currentConversationItem"    # Lcom/sonyericsson/conversations/conversation/ConversationItem;
    .param p2, "newConversationItem"    # Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .prologue
    .line 26
    iget-wide v2, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDate:J

    iget-wide v4, p2, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDate:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 27
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;

    invoke-direct {v0, p1}, Lcom/sonyericsson/conversations/conversation/ConversationItem;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationItem;)V

    .line 32
    .local v0, "mergeConversationItem":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    :goto_0
    iget-object v1, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    .line 33
    iget-object v2, p2, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    .line 32
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;->getAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    .line 34
    iget-object v1, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mRecipientIds:Ljava/lang/String;

    .line 35
    iget-object v2, p2, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mRecipientIds:Ljava/lang/String;

    .line 34
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;->getRecipientIds(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mRecipientIds:Ljava/lang/String;

    .line 37
    iget-object v1, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iget-object v2, p2, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 36
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;->getConversationId(Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 38
    iget v1, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mStarStatus:I

    .line 39
    iget v2, p2, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mStarStatus:I

    .line 38
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;->getStarStatus(II)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mStarStatus:I

    .line 41
    iget v1, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDeliveryFailedCount:I

    .line 42
    iget v2, p2, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDeliveryFailedCount:I

    .line 41
    add-int/2addr v1, v2

    iput v1, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDeliveryFailedCount:I

    .line 43
    iget v1, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDownloadFailedCount:I

    .line 44
    iget v2, p2, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDownloadFailedCount:I

    .line 43
    add-int/2addr v1, v2

    iput v1, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDownloadFailedCount:I

    .line 45
    iget v1, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSendFailedCount:I

    .line 46
    iget v2, p2, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSendFailedCount:I

    .line 45
    add-int/2addr v1, v2

    iput v1, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSendFailedCount:I

    .line 47
    iget v1, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mUnreadCount:I

    .line 48
    iget v2, p2, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mUnreadCount:I

    .line 47
    add-int/2addr v1, v2

    iput v1, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mUnreadCount:I

    .line 49
    return-object v0

    .line 29
    .end local v0    # "mergeConversationItem":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;

    invoke-direct {v0, p2}, Lcom/sonyericsson/conversations/conversation/ConversationItem;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationItem;)V

    .restart local v0    # "mergeConversationItem":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    goto :goto_0
.end method
