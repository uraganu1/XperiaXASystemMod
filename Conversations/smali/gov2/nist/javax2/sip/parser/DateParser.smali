.class public Lgov2/nist/javax2/sip/parser/DateParser;
.super Lgov2/nist/javax2/sip/parser/HeaderParser;
.source "DateParser.java"


# virtual methods
.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 62
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/DateParser;->debug:Z

    if-nez v3, :cond_0

    :goto_0
    const/16 v3, 0x820

    .line 64
    :try_start_0
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/DateParser;->headerName(I)V

    .line 65
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/DateParser;->wkday()I

    .line 66
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/DateParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 67
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/DateParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 68
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/parser/DateParser;->date()Ljava/util/Calendar;

    move-result-object v0

    .line 69
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/DateParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 70
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/parser/DateParser;->time(Ljava/util/Calendar;)V

    .line 71
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/DateParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 72
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/DateParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .local v2, "tzone":Ljava/lang/String;
    const-string/jumbo v3, "gmt"

    .line 73
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/DateParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 75
    new-instance v1, Lgov2/nist/javax2/sip/header/SIPDateHeader;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/SIPDateHeader;-><init>()V

    .line 76
    .local v1, "retval":Lgov2/nist/javax2/sip/header/SIPDateHeader;
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/SIPDateHeader;->setDate(Ljava/util/Calendar;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    sget-boolean v3, Lgov2/nist/javax2/sip/parser/DateParser;->debug:Z

    if-nez v3, :cond_2

    :goto_1
    return-object v1

    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "retval":Lgov2/nist/javax2/sip/header/SIPDateHeader;
    .end local v2    # "tzone":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "DateParser.parse"

    .line 62
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/DateParser;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    .restart local v0    # "cal":Ljava/util/Calendar;
    .restart local v2    # "tzone":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad Time Zone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/DateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v2    # "tzone":Ljava/lang/String;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov2/nist/javax2/sip/parser/DateParser;->debug:Z

    if-nez v4, :cond_3

    :goto_2
    throw v3

    .restart local v0    # "cal":Ljava/util/Calendar;
    .restart local v1    # "retval":Lgov2/nist/javax2/sip/header/SIPDateHeader;
    .restart local v2    # "tzone":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "DateParser.parse"

    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/DateParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "retval":Lgov2/nist/javax2/sip/header/SIPDateHeader;
    .end local v2    # "tzone":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "DateParser.parse"

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/parser/DateParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_2
.end method
