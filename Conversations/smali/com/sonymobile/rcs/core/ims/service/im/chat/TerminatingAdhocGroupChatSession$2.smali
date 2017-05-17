.class Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession$2;
.super Ljava/lang/Thread;
.source "TerminatingAdhocGroupChatSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->inviteMissingParticipants(Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;

.field final synthetic val$invitedParticipants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;

    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession$2;->val$invitedParticipants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 330
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 333
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatConnectedParticipants(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 337
    .local v0, "connectedProvider":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession$2;->val$invitedParticipants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 340
    .local v2, "invitedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 341
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    .end local v0    # "connectedProvider":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "invitedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 331
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v3

    const-string/jumbo v4, "Check if participants are missing in the conference"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v3

    const-string/jumbo v4, "Session initiation has failed"

    invoke-virtual {v3, v4, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 342
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "connectedProvider":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "invitedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_3

    .line 345
    :goto_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->addParticipants(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 343
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession$2;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " missing participants in the conference"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
