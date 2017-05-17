.class public abstract Lgov2/nist/javax2/sip/parser/Parser;
.super Lgov2/nist/core/ParserCore;
.source "Parser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lgov2/nist/core/ParserCore;-><init>()V

    return-void
.end method

.method public static final checkToken(Ljava/lang/String;)V
    .locals 4
    .param p0, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 101
    if-nez p0, :cond_1

    .line 102
    :cond_0
    new-instance v1, Ljava/text/ParseException;

    const-string/jumbo v2, "null or empty token"

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 101
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 105
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 112
    return-void

    .line 106
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lgov2/nist/core/LexerCore;->isTokenChar(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_3
    new-instance v1, Ljava/text/ParseException;

    const-string/jumbo v2, "Invalid character(s) in string (not allowed in \'token\')"

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method


# virtual methods
.method protected createParseException(Ljava/lang/String;)Ljava/text/ParseException;
    .locals 3
    .param p1, "exceptionString"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/Parser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/Parser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->getPtr()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected getLexer()Lgov2/nist/javax2/sip/parser/Lexer;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/Parser;->lexer:Lgov2/nist/core/LexerCore;

    check-cast v0, Lgov2/nist/javax2/sip/parser/Lexer;

    return-object v0
.end method

.method protected method()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/Parser;->debug:Z

    if-nez v2, :cond_1

    .line 74
    :goto_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/Parser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov2/nist/core/LexerCore;->peekNextToken(I)[Lgov2/nist/core/Token;

    move-result-object v1

    .local v1, "tokens":[Lgov2/nist/core/Token;
    const/4 v2, 0x0

    .line 75
    aget-object v0, v1, v2

    .line 76
    .local v0, "token":Lgov2/nist/core/Token;
    invoke-virtual {v0}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x805

    if-ne v2, v3, :cond_2

    .line 82
    :cond_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/Parser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->consume()V

    .line 83
    invoke-virtual {v0}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 88
    sget-boolean v3, Lgov2/nist/core/Debug;->debug:Z

    if-nez v3, :cond_3

    :goto_1
    return-object v2

    .end local v0    # "token":Lgov2/nist/core/Token;
    .end local v1    # "tokens":[Lgov2/nist/core/Token;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "method"

    .line 73
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/Parser;->dbg_enter(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v2

    .line 88
    sget-boolean v3, Lgov2/nist/core/Debug;->debug:Z

    if-nez v3, :cond_4

    :goto_2
    throw v2

    .line 76
    .restart local v0    # "token":Lgov2/nist/core/Token;
    .restart local v1    # "tokens":[Lgov2/nist/core/Token;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x806

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x808

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x807

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x804

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x809

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x835

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x836

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x843

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x846

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lgov2/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0xfff

    if-eq v2, v3, :cond_0

    const-string/jumbo v2, "Invalid Method"

    .line 85
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    const-string/jumbo v3, "method"

    .line 88
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/Parser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "token":Lgov2/nist/core/Token;
    .end local v1    # "tokens":[Lgov2/nist/core/Token;
    :cond_4
    const-string/jumbo v3, "method"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/Parser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected sipVersion()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 53
    sget-boolean v1, Lgov2/nist/javax2/sip/parser/Parser;->debug:Z

    if-nez v1, :cond_0

    .line 55
    :goto_0
    :try_start_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/Parser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v2, 0x803

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    move-result-object v0

    .line 56
    .local v0, "tok":Lgov2/nist/core/Token;
    invoke-virtual {v0}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SIP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    :goto_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/Parser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 59
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/Parser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v2, 0xfff

    invoke-virtual {v1, v2}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    const-string/jumbo v1, "SIP/2.0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    sget-boolean v2, Lgov2/nist/javax2/sip/parser/Parser;->debug:Z

    if-nez v2, :cond_3

    :goto_3
    return-object v1

    .end local v0    # "tok":Lgov2/nist/core/Token;
    :cond_0
    const-string/jumbo v1, "sipVersion"

    .line 53
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/Parser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "tok":Lgov2/nist/core/Token;
    :cond_1
    :try_start_1
    const-string/jumbo v1, "Expecting SIP"

    .line 57
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 64
    .end local v0    # "tok":Lgov2/nist/core/Token;
    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov2/nist/javax2/sip/parser/Parser;->debug:Z

    if-nez v2, :cond_4

    :goto_4
    throw v1

    .restart local v0    # "tok":Lgov2/nist/core/Token;
    :cond_2
    :try_start_2
    const-string/jumbo v1, "Expecting SIP/2.0"

    .line 60
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_3
    const-string/jumbo v2, "sipVersion"

    .line 64
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/Parser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_3

    .end local v0    # "tok":Lgov2/nist/core/Token;
    :cond_4
    const-string/jumbo v2, "sipVersion"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/Parser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_4
.end method
