.class public Lcom/sonymobile/jms/conversation/RcsFileTransferSetupListener;
.super Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener$Stub;
.source "RcsFileTransferSetupListener.java"


# instance fields
.field private mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;


# direct methods
.method constructor <init>(Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;)V
    .locals 0
    .param p1, "rcsSessionEventHandler"    # Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener$Stub;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferSetupListener;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    .line 20
    return-void
.end method


# virtual methods
.method public handleFileTransferSessionResumed(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V
    .locals 1
    .param p1, "session"    # Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferSetupListener;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsFileTransferResumed(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V

    .line 32
    return-void
.end method

.method public handleFileTransferSessionSetup(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V
    .locals 1
    .param p1, "session"    # Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsFileTransferSetupListener;->mRcsSessionEventHandler:Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/conversation/RcsSessionEventHandler;->onRcsFileTransferStarted(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V

    .line 26
    return-void
.end method
