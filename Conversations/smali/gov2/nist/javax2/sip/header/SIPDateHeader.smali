.class public Lgov2/nist/javax2/sip/header/SIPDateHeader;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "SIPDateHeader.java"

# interfaces
.implements Ljavax2/sip/header/Header;


# static fields
.field private static final serialVersionUID:J = 0x1811114988a6e228L


# instance fields
.field protected date:Lgov2/nist/javax2/sip/header/SIPDate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Date"

    .line 59
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/SIPDateHeader;

    .line 103
    .local v0, "retval":Lgov2/nist/javax2/sip/header/SIPDateHeader;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDateHeader;->date:Lgov2/nist/javax2/sip/header/SIPDate;

    if-nez v1, :cond_0

    .line 104
    :goto_0
    return-object v0

    .line 103
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/SIPDateHeader;->date:Lgov2/nist/javax2/sip/header/SIPDate;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/SIPDate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/SIPDate;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/SIPDateHeader;->date:Lgov2/nist/javax2/sip/header/SIPDate;

    goto :goto_0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPDateHeader;->date:Lgov2/nist/javax2/sip/header/SIPDate;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/SIPDate;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDate(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "dat"    # Ljava/util/Calendar;

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Lgov2/nist/javax2/sip/header/SIPDate;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lgov2/nist/javax2/sip/header/SIPDate;-><init>(J)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/SIPDateHeader;->date:Lgov2/nist/javax2/sip/header/SIPDate;

    goto :goto_0
.end method
