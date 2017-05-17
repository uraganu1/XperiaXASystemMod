.class Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;
.super Landroid/database/ContentObserver;
.source "MessageListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XmsContentObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;)V
    .locals 1
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;->this$1:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 116
    return-void
.end method

.method private handleNewThreadId(J)V
    .locals 7
    .param p1, "threadId"    # J

    .prologue
    .line 138
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    .line 139
    .local v1, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;->this$1:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-static {v2}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->-get0(Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->removeConversationFromCache(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 140
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;->this$1:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(J)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->-set0(Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;Lcom/sonyericsson/conversations/conversation/Conversation;)Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 143
    sget-object v2, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    .line 144
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;->this$1:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-static {v3}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->-get0(Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    .line 143
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 145
    .local v0, "baseUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;->this$1:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->setUri(Landroid/net/Uri;)V

    .line 146
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;->this$1:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->forceLoad()V

    .line 149
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;->this$1:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 135
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    .line 122
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;->this$1:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-static {v3}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->-get0(Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    .line 123
    .local v2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    :cond_0
    return-void

    .line 126
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "contactNumber":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    .line 128
    .local v1, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getThreadIdFromOne2OneParticipantAddress(Ljava/lang/String;)J

    move-result-wide v4

    .line 130
    .local v4, "threadId":J
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 131
    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$XmsContentObserver;->handleNewThreadId(J)V

    .line 121
    :cond_2
    return-void
.end method
