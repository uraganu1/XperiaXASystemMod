.class public abstract Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;
.super Ljava/lang/Object;
.source "HoldManager.java"


# static fields
.field protected static state:I


# instance fields
.field protected logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V
    .locals 2
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 54
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    :goto_0
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->session:Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;

    .line 58
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "HoldManager()"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getState()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->state:I

    return v0
.end method

.method public static setState(I)V
    .locals 0
    .param p0, "val"    # I

    .prologue
    .line 73
    sput p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/HoldManager;->state:I

    .line 74
    return-void
.end method


# virtual methods
.method public abstract holdMediaSession()V
.end method

.method public abstract resumeMediaSession()V
.end method

.method public abstract setCallHold(Z)V
.end method

.method public abstract setCallHold(ZLcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
.end method
