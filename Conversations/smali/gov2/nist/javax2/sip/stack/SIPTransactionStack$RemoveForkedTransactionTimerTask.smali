.class Lgov2/nist/javax2/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;
.super Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;
.source "SIPTransactionStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoveForkedTransactionTimerTask"
.end annotation


# instance fields
.field private clientTransaction:Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

.field final synthetic this$0:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;


# direct methods
.method public constructor <init>(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;Lgov2/nist/javax2/sip/stack/SIPClientTransaction;)V
    .locals 0
    .param p2, "sipClientTransaction"    # Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .prologue
    .line 417
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;-><init>()V

    .line 418
    iput-object p2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;->clientTransaction:Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    .line 419
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->access$000(Lgov2/nist/javax2/sip/stack/SIPTransactionStack;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;->clientTransaction:Lgov2/nist/javax2/sip/stack/SIPClientTransaction;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPClientTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    return-void
.end method
