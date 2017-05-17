.class Lcom/sonyericsson/conversations/conversation/Conversation$1;
.super Lcom/sonymobile/forklift/HeavyProperty;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/conversation/Conversation;->groupChatTerminatedByUserAsHeavyProperty()Lcom/sonymobile/forklift/HeavyProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/forklift/HeavyProperty",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/conversation/Conversation;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/conversation/Conversation;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "$anonymous0"    # Ljava/lang/Object;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/Conversation$1;->this$0:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-direct {p0, p2}, Lcom/sonymobile/forklift/HeavyProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onBackground()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/Conversation$1;->this$0:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-static {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->-get0(Lcom/sonyericsson/conversations/conversation/Conversation;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v1

    .line 89
    .local v1, "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->isLeftByLocalUser(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/ImConversationStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Lcom/sonymobile/jms/conversation/ImConversationStorageException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Terminal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonymobile/jms/conversation/ImConversationStorageException;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 93
    const-string/jumbo v3, " occurred during execution in background thread!"

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 95
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic onBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/conversation/Conversation$1;->onBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
