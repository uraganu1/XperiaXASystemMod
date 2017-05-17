.class public Lgov2/nist/javax2/sip/header/ims/SecurityServer;
.super Lgov2/nist/javax2/sip/header/ims/SecurityAgree;
.source "SecurityServer.java"

# interfaces
.implements Ljavax2/sip/header/ExtensionHeader;
.implements Lgov2/nist/javax2/sip/header/ims/SecurityAgreeHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Security-Server"

    .line 51
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ims/SecurityAgree;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
