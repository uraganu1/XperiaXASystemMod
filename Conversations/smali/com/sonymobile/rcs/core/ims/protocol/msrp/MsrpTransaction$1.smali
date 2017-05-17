.class Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction$1;
.super Ljava/util/TimerTask;
.source "MsrpTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction$1;->this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction$1;->this$0:Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;

    # invokes: Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->timerExpire()V
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;->access$000(Lcom/sonymobile/rcs/core/ims/protocol/msrp/MsrpTransaction;)V

    .line 163
    return-void
.end method
