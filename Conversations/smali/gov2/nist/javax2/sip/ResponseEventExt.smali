.class public Lgov2/nist/javax2/sip/ResponseEventExt;
.super Ljavax2/sip/ResponseEvent;
.source "ResponseEventExt.java"


# instance fields
.field private m_originalTransaction:Lgov2/nist/javax2/sip/ClientTransactionExt;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lgov2/nist/javax2/sip/ClientTransactionExt;Ljavax2/sip/Dialog;Ljavax2/sip/message/Response;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "clientTransaction"    # Lgov2/nist/javax2/sip/ClientTransactionExt;
    .param p3, "dialog"    # Ljavax2/sip/Dialog;
    .param p4, "response"    # Ljavax2/sip/message/Response;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax2/sip/ResponseEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ClientTransaction;Ljavax2/sip/Dialog;Ljavax2/sip/message/Response;)V

    .line 20
    iput-object p2, p0, Lgov2/nist/javax2/sip/ResponseEventExt;->m_originalTransaction:Lgov2/nist/javax2/sip/ClientTransactionExt;

    .line 21
    return-void
.end method


# virtual methods
.method public setOriginalTransaction(Lgov2/nist/javax2/sip/ClientTransactionExt;)V
    .locals 0
    .param p1, "originalTransaction"    # Lgov2/nist/javax2/sip/ClientTransactionExt;

    .prologue
    .line 39
    iput-object p1, p0, Lgov2/nist/javax2/sip/ResponseEventExt;->m_originalTransaction:Lgov2/nist/javax2/sip/ClientTransactionExt;

    .line 40
    return-void
.end method
