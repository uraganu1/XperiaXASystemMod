.class Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker$1;
.super Ljava/util/TimerTask;
.source "HttpFileTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker;->scheduleTimer(Ljava/util/Timer;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker;

.field final synthetic val$ftSessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker;

    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker$1;->val$ftSessionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker$1;->val$ftSessionId:Ljava/lang/String;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateFileTransferStatus(Ljava/lang/String;I)V

    .line 72
    sget-object v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker;->mTimers:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker$1;->val$ftSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method
