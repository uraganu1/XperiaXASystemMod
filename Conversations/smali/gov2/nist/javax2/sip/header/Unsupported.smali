.class public Lgov2/nist/javax2/sip/header/Unsupported;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "Unsupported.java"

# interfaces
.implements Ljavax2/sip/header/Header;


# static fields
.field private static final serialVersionUID:J = -0x2268a6084c766aa7L


# instance fields
.field protected optionTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Unsupported"

    .line 56
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Unsupported;->optionTag:Ljava/lang/String;

    return-object v0
.end method

.method public setOptionTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 96
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/Unsupported;->optionTag:Ljava/lang/String;

    .line 97
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "JAIN-SIP Exception,  Unsupported, setOptionTag(), The option tag parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
