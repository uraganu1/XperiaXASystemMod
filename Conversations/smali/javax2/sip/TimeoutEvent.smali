.class public Ljavax2/sip/TimeoutEvent;
.super Ljavax2/sip/TransactionTerminatedEvent;
.source "TimeoutEvent.java"


# instance fields
.field private mTimeout:Ljavax2/sip/Timeout;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax2/sip/ClientTransaction;Ljavax2/sip/Timeout;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "clientTransaction"    # Ljavax2/sip/ClientTransaction;
    .param p3, "timeout"    # Ljavax2/sip/Timeout;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljavax2/sip/TransactionTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ClientTransaction;)V

    .line 14
    iput-object p3, p0, Ljavax2/sip/TimeoutEvent;->mTimeout:Ljavax2/sip/Timeout;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavax2/sip/ServerTransaction;Ljavax2/sip/Timeout;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "serverTransaction"    # Ljavax2/sip/ServerTransaction;
    .param p3, "timeout"    # Ljavax2/sip/Timeout;

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljavax2/sip/TransactionTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax2/sip/ServerTransaction;)V

    .line 9
    iput-object p3, p0, Ljavax2/sip/TimeoutEvent;->mTimeout:Ljavax2/sip/Timeout;

    .line 10
    return-void
.end method


# virtual methods
.method public getTimeout()Ljavax2/sip/Timeout;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Ljavax2/sip/TimeoutEvent;->mTimeout:Ljavax2/sip/Timeout;

    return-object v0
.end method
