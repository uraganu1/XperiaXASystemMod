.class public Lgov2/nist/javax2/sip/parser/CSeqParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "CSeqParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    new-instance v0, Lgov2/nist/javax2/sip/header/CSeq;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/CSeq;-><init>()V

    .line 58
    .local v0, "c":Lgov2/nist/javax2/sip/header/CSeq;
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/CSeqParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v6, 0x82e

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 59
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/CSeqParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 60
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/CSeqParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 61
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/CSeqParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 62
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/CSeqParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "number":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lgov2/nist/javax2/sip/header/CSeq;->setSeqNumber(J)V

    .line 64
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/CSeqParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 65
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/CSeqParser;->method()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "m":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lgov2/nist/javax2/sip/header/CSeq;->setMethod(Ljava/lang/String;)V

    .line 68
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/CSeqParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 69
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/CSeqParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    return-object v0

    .end local v0    # "c":Lgov2/nist/javax2/sip/header/CSeq;
    .end local v3    # "m":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "ex":Ljava/lang/NumberFormatException;
    invoke-static {v1}, Lgov2/nist/core/Debug;->printStackTrace(Ljava/lang/Exception;)V

    const-string/jumbo v5, "Number format exception"

    .line 73
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/CSeqParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5

    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 75
    .local v2, "ex":Ljavax2/sip/InvalidArgumentException;
    invoke-static {v2}, Lgov2/nist/core/Debug;->printStackTrace(Ljava/lang/Exception;)V

    .line 76
    invoke-virtual {v2}, Ljavax2/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/CSeqParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5
.end method
