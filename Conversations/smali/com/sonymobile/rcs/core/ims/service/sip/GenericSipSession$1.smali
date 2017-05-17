.class Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession$1;
.super Ljava/lang/Thread;
.source "GenericSipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->sendMsrpMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

.field final synthetic val$contact:Ljava/lang/String;

.field final synthetic val$msgId:Ljava/lang/String;

.field final synthetic val$recordRoute:Ljava/lang/String;

.field final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession$1;->val$contact:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession$1;->val$msgId:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession$1;->val$status:Ljava/lang/String;

    iput-object p5, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession$1;->val$recordRoute:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 562
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession$1;->val$contact:Ljava/lang/String;

    const-string/jumbo v2, "sip:anonymous@anonymous.invalid"

    const-string/jumbo v3, "sip:anonymous@anonymous.invalid"

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession$1;->val$msgId:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession$1;->val$status:Ljava/lang/String;

    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession$1;->val$recordRoute:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;->sendMsrpMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void
.end method
