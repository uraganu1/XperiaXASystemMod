.class Lcom/sonyericsson/conversations/ui/EditorFragment$5;
.super Lcom/sonymobile/forklift/HeavyProperty;
.source "EditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->setLeaveChatVisibilityAsync(Landroid/view/MenuItem;)V
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
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

.field final synthetic val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Ljava/lang/Object;Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p2, "$anonymous0"    # Ljava/lang/Object;
    .param p3, "val$conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    .line 808
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$5;->val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-direct {p0, p2}, Lcom/sonymobile/forklift/HeavyProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onBackground()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 811
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImPermissionApi()Lcom/sonymobile/jms/permission/ImPermissionApi;

    move-result-object v0

    .line 812
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$5;->val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v1

    .line 811
    invoke-interface {v0, v1}, Lcom/sonymobile/jms/permission/ImPermissionApi;->isAllowedToLeaveGroupConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$5;->onBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
