.class Lcom/sonyericsson/conversations/ui/EditorFragment$8;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask$LeaveConversationTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->leaveImGroupConversation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

.field final synthetic val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p2, "val$conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$8;->val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedConversationLeave(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1155
    const-string/jumbo v0, "Leave imGroupConversation \'"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    .line 1156
    const-string/jumbo v1, "\' failed!"

    .line 1155
    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 1154
    return-void
.end method

.method public onSuccessfulConversationLeave(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .locals 2
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .prologue
    .line 1141
    invoke-static {}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    const-string/jumbo v0, "Left imGroupConversation \'"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    .line 1143
    const-string/jumbo v1, "\' successfully!"

    .line 1142
    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$8;->val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->groupChatTerminatedByUserAsHeavyProperty()Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v0

    .line 1146
    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v1

    .line 1145
    invoke-virtual {v0, v1}, Lcom/sonymobile/forklift/HeavyProperty;->loadWith(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/forklift/PropertyLoader;->forceRefresh()Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/forklift/PropertyLoader;->start()V

    .line 1147
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get2(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get2(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;->onLeaveImGroupConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V

    .line 1140
    :cond_1
    return-void
.end method
