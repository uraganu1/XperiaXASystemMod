.class public abstract Lgov2/nist/core/ParserCore;
.super Ljava/lang/Object;
.source "ParserCore.java"


# static fields
.field public static final debug:Z

.field static nesting_level:I


# instance fields
.field protected lexer:Lgov2/nist/core/LexerCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lgov2/nist/core/Debug;->parserDebug:Z

    sput-boolean v0, Lgov2/nist/core/ParserCore;->debug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected dbg_enter(Ljava/lang/String;)V
    .locals 5
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 96
    .local v0, "i":I
    :goto_0
    sget v2, Lgov2/nist/core/ParserCore;->nesting_level:I

    if-lt v0, v2, :cond_0

    .line 99
    sget-boolean v2, Lgov2/nist/core/ParserCore;->debug:Z

    if-nez v2, :cond_1

    .line 102
    :goto_1
    sget v2, Lgov2/nist/core/ParserCore;->nesting_level:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lgov2/nist/core/ParserCore;->nesting_level:I

    .line 103
    return-void

    :cond_0
    const-string/jumbo v2, ">"

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\nlexer buffer = \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov2/nist/core/ParserCore;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected dbg_leave(Ljava/lang/String;)V
    .locals 5
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 107
    .local v0, "i":I
    :goto_0
    sget v2, Lgov2/nist/core/ParserCore;->nesting_level:I

    if-lt v0, v2, :cond_0

    .line 110
    sget-boolean v2, Lgov2/nist/core/ParserCore;->debug:Z

    if-nez v2, :cond_1

    .line 113
    :goto_1
    sget v2, Lgov2/nist/core/ParserCore;->nesting_level:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lgov2/nist/core/ParserCore;->nesting_level:I

    .line 114
    return-void

    :cond_0
    const-string/jumbo v2, "<"

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\nlexer buffer = \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov2/nist/core/ParserCore;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov2/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected nameValue()Lgov2/nist/core/NameValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 117
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lgov2/nist/core/ParserCore;->nameValue(C)Lgov2/nist/core/NameValue;

    move-result-object v0

    return-object v0
.end method

.method protected nameValue(C)Lgov2/nist/core/NameValue;
    .locals 12
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 45
    sget-boolean v8, Lgov2/nist/core/ParserCore;->debug:Z

    if-nez v8, :cond_0

    .line 48
    :goto_0
    :try_start_0
    iget-object v8, p0, Lgov2/nist/core/ParserCore;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 49
    iget-object v8, p0, Lgov2/nist/core/ParserCore;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v3

    .line 51
    .local v3, "name":Lgov2/nist/core/Token;
    iget-object v8, p0, Lgov2/nist/core/ParserCore;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov2/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    const/4 v5, 0x0

    .line 56
    .local v5, "quoted":Z
    :try_start_1
    iget-object v8, p0, Lgov2/nist/core/ParserCore;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v8

    int-to-char v2, v8

    .line 58
    .local v2, "la":C
    if-eq v2, p1, :cond_1

    .line 82
    new-instance v8, Lgov2/nist/core/NameValue;

    iget-object v9, v3, Lgov2/nist/core/Token;->tokenValue:Ljava/lang/String;

    const-string/jumbo v10, ""

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    sget-boolean v9, Lgov2/nist/core/ParserCore;->debug:Z

    if-nez v9, :cond_6

    :goto_1
    return-object v8

    .end local v2    # "la":C
    .end local v3    # "name":Lgov2/nist/core/Token;
    .end local v5    # "quoted":Z
    :cond_0
    const-string/jumbo v8, "nameValue"

    .line 45
    invoke-virtual {p0, v8}, Lgov2/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .restart local v2    # "la":C
    .restart local v3    # "name":Lgov2/nist/core/Token;
    .restart local v5    # "quoted":Z
    :cond_1
    :try_start_2
    iget-object v8, p0, Lgov2/nist/core/ParserCore;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lgov2/nist/core/LexerCore;->consume(I)V

    .line 60
    iget-object v8, p0, Lgov2/nist/core/ParserCore;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov2/nist/core/LexerCore;->SPorHT()V

    const/4 v6, 0x0

    .line 62
    .local v6, "str":Ljava/lang/String;
    const/4 v1, 0x0

    .line 63
    .local v1, "isFlag":Z
    iget-object v8, p0, Lgov2/nist/core/ParserCore;->lexer:Lgov2/nist/core/LexerCore;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lgov2/nist/core/LexerCore;->lookAhead(I)C

    move-result v8

    const/16 v9, 0x22

    if-eq v8, v9, :cond_2

    .line 67
    iget-object v8, p0, Lgov2/nist/core/ParserCore;->lexer:Lgov2/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov2/nist/core/LexerCore;->match(I)Lgov2/nist/core/Token;

    .line 68
    iget-object v8, p0, Lgov2/nist/core/ParserCore;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov2/nist/core/LexerCore;->getNextToken()Lgov2/nist/core/Token;

    move-result-object v7

    .line 69
    .local v7, "value":Lgov2/nist/core/Token;
    iget-object v6, v7, Lgov2/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 72
    .local v6, "str":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 77
    .end local v7    # "value":Lgov2/nist/core/Token;
    :goto_2
    new-instance v4, Lgov2/nist/core/NameValue;

    iget-object v8, v3, Lgov2/nist/core/Token;->tokenValue:Ljava/lang/String;

    invoke-direct {v4, v8, v6, v1}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .local v4, "nv":Lgov2/nist/core/NameValue;
    if-nez v5, :cond_4

    .line 89
    :goto_3
    sget-boolean v8, Lgov2/nist/core/ParserCore;->debug:Z

    if-nez v8, :cond_5

    :goto_4
    return-object v4

    .line 64
    .end local v4    # "nv":Lgov2/nist/core/NameValue;
    .local v6, "str":Ljava/lang/String;
    :cond_2
    :try_start_3
    iget-object v8, p0, Lgov2/nist/core/ParserCore;->lexer:Lgov2/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov2/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "str":Ljava/lang/String;
    const/4 v5, 0x1

    goto :goto_2

    .restart local v7    # "value":Lgov2/nist/core/Token;
    :cond_3
    const-string/jumbo v6, ""

    .line 74
    const/4 v1, 0x1

    goto :goto_2

    .line 78
    .end local v7    # "value":Lgov2/nist/core/Token;
    .restart local v4    # "nv":Lgov2/nist/core/NameValue;
    :cond_4
    invoke-virtual {v4}, Lgov2/nist/core/NameValue;->setQuotedValue()V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 89
    .end local v1    # "isFlag":Z
    .end local v2    # "la":C
    .end local v4    # "nv":Lgov2/nist/core/NameValue;
    .end local v6    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "ex":Ljava/text/ParseException;
    :try_start_4
    new-instance v8, Lgov2/nist/core/NameValue;

    iget-object v9, v3, Lgov2/nist/core/Token;->tokenValue:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89
    sget-boolean v9, Lgov2/nist/core/ParserCore;->debug:Z

    if-nez v9, :cond_7

    :goto_5
    return-object v8

    .end local v0    # "ex":Ljava/text/ParseException;
    .restart local v1    # "isFlag":Z
    .restart local v2    # "la":C
    .restart local v4    # "nv":Lgov2/nist/core/NameValue;
    .restart local v6    # "str":Ljava/lang/String;
    :cond_5
    const-string/jumbo v8, "nameValue"

    invoke-virtual {p0, v8}, Lgov2/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    goto :goto_4

    .end local v1    # "isFlag":Z
    .end local v4    # "nv":Lgov2/nist/core/NameValue;
    .end local v6    # "str":Ljava/lang/String;
    :cond_6
    const-string/jumbo v9, "nameValue"

    invoke-virtual {p0, v9}, Lgov2/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    .end local v2    # "la":C
    .restart local v0    # "ex":Ljava/text/ParseException;
    :cond_7
    const-string/jumbo v9, "nameValue"

    invoke-virtual {p0, v9}, Lgov2/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    goto :goto_5

    .end local v0    # "ex":Ljava/text/ParseException;
    .end local v3    # "name":Lgov2/nist/core/Token;
    .end local v5    # "quoted":Z
    :catchall_0
    move-exception v8

    sget-boolean v9, Lgov2/nist/core/ParserCore;->debug:Z

    if-nez v9, :cond_8

    :goto_6
    throw v8

    :cond_8
    const-string/jumbo v9, "nameValue"

    invoke-virtual {p0, v9}, Lgov2/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    goto :goto_6
.end method
