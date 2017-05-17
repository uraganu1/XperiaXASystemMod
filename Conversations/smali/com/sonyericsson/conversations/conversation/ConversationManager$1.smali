.class Lcom/sonyericsson/conversations/conversation/ConversationManager$1;
.super Ljava/lang/Object;
.source "ConversationManager.java"

# interfaces
.implements Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/conversation/ConversationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsRcsConfigured:Z

.field final synthetic this$0:Lcom/sonyericsson/conversations/conversation/ConversationManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/conversation/ConversationManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager$1;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager$1;->mIsRcsConfigured:Z

    .line 73
    return-void
.end method


# virtual methods
.method public onImApiConnectionStatusChange(Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V
    .locals 4
    .param p1, "imEnvironmentApi"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    .param p2, "imApisConnectionsStatus"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .prologue
    .line 79
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v0

    .line 80
    .local v0, "isRcsConfigured":Z
    invoke-static {}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string/jumbo v1, "New IsRcsConfigured: "

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Z)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    .line 82
    const-string/jumbo v2, ", old IsRcsConfigured: "

    .line 81
    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    .line 82
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager$1;->mIsRcsConfigured:Z

    .line 81
    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Z)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 84
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager$1;->mIsRcsConfigured:Z

    if-ne v0, v1, :cond_1

    .line 85
    return-void

    .line 87
    :cond_1
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager$1;->mIsRcsConfigured:Z

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager$1;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    invoke-static {v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->-get1(Lcom/sonyericsson/conversations/conversation/ConversationManager;)Lcom/sonyericsson/conversations/conversation/ConversationCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationCache;->clearAll()V

    .line 89
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager$1;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    invoke-static {v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->-get2(Lcom/sonyericsson/conversations/conversation/ConversationManager;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager$1;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager$1;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationManager$1;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    invoke-static {v3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->-get2(Lcom/sonyericsson/conversations/conversation/ConversationManager;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->-set0(Lcom/sonyericsson/conversations/conversation/ConversationManager;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 94
    :cond_2
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->reloadAllConversationItems()V

    .line 78
    return-void
.end method
