.class public Lcom/sonyericsson/conversations/conversation/ConversationItem;
.super Ljava/lang/Object;
.source "ConversationItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sonyericsson/conversations/conversation/ConversationItem;",
        ">;"
    }
.end annotation


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field public mDate:J

.field public mDeliveryFailedCount:I

.field public mDownloadFailedCount:I

.field public mRecipientIds:Ljava/lang/String;

.field public mSendFailedCount:I

.field public mSnippet:Ljava/lang/String;

.field public mSnippetCharset:I

.field public mSnippetType:I

.field public mStarStatus:I

.field public mUnreadCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->CONVERSATION_ID_NONE:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 12
    iput v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mUnreadCount:I

    .line 13
    iput v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSendFailedCount:I

    .line 14
    iput v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDeliveryFailedCount:I

    .line 15
    iput v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDownloadFailedCount:I

    .line 16
    iput v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippetType:I

    .line 17
    iput-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippet:Ljava/lang/String;

    .line 18
    iput v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippetCharset:I

    .line 19
    iput-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    .line 20
    iput-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mRecipientIds:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDate:J

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mStarStatus:I

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/conversation/ConversationItem;)V
    .locals 3
    .param p1, "initConversationItem"    # Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->CONVERSATION_ID_NONE:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 12
    iput v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mUnreadCount:I

    .line 13
    iput v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSendFailedCount:I

    .line 14
    iput v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDeliveryFailedCount:I

    .line 15
    iput v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDownloadFailedCount:I

    .line 16
    iput v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippetType:I

    .line 17
    iput-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippet:Ljava/lang/String;

    .line 18
    iput v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippetCharset:I

    .line 19
    iput-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    .line 20
    iput-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mRecipientIds:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDate:J

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mStarStatus:I

    .line 28
    iget-object v0, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 29
    iget v0, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mUnreadCount:I

    iput v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mUnreadCount:I

    .line 30
    iget v0, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSendFailedCount:I

    iput v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSendFailedCount:I

    .line 31
    iget v0, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDeliveryFailedCount:I

    iput v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDeliveryFailedCount:I

    .line 32
    iget v0, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDownloadFailedCount:I

    iput v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDownloadFailedCount:I

    .line 33
    iget v0, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippetType:I

    iput v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippetType:I

    .line 34
    iget-object v0, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippet:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippet:Ljava/lang/String;

    .line 35
    iget v0, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippetCharset:I

    iput v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippetCharset:I

    .line 36
    iget-object v0, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mRecipientIds:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mRecipientIds:Ljava/lang/String;

    .line 38
    iget-wide v0, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDate:J

    iput-wide v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDate:J

    .line 39
    iget v0, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mStarStatus:I

    iput v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mStarStatus:I

    .line 27
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sonyericsson/conversations/conversation/ConversationItem;)I
    .locals 4
    .param p1, "conversationData"    # Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDate:J

    iget-wide v2, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDate:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 62
    const/4 v0, 0x1

    return v0

    .line 63
    :cond_0
    iget-wide v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDate:J

    iget-wide v2, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDate:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 64
    const/4 v0, -0x1

    return v0

    .line 66
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "conversationData"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .end local p1    # "conversationData":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/conversation/ConversationItem;->compareTo(Lcom/sonyericsson/conversations/conversation/ConversationItem;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 50
    instance-of v1, p1, Lcom/sonyericsson/conversations/conversation/ConversationItem;

    if-nez v1, :cond_0

    .line 51
    const/4 v1, 0x0

    return v1

    :cond_0
    move-object v0, p1

    .line 54
    check-cast v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;

    .line 55
    .local v0, "conversationData":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 45
    const-string/jumbo v1, "This class does not support usage in hash based structures"

    .line 44
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string/jumbo v1, "conversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string/jumbo v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDate:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    const-string/jumbo v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v1, ", snippet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
