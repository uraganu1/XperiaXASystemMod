.class public Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException;
.super Ljava/text/ParseException;
.source "SIPDuplicateHeaderException.java"


# static fields
.field private static final serialVersionUID:J = 0x725e4b654221d27bL


# instance fields
.field protected sipHeader:Lgov2/nist/javax2/sip/header/SIPHeader;

.field protected sipMessage:Lgov2/nist/javax2/sip/message/SIPMessage;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 56
    return-void
.end method
