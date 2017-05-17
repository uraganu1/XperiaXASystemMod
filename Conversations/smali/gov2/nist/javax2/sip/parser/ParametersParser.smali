.class public abstract Lgov2/nist/javax2/sip/parser/ParametersParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "ParametersParser.java"


# virtual methods
.method protected parse(Lgov2/nist/javax2/sip/header/ParametersHeader;)V
    .locals 3
    .param p1, "parametersHeader"    # Lgov2/nist/javax2/sip/header/ParametersHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ParametersParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 52
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ParametersParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_0

    .line 61
    return-void

    .line 53
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ParametersParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 55
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ParametersParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 56
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/ParametersParser;->nameValue()Lgov2/nist/core/NameValue;

    move-result-object v0

    .line 57
    .local v0, "nv":Lgov2/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;->setParameter(Lgov2/nist/core/NameValue;)V

    .line 59
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ParametersParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov2/nist/core/LexerCore;->SPorHT()V

    goto :goto_0
.end method

.method protected parseNameValueList(Lgov2/nist/javax2/sip/header/ParametersHeader;)V
    .locals 3
    .param p1, "parametersHeader"    # Lgov2/nist/javax2/sip/header/ParametersHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/header/ParametersHeader;->removeParameters()V

    .line 66
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ParametersParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 67
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/ParametersParser;->nameValue()Lgov2/nist/core/NameValue;

    move-result-object v0

    .line 68
    .local v0, "nv":Lgov2/nist/core/NameValue;
    invoke-virtual {v0}, Lgov2/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lgov2/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lgov2/nist/javax2/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ParametersParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 71
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ParametersParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    .line 74
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/ParametersParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method
