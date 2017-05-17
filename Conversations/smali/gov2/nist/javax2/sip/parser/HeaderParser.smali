.class public Lgov2/nist/javax2/sip/parser/HeaderParser;
.super Lgov2/nist/javax2/sip/parser/Parser;
.source "HeaderParser.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-direct {p0}, Lgov2/nist/javax2/sip/parser/Parser;-><init>()V

    .line 157
    new-instance v0, Lgov2/nist/javax2/sip/parser/Lexer;

    const-string/jumbo v1, "command_keywordLexer"

    invoke-direct {v0, v1, p1}, Lgov2/nist/javax2/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    .line 158
    return-void
.end method


# virtual methods
.method protected date()Ljava/util/Calendar;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string/jumbo v7, "GMT"

    .line 84
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 85
    .local v3, "retval":Ljava/util/Calendar;
    iget-object v7, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "s1":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, "day":I
    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v7, "Bad day "

    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v7

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0    # "day":I
    .end local v3    # "retval":Ljava/util/Calendar;
    .end local v4    # "s1":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v7, "bad date field"

    .line 123
    invoke-virtual {p0, v7}, Lgov2/nist/javax2/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v7

    throw v7

    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "day":I
    .restart local v3    # "retval":Ljava/util/Calendar;
    .restart local v4    # "s1":Ljava/lang/String;
    :cond_1
    const/16 v7, 0x1f

    .line 87
    if-gt v0, v7, :cond_0

    const/4 v7, 0x5

    .line 88
    :try_start_1
    invoke-virtual {v3, v7, v0}, Ljava/util/Calendar;->set(II)V

    .line 89
    iget-object v7, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 90
    iget-object v7, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov2/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .local v2, "month":Ljava/lang/String;
    const-string/jumbo v7, "jan"

    .line 91
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "feb"

    .line 93
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "mar"

    .line 95
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "apr"

    .line 97
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "may"

    .line 99
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "jun"

    .line 101
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string/jumbo v7, "jul"

    .line 103
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string/jumbo v7, "aug"

    .line 105
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string/jumbo v7, "sep"

    .line 107
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string/jumbo v7, "oct"

    .line 109
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string/jumbo v7, "nov"

    .line 111
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string/jumbo v7, "dec"

    .line 113
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 116
    :goto_0
    iget-object v7, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 117
    iget-object v7, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "s2":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .local v6, "yr":I
    const/4 v7, 0x1

    .line 119
    invoke-virtual {v3, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 120
    return-object v3

    .end local v5    # "s2":Ljava/lang/String;
    .end local v6    # "yr":I
    :cond_2
    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 92
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_3
    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 94
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_4
    const/4 v7, 0x2

    const/4 v8, 0x2

    .line 96
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_5
    const/4 v7, 0x2

    const/4 v8, 0x3

    .line 98
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_6
    const/4 v7, 0x2

    const/4 v8, 0x4

    .line 100
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_7
    const/4 v7, 0x2

    const/4 v8, 0x5

    .line 102
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_8
    const/4 v7, 0x2

    const/4 v8, 0x6

    .line 104
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_9
    const/4 v7, 0x2

    const/4 v8, 0x7

    .line 106
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_a
    const/4 v7, 0x2

    const/16 v8, 0x8

    .line 108
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_b
    const/4 v7, 0x2

    const/16 v8, 0x9

    .line 110
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_c
    const/4 v7, 0x2

    const/16 v8, 0xa

    .line 112
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_d
    const/4 v7, 0x2

    const/16 v8, 0xb

    .line 114
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected headerName(I)V
    .locals 2
    .param p1, "tok"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v0, p1}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 187
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 188
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 189
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov2/nist/core/LexerCore;->SPorHT()V

    .line 190
    return-void
.end method

.method public parse()Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->getNextToken(C)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 173
    iget-object v3, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov2/nist/core/LexerCore;->getLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "body":Ljava/lang/String;
    new-instance v2, Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;

    invoke-direct {v2, v1}, Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;-><init>(Ljava/lang/String;)V

    .line 177
    .local v2, "retval":Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;
    invoke-virtual {v2, v0}, Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;->setValue(Ljava/lang/String;)V

    .line 178
    return-object v2
.end method

.method protected time(Ljava/util/Calendar;)V
    .locals 7
    .param p1, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "hour":I
    const/16 v5, 0xb

    .line 135
    invoke-virtual {p1, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 136
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 137
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "min":I
    const/16 v5, 0xc

    .line 139
    invoke-virtual {p1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 140
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 141
    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov2/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "sec":I
    const/16 v5, 0xd

    .line 143
    invoke-virtual {p1, v5, v4}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    return-void

    .line 147
    .end local v1    # "hour":I
    .end local v2    # "min":I
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "sec":I
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v5, "error processing time "

    .line 145
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5
.end method

.method protected wkday()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "wkday"

    .line 50
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/HeaderParser;->dbg_enter(Ljava/lang/String;)V

    .line 52
    :try_start_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/parser/HeaderParser;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov2/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "tok":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v2, "Mon"

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Tue"

    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "Wed"

    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "Thu"

    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "Fri"

    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "Sat"

    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "Sun"

    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "bad wkday"

    .line 70
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "tok":Ljava/lang/String;
    :catchall_0
    move-exception v2

    const-string/jumbo v3, "wkday"

    .line 72
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    throw v2

    .restart local v0    # "id":Ljava/lang/String;
    .restart local v1    # "tok":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "wkday"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    const/4 v2, 0x2

    return v2

    :cond_1
    const-string/jumbo v2, "wkday"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    const/4 v2, 0x3

    return v2

    :cond_2
    const-string/jumbo v2, "wkday"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    const/4 v2, 0x4

    return v2

    :cond_3
    const-string/jumbo v2, "wkday"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    const/4 v2, 0x5

    return v2

    :cond_4
    const-string/jumbo v2, "wkday"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    const/4 v2, 0x6

    return v2

    :cond_5
    const-string/jumbo v2, "wkday"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    const/4 v2, 0x7

    return v2

    :cond_6
    const-string/jumbo v2, "wkday"

    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method
