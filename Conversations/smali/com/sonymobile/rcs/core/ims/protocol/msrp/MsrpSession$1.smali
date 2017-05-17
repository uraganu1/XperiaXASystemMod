.class Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$1;
.super Ljava/lang/Object;
.source "MsrpSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->sendChunks(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;JLcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$TypeMsrpChunk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

.field final synthetic val$totalChunks:I

.field final synthetic val$totalSize:J


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;IJ)V
    .locals 1

    .prologue
    .line 439
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    iput p2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$1;->val$totalChunks:I

    iput-wide p3, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$1;->val$totalSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 444
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->access$000(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    move-result-object v1

    if-nez v1, :cond_2

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpEventListener:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->access$200(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->access$000(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->getNumberReceivedOk()I

    move-result v2

    mul-int/lit16 v2, v2, 0x2800

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$1;->val$totalSize:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpEventListener;->msrpTransferProgress(JJ)V

    const-wide/16 v2, 0x1f4

    .line 452
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :cond_2
    :goto_1
    iget v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$1;->val$totalChunks:I

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->msrpTransaction:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->access$000(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->getNumberReceivedOk()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;

    # getter for: Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->cancelTransfer:Z
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;->access$100(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpSession;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
