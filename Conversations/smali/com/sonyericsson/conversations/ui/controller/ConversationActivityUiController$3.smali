.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;


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
    .line 492
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private haveParticipantsChanged(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 571
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getParticipants()Ljava/util/List;

    move-result-object v2

    .line 572
    .local v2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 573
    return v5

    .line 575
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "participant$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/Participant;

    .line 576
    .local v0, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 577
    return v5

    .line 580
    .end local v0    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_2
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method public onParticipantsChanged(Ljava/util/List;Z)V
    .locals 12
    .param p2, "changeFocus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x1

    .line 506
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    monitor-enter v10

    .line 507
    :try_start_0
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get16(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get16(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get13(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    if-eqz v9, :cond_1

    :cond_0
    monitor-exit v10

    .line 509
    return-void

    .line 508
    :cond_1
    if-eqz p1, :cond_0

    monitor-exit v10

    .line 512
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->haveParticipantsChanged(Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz p2, :cond_3

    .line 525
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v7, "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "address$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 527
    .local v0, "address":Ljava/lang/String;
    new-instance v5, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v5, v0}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 528
    .local v5, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 506
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "address$iterator":Ljava/util/Iterator;
    .end local v5    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    .end local v7    # "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 513
    :cond_3
    return-void

    .line 531
    .restart local v1    # "address$iterator":Ljava/util/Iterator;
    .restart local v7    # "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_4
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 533
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/conversation/Conversation;->hasParticipants()Z

    move-result v4

    .line 535
    .local v4, "oldConversationHasParticipants":Z
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v3, 0x0

    .line 537
    .local v3, "newConversationHasParticipants":Z
    :goto_1
    if-nez v4, :cond_5

    if-eqz v3, :cond_6

    .line 538
    :cond_5
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/sonyericsson/conversations/ui/Composer;->setParticipants(Ljava/util/List;)V

    .line 541
    :cond_6
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap0(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 543
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get4(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/EditorFragment;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 544
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/Composer;->updateCapabilities()V

    .line 545
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->UNKNOWN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v9, v10}, Lcom/sonyericsson/conversations/ui/Composer;->forceSendingTechAndRefresh(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)V

    .line 546
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get4(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/EditorFragment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isAdded()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get3(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 547
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get4(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/EditorFragment;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setMenu(Z)V

    .line 551
    :cond_7
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 552
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get4(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/EditorFragment;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateComposerViews(Z)V

    .line 556
    :cond_8
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v9

    invoke-interface {v9}, Lcom/sonyericsson/conversations/Apis;->getImPermissionApi()Lcom/sonymobile/jms/permission/ImPermissionApi;

    move-result-object v2

    .line 557
    .local v2, "imPermissionApi":Lcom/sonymobile/jms/permission/ImPermissionApi;
    if-eqz v2, :cond_b

    .line 558
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "participant$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/conversations/model/Participant;

    .line 559
    .restart local v5    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 560
    .local v8, "phonenumber":Ljava/lang/String;
    invoke-static {v8}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->isValidUriOrNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 561
    invoke-static {v8}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v9

    invoke-interface {v2, v9}, Lcom/sonymobile/jms/permission/ImPermissionApi;->tryToRequestUpdatedImPermissions(Lcom/sonymobile/jms/contact/ImContactNumber;)V

    goto :goto_2

    .line 535
    .end local v2    # "imPermissionApi":Lcom/sonymobile/jms/permission/ImPermissionApi;
    .end local v3    # "newConversationHasParticipants":Z
    .end local v5    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    .end local v6    # "participant$iterator":Ljava/util/Iterator;
    .end local v8    # "phonenumber":Ljava/lang/String;
    :cond_a
    const/4 v3, 0x1

    .restart local v3    # "newConversationHasParticipants":Z
    goto/16 :goto_1

    .line 503
    .end local v3    # "newConversationHasParticipants":Z
    .end local v4    # "oldConversationHasParticipants":Z
    :cond_b
    return-void
.end method
