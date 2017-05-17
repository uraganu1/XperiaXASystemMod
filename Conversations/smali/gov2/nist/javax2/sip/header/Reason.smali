.class public Lgov2/nist/javax2/sip/header/Reason;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "Reason.java"

# interfaces
.implements Ljavax2/sip/header/ReasonHeader;


# static fields
.field private static final serialVersionUID:J = -0x7b8f262d9617f9acL


# instance fields
.field public final CAUSE:Ljava/lang/String;

.field public final TEXT:Ljava/lang/String;

.field protected protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Reason"

    .line 127
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "text"

    .line 58
    iput-object v0, p0, Lgov2/nist/javax2/sip/header/Reason;->TEXT:Ljava/lang/String;

    const-string/jumbo v0, "cause"

    .line 60
    iput-object v0, p0, Lgov2/nist/javax2/sip/header/Reason;->CAUSE:Ljava/lang/String;

    .line 128
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 147
    .local v0, "s":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Reason;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Reason;->parameters:Lgov2/nist/core/NameValueList;

    if-nez v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 148
    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Reason;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ";"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/Reason;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov2/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getCause()I
    .locals 1

    .prologue
    const-string/jumbo v0, "cause"

    .line 70
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/Reason;->getParameterAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "Reason"

    .line 137
    return-object v0
.end method

.method public setCause(I)V
    .locals 3
    .param p1, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Reason;->parameters:Lgov2/nist/core/NameValueList;

    const-string/jumbo v1, "cause"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgov2/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/Reason;->protocol:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 111
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Reason;->parameters:Lgov2/nist/core/NameValueList;

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1, p1}, Lgov2/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    return-void

    .line 109
    :cond_0
    invoke-static {p1}, Lgov2/nist/javax2/sip/Utils;->getQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
