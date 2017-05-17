.class public Ljavax2/sip/TransactionUnavailableException;
.super Ljavax2/sip/SipException;
.source "TransactionUnavailableException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljavax2/sip/SipException;-><init>()V

    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    return-void
.end method
