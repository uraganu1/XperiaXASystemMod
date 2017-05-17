.class Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$1;
.super Ljava/lang/Thread;
.source "ImdnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->sendMessageDeliveryStatusImmediately(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

.field final synthetic val$delivery:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;

.field final synthetic val$remoteInstanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$1;->val$delivery:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;

    iput-object p3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$1;->val$remoteInstanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$1;->val$delivery:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$1;->val$remoteInstanceId:Ljava/lang/String;

    # invokes: Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->sendSipMessageDeliveryStatus(Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;->access$000(Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;Ljava/lang/String;)V

    .line 151
    return-void
.end method
