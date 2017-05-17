.class Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;
.super Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;
.source "SIPServerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetransmissionAlertTimerTask"
.end annotation


# instance fields
.field dialogId:Ljava/lang/String;

.field final synthetic this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

.field ticks:I

.field ticksLeft:I


# direct methods
.method public constructor <init>(Lgov2/nist/javax2/sip/stack/SIPServerTransaction;Ljava/lang/String;)V
    .locals 1
    .param p2, "dialogId"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;-><init>()V

    const/4 v0, 0x1

    .line 220
    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticks:I

    .line 221
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticks:I

    iput v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticksLeft:I

    .line 222
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPServerTransaction;

    .line 226
    .local v0, "serverTransaction":Lgov2/nist/javax2/sip/stack/SIPServerTransaction;
    iget v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticksLeft:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticksLeft:I

    .line 227
    iget v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticksLeft:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 232
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPServerTransaction;->fireRetransmissionTimer()V

    .line 229
    iget v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticks:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgov2/nist/javax2/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticksLeft:I

    goto :goto_0
.end method
