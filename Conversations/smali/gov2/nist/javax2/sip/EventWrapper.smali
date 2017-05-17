.class Lgov2/nist/javax2/sip/EventWrapper;
.super Ljava/lang/Object;
.source "EventWrapper.java"


# instance fields
.field protected sipEvent:Ljava/util/EventObject;

.field protected transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;


# direct methods
.method constructor <init>(Ljava/util/EventObject;Lgov2/nist/javax2/sip/stack/SIPTransaction;)V
    .locals 0
    .param p1, "sipEvent"    # Ljava/util/EventObject;
    .param p2, "transaction"    # Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lgov2/nist/javax2/sip/EventWrapper;->sipEvent:Ljava/util/EventObject;

    .line 44
    iput-object p2, p0, Lgov2/nist/javax2/sip/EventWrapper;->transaction:Lgov2/nist/javax2/sip/stack/SIPTransaction;

    .line 45
    return-void
.end method
