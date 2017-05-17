.class public Lcom/sonymobile/jms/util/RcsStackBugUtil;
.super Ljava/lang/Object;
.source "RcsStackBugUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertInstantMessageNotNull(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V
    .locals 2
    .param p0, "iMsg"    # Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 26
    if-eqz p0, :cond_0

    .line 35
    return-void

    :cond_0
    const-string/jumbo v0, "Instant message must never be null here. This is the bug in stack and not in im-fwk!"

    .line 32
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcom/sonymobile/jms/conversation/RcsSessionException;

    invoke-direct {v1, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static assertMsgIdNotNull(Ljava/lang/String;)V
    .locals 2
    .param p0, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 14
    if-eqz p0, :cond_0

    .line 23
    return-void

    :cond_0
    const-string/jumbo v0, "msgId must never be null here. This is the bug in stack and not in im-fwk!"

    .line 20
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 21
    new-instance v1, Lcom/sonymobile/jms/conversation/RcsSessionException;

    invoke-direct {v1, v0}, Lcom/sonymobile/jms/conversation/RcsSessionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
