.class Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;
.super Ljava/util/TimerTask;
.source "IsComposingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpirationTimer"
.end annotation


# instance fields
.field private contact:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "contact"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 181
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;->contact:Ljava/lang/String;

    .line 182
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    const/4 v0, 0x0

    .line 191
    .local v0, "j":I
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 195
    return-void

    .line 186
    .end local v0    # "j":I
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Is-composing timer has expired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;->contact:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is now considered idle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    .restart local v0    # "j":I
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->session:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;->access$100(Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingManager$ExpirationTimer;->contact:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;->handleIsComposingEvent(Ljava/lang/String;Z)V

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
