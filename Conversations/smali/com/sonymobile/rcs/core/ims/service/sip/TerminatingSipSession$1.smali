.class Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession$1;
.super Ljava/lang/Thread;
.source "TerminatingSipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->getMsrpMgr()Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpManager;->openMsrpSession()V

    .line 183
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->sendEmptyDataChunk()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;->access$000(Lcom/sonymobile/rcs/core/ims/service/sip/TerminatingSipSession;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    const-string/jumbo v2, "Can\'t create the MSRP server session"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
