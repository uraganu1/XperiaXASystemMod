.class public Ljavax2/sip/TransportNotSupportedException;
.super Ljavax2/sip/SipException;
.source "TransportNotSupportedException.java"


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