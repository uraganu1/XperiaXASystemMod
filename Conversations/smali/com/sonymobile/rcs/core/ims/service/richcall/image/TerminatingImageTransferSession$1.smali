.class Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession$1;
.super Ljava/lang/Thread;
.source "TerminatingImageTransferSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->msrpMgr:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->openMsrpSession(I)V

    .line 274
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->sendEmptyDataChunk()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->access$100(Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;->access$100(Lcom/sonymobile/rcs/core/ims/service/richcall/image/TerminatingImageTransferSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    const-string/jumbo v2, "Can\'t create the MSRP server session"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
