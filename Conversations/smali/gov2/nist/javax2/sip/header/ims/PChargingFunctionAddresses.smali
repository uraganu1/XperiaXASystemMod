.class public Lgov2/nist/javax2/sip/header/ims/PChargingFunctionAddresses;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "PChargingFunctionAddresses.java"

# interfaces
.implements Ljavax2/sip/header/ExtensionHeader;
.implements Ljavax2/sip/header/Parameters;
.implements Ljavax2/sip/header/Header;
.implements Lgov2/nist/javax2/sip/header/SIPHeaderNames;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "P-Charging-Function-Addresses"

    .line 87
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 88
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 99
    .local v0, "encoding":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/PChargingFunctionAddresses;->duplicates:Lgov2/nist/core/DuplicateNameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/DuplicateNameValueList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 100
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/PChargingFunctionAddresses;->duplicates:Lgov2/nist/core/DuplicateNameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/DuplicateNameValueList;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
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
    .line 320
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
