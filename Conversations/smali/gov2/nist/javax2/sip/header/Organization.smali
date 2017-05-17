.class public Lgov2/nist/javax2/sip/header/Organization;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "Organization.java"

# interfaces
.implements Ljavax2/sip/header/Header;


# static fields
.field private static final serialVersionUID:J = -0x2682caa11d164bc8L


# instance fields
.field protected organization:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Organization"

    .line 69
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Organization;->organization:Ljava/lang/String;

    return-object v0
.end method

.method public setOrganization(Ljava/lang/String;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 90
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/Organization;->organization:Ljava/lang/String;

    .line 91
    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "JAIN-SIP Exception, Organization, setOrganization(), the organization parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
