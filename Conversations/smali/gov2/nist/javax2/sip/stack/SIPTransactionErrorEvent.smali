.class public Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;
.super Ljava/util/EventObject;
.source "SIPTransactionErrorEvent.java"


# static fields
.field private static final serialVersionUID:J = -0x25a72e8a48effc87L


# instance fields
.field private errorID:I


# direct methods
.method constructor <init>(Lgov2/nist/javax2/sip/stack/SIPTransaction;I)V
    .locals 0
    .param p1, "sourceTransaction"    # Lgov2/nist/javax2/sip/stack/SIPTransaction;
    .param p2, "transactionErrorID"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 73
    iput p2, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;->errorID:I

    .line 75
    return-void
.end method


# virtual methods
.method public getErrorID()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPTransactionErrorEvent;->errorID:I

    return v0
.end method
