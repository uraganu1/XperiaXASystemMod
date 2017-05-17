.class public Lcom/sonyericsson/conversations/conversation/ConversationCache;
.super Ljava/lang/Object;
.source "ConversationCache.java"


# instance fields
.field private mConversationCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Lcom/sonyericsson/conversations/conversation/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 22
    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationCache;->mConversationCache:Landroid/util/LruCache;

    .line 18
    return-void
.end method


# virtual methods
.method clearAll()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationCache;->mConversationCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 91
    return-void
.end method

.method get(J)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 7
    .param p1, "threadId"    # J

    .prologue
    const/4 v6, 0x0

    .line 62
    const-wide/16 v4, -0x1

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    .line 63
    return-object v6

    .line 66
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationCache;->mConversationCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 67
    .local v2, "conversationIdSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conversationId$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 68
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-nez v3, :cond_1

    .line 69
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->get(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    return-object v3

    .line 72
    .end local v0    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    :cond_2
    return-object v6
.end method

.method get(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 1
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationCache;->mConversationCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/Conversation;

    return-object v0
.end method

.method get(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 5
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    const/4 v4, 0x0

    .line 42
    sget-object v3, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    if-ne p1, v3, :cond_0

    .line 43
    return-object v4

    .line 46
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationCache;->mConversationCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 47
    .local v2, "conversationIdSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conversationId$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 48
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->get(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    return-object v3

    .line 52
    .end local v0    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    :cond_2
    return-object v4
.end method

.method put(Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 3
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "ConversationCache does not support cache for null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 85
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationCache;->mConversationCache:Landroid/util/LruCache;

    invoke-virtual {v1, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method remove(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 1
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationCache;->mConversationCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/Conversation;

    return-object v0
.end method

.method remove(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "conversationIds":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationCache;->mConversationCache:Landroid/util/LruCache;

    monitor-enter v3

    .line 112
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conversationId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 113
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->remove(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 111
    .end local v0    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    .end local v1    # "conversationId$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "conversationId$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 110
    return-void
.end method
