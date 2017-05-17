.class public Ljavax2/sip/TransactionTerminatedEvent;
.super Ljava/util/EventObject;
.source "TransactionTerminatedEvent.java"


# instance fields
.field private mClientTransaction:Ljavax2/sip/ClientTransaction;

.field private mIsServerTransaction:Z

.field private mServerTransaction:Ljavax2/sip/ServerTransaction;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax2/sip/ClientTransaction;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "clientTransaction"    # Ljavax2/sip/ClientTransaction;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 22
    iput-object p2, p0, Ljavax2/sip/TransactionTerminatedEvent;->mClientTransaction:Ljavax2/sip/ClientTransaction;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax2/sip/TransactionTerminatedEvent;->mIsServerTransaction:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavax2/sip/ServerTransaction;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "serverTransaction"    # Ljavax2/sip/ServerTransaction;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 15
    iput-object p2, p0, Ljavax2/sip/TransactionTerminatedEvent;->mServerTransaction:Ljavax2/sip/ServerTransaction;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax2/sip/TransactionTerminatedEvent;->mIsServerTransaction:Z

    .line 18
    return-void
.end method


# virtual methods
.method public getClientTransaction()Ljavax2/sip/ClientTransaction;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Ljavax2/sip/TransactionTerminatedEvent;->mClientTransaction:Ljavax2/sip/ClientTransaction;

    return-object v0
.end method

.method public getServerTransaction()Ljavax2/sip/ServerTransaction;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Ljavax2/sip/TransactionTerminatedEvent;->mServerTransaction:Ljavax2/sip/ServerTransaction;

    return-object v0
.end method

.method public isServerTransaction()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Ljavax2/sip/TransactionTerminatedEvent;->mIsServerTransaction:Z

    return v0
.end method
