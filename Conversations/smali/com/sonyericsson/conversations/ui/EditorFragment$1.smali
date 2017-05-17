.class Lcom/sonyericsson/conversations/ui/EditorFragment$1;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsRcsConfigured:Z

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;->mIsRcsConfigured:Z

    .line 264
    return-void
.end method


# virtual methods
.method public onImApiConnectionStatusChange(Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V
    .locals 6
    .param p1, "imEnvironmentApi"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    .param p2, "imApisConnectionsStatus"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .prologue
    .line 270
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v1

    .line 271
    .local v1, "isRcsConfigured":Z
    invoke-static {}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    const-string/jumbo v4, "New IsRcsConfigured: "

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Z)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    .line 273
    const-string/jumbo v5, ", old IsRcsConfigured: "

    .line 272
    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    .line 273
    iget-boolean v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;->mIsRcsConfigured:Z

    .line 272
    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Z)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 275
    :cond_0
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;->mIsRcsConfigured:Z

    if-ne v1, v4, :cond_1

    .line 276
    return-void

    .line 278
    :cond_1
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;->mIsRcsConfigured:Z

    .line 279
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get3(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v4

    if-nez v4, :cond_2

    .line 280
    return-void

    .line 284
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get3(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    .line 285
    .local v2, "oldConversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v0

    .line 286
    .local v0, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->removeConversationFromCache(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 287
    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    .line 289
    .local v3, "updatedConversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get0()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 290
    const-string/jumbo v4, "Old conversation id: "

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get3(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    .line 291
    const-string/jumbo v5, ", updated conversation id: "

    .line 290
    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    .line 291
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v5

    .line 290
    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 294
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get4(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/sonyericsson/conversations/ui/EditorFragment$1$1;

    invoke-direct {v5, p0, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment$1$1;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment$1;Lcom/sonyericsson/conversations/conversation/Conversation;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method
