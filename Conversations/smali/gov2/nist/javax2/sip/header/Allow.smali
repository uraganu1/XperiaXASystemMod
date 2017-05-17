.class public final Lgov2/nist/javax2/sip/header/Allow;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "Allow.java"

# interfaces
.implements Ljavax2/sip/header/AllowHeader;


# static fields
.field private static final serialVersionUID:J = -0x2b177555b26229aaL


# instance fields
.field protected method:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Allow"

    .line 55
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Allow;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Allow;->method:Ljava/lang/String;

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 86
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/Allow;->method:Ljava/lang/String;

    .line 87
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "JAIN-SIP Exception, Allow, setMethod(), the method parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
