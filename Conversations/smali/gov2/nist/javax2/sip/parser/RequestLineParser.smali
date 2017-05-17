.class public Lgov2/nist/javax2/sip/parser/RequestLineParser;
.super Lgov2/nist/javax2/sip/parser/Parser;
.source "RequestLineParser.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "requestLine"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Lgov2/nist/javax2/sip/parser/Parser;-><init>()V

    .line 42
    new-instance v0, Lgov2/nist/javax2/sip/parser/Lexer;

    const-string/jumbo v1, "method_keywordLexer"

    invoke-direct {v0, v1, p1}, Lgov2/nist/javax2/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/parser/RequestLineParser;->lexer:Lgov2/nist/core/LexerCore;

    .line 43
    return-void
.end method


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/RequestLine;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 51
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/RequestLineParser;->debug:Z

    if-nez v5, :cond_0

    .line 53
    :goto_0
    :try_start_0
    new-instance v1, Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/RequestLine;-><init>()V

    .line 54
    .local v1, "retval":Lgov2/nist/javax2/sip/header/RequestLine;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/RequestLineParser;->method()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "m":Ljava/lang/String;
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/RequestLineParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 56
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    .line 57
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/RequestLineParser;->lexer:Lgov2/nist/core/LexerCore;

    const-string/jumbo v6, "sip_urlLexer"

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 58
    new-instance v3, Lgov2/nist/javax2/sip/parser/URLParser;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/RequestLineParser;->getLexer()Lgov2/nist/javax2/sip/parser/Lexer;

    move-result-object v5

    invoke-direct {v3, v5}, Lgov2/nist/javax2/sip/parser/URLParser;-><init>(Lgov2/nist/javax2/sip/parser/Lexer;)V

    .line 59
    .local v3, "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lgov2/nist/javax2/sip/parser/URLParser;->uriReference(Z)Lgov2/nist/javax2/sip/address/GenericURI;

    move-result-object v2

    .line 60
    .local v2, "url":Lgov2/nist/javax2/sip/address/GenericURI;
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/RequestLineParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 61
    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/header/RequestLine;->setUri(Ljavax2/sip/address/URI;)V

    .line 62
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/RequestLineParser;->lexer:Lgov2/nist/core/LexerCore;

    const-string/jumbo v6, "request_lineLexer"

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/RequestLineParser;->sipVersion()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "v":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lgov2/nist/javax2/sip/header/RequestLine;->setSipVersion(Ljava/lang/String;)V

    .line 65
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/RequestLineParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 66
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/RequestLineParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    sget-boolean v5, Lgov2/nist/javax2/sip/parser/RequestLineParser;->debug:Z

    if-nez v5, :cond_1

    :goto_1
    return-object v1

    .end local v0    # "m":Ljava/lang/String;
    .end local v1    # "retval":Lgov2/nist/javax2/sip/header/RequestLine;
    .end local v2    # "url":Lgov2/nist/javax2/sip/address/GenericURI;
    .end local v3    # "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    .end local v4    # "v":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "parse"

    .line 51
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/RequestLineParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "m":Ljava/lang/String;
    .restart local v1    # "retval":Lgov2/nist/javax2/sip/header/RequestLine;
    .restart local v2    # "url":Lgov2/nist/javax2/sip/address/GenericURI;
    .restart local v3    # "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    .restart local v4    # "v":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "parse"

    .line 69
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/RequestLineParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "m":Ljava/lang/String;
    .end local v1    # "retval":Lgov2/nist/javax2/sip/header/RequestLine;
    .end local v2    # "url":Lgov2/nist/javax2/sip/address/GenericURI;
    .end local v3    # "urlParser":Lgov2/nist/javax2/sip/parser/URLParser;
    .end local v4    # "v":Ljava/lang/String;
    :catchall_0
    move-exception v5

    sget-boolean v6, Lgov2/nist/javax2/sip/parser/RequestLineParser;->debug:Z

    if-nez v6, :cond_2

    :goto_2
    throw v5

    :cond_2
    const-string/jumbo v6, "parse"

    invoke-virtual {p0, v6}, Lgov2/nist/javax2/sip/parser/RequestLineParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
