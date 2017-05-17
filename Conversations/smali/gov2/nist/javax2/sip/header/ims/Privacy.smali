.class public Lgov2/nist/javax2/sip/header/ims/Privacy;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "Privacy.java"

# interfaces
.implements Lgov2/nist/javax2/sip/header/ims/PrivacyHeader;
.implements Ljavax2/sip/header/ExtensionHeader;
.implements Lgov2/nist/javax2/sip/header/SIPHeaderNames;


# instance fields
.field private privacy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Privacy"

    .line 57
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/ims/Privacy;

    .line 123
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ims/Privacy;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 124
    :goto_0
    return-object v0

    .line 123
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    goto :goto_0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 113
    instance-of v1, p1, Lgov2/nist/javax2/sip/header/ims/PrivacyHeader;

    if-nez v1, :cond_0

    .line 117
    return v2

    :cond_0
    move-object v0, p1

    .line 114
    check-cast v0, Lgov2/nist/javax2/sip/header/ims/PrivacyHeader;

    .line 115
    .local v0, "o":Lgov2/nist/javax2/sip/header/ims/PrivacyHeader;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ims/Privacy;->getPrivacy()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lgov2/nist/javax2/sip/header/ims/PrivacyHeader;->getPrivacy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getPrivacy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public setPrivacy(Ljava/lang/String;)V
    .locals 2
    .param p1, "privacy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 97
    if-nez p1, :cond_1

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "JAIN-SIP Exception,  Privacy, setPrivacy(), privacy value is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, ""

    .line 97
    if-eq p1, v0, :cond_0

    .line 100
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
