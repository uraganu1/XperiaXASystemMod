.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask$LoadRecipientsForConversationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecipientsLoadedForConversation(Ljava/util/Collection;Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 6
    .param p2, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;",
            "Lcom/sonyericsson/conversations/conversation/Conversation;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "recipients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    const/4 v5, 0x0

    .line 315
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-set4(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;)Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;

    .line 321
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get1(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    move-result-object v4

    if-nez v4, :cond_1

    .line 323
    :cond_0
    return-void

    .line 322
    :cond_1
    if-eqz p1, :cond_0

    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 328
    .local v1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "recipient$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 329
    .local v2, "recipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    new-instance v4, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v2}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    .end local v2    # "recipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    :cond_2
    invoke-virtual {p2, v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->setParticipants(Ljava/util/List;)V

    .line 335
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getComposer()Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 336
    .local v0, "current":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 337
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get1(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->updateActionBar()V

    .line 338
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v4, v5, :cond_3

    invoke-virtual {p2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 340
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap26(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V

    .line 314
    :cond_3
    return-void
.end method
