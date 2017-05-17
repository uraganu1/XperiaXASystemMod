.class public Lgov2/nist/javax2/sip/parser/StringMsgParser;
.super Ljava/lang/Object;
.source "StringMsgParser.java"


# static fields
.field private static computeContentLengthFromMessage:Z


# instance fields
.field private parseExceptionListener:Lgov2/nist/javax2/sip/parser/ParseExceptionListener;

.field private rawStringMessage:Ljava/lang/String;

.field protected readBody:Z

.field private strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->readBody:Z

    .line 88
    return-void
.end method

.method public constructor <init>(Lgov2/nist/javax2/sip/parser/ParseExceptionListener;)V
    .locals 0
    .param p1, "exhandler"    # Lgov2/nist/javax2/sip/parser/ParseExceptionListener;

    .prologue
    .line 97
    invoke-direct {p0}, Lgov2/nist/javax2/sip/parser/StringMsgParser;-><init>()V

    .line 98
    iput-object p1, p0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->parseExceptionListener:Lgov2/nist/javax2/sip/parser/ParseExceptionListener;

    .line 99
    return-void
.end method

.method private processFirstLine(Ljava/lang/String;)Lgov2/nist/javax2/sip/message/SIPMessage;
    .locals 9
    .param p1, "firstLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "SIP/2.0"

    .line 346
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    new-instance v3, Lgov2/nist/javax2/sip/message/SIPResponse;

    invoke-direct {v3}, Lgov2/nist/javax2/sip/message/SIPResponse;-><init>()V

    .line 362
    .local v3, "message":Lgov2/nist/javax2/sip/message/SIPMessage;
    :try_start_0
    new-instance v1, Lgov2/nist/javax2/sip/parser/StatusLineParser;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lgov2/nist/javax2/sip/parser/StatusLineParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/parser/StatusLineParser;->parse()Lgov2/nist/javax2/sip/header/StatusLine;

    move-result-object v8

    .line 363
    .local v8, "sl":Lgov2/nist/javax2/sip/header/StatusLine;
    move-object v0, v3

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPResponse;

    move-object v1, v0

    invoke-virtual {v1, v8}, Lgov2/nist/javax2/sip/message/SIPResponse;->setStatusLine(Lgov2/nist/javax2/sip/header/StatusLine;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 373
    .end local v8    # "sl":Lgov2/nist/javax2/sip/header/StatusLine;
    :goto_0
    return-object v3

    .line 347
    .end local v3    # "message":Lgov2/nist/javax2/sip/message/SIPMessage;
    :cond_0
    new-instance v3, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-direct {v3}, Lgov2/nist/javax2/sip/message/SIPRequest;-><init>()V

    .line 349
    .restart local v3    # "message":Lgov2/nist/javax2/sip/message/SIPMessage;
    :try_start_1
    new-instance v1, Lgov2/nist/javax2/sip/parser/RequestLineParser;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lgov2/nist/javax2/sip/parser/RequestLineParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/parser/RequestLineParser;->parse()Lgov2/nist/javax2/sip/header/RequestLine;

    move-result-object v7

    .line 350
    .local v7, "requestLine":Lgov2/nist/javax2/sip/header/RequestLine;
    move-object v0, v3

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    move-object v1, v0

    invoke-virtual {v1, v7}, Lgov2/nist/javax2/sip/message/SIPRequest;->setRequestLine(Lgov2/nist/javax2/sip/header/RequestLine;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 358
    .end local v7    # "requestLine":Lgov2/nist/javax2/sip/header/RequestLine;
    :catch_0
    move-exception v2

    .line 352
    .local v2, "ex":Ljava/text/ParseException;
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->parseExceptionListener:Lgov2/nist/javax2/sip/parser/ParseExceptionListener;

    if-nez v1, :cond_1

    .line 356
    throw v2

    .line 353
    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->parseExceptionListener:Lgov2/nist/javax2/sip/parser/ParseExceptionListener;

    const-class v4, Lgov2/nist/javax2/sip/header/RequestLine;

    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v1 .. v6}, Lgov2/nist/javax2/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    .end local v2    # "ex":Ljava/text/ParseException;
    :catch_1
    move-exception v2

    .line 365
    .restart local v2    # "ex":Ljava/text/ParseException;
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->parseExceptionListener:Lgov2/nist/javax2/sip/parser/ParseExceptionListener;

    if-nez v1, :cond_2

    .line 369
    throw v2

    .line 366
    :cond_2
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->parseExceptionListener:Lgov2/nist/javax2/sip/parser/ParseExceptionListener;

    const-class v4, Lgov2/nist/javax2/sip/header/StatusLine;

    iget-object v6, p0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v1 .. v6}, Lgov2/nist/javax2/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processHeader(Ljava/lang/String;Lgov2/nist/javax2/sip/message/SIPMessage;)V
    .locals 9
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "message"    # Lgov2/nist/javax2/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 377
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x0

    .line 381
    .local v7, "headerParser":Lgov2/nist/javax2/sip/parser/HeaderParser;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov2/nist/javax2/sip/parser/ParserFactory;->createParser(Ljava/lang/String;)Lgov2/nist/javax2/sip/parser/HeaderParser;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 389
    .local v7, "headerParser":Lgov2/nist/javax2/sip/parser/HeaderParser;
    :try_start_1
    invoke-virtual {v7}, Lgov2/nist/javax2/sip/parser/HeaderParser;->parse()Lgov2/nist/javax2/sip/header/SIPHeader;

    move-result-object v8

    .line 390
    .local v8, "sipHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    const/4 v0, 0x0

    invoke-virtual {p2, v8, v0}, Lgov2/nist/javax2/sip/message/SIPMessage;->attachHeader(Lgov2/nist/javax2/sip/header/SIPHeader;Z)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 404
    .end local v8    # "sipHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    :cond_2
    :goto_0
    return-void

    .line 386
    .local v7, "headerParser":Lgov2/nist/javax2/sip/parser/HeaderParser;
    :catch_0
    move-exception v1

    .line 383
    .local v1, "ex":Ljava/text/ParseException;
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->parseExceptionListener:Lgov2/nist/javax2/sip/parser/ParseExceptionListener;

    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    move-object v2, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lgov2/nist/javax2/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return-void

    .line 403
    .end local v1    # "ex":Ljava/text/ParseException;
    .local v7, "headerParser":Lgov2/nist/javax2/sip/parser/HeaderParser;
    :catch_1
    move-exception v1

    .line 392
    .restart local v1    # "ex":Ljava/text/ParseException;
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->parseExceptionListener:Lgov2/nist/javax2/sip/parser/ParseExceptionListener;

    if-eqz v0, :cond_2

    .line 393
    invoke-static {p1}, Lgov2/nist/javax2/sip/parser/Lexer;->getHeaderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 394
    .local v6, "headerName":Ljava/lang/String;
    invoke-static {v6}, Lgov2/nist/javax2/sip/header/NameMap;->getClassFromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 395
    .local v3, "headerClass":Ljava/lang/Class;
    if-eqz v3, :cond_3

    .line 399
    :goto_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->parseExceptionListener:Lgov2/nist/javax2/sip/parser/ParseExceptionListener;

    iget-object v5, p0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    move-object v2, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lgov2/nist/javax2/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-class v3, Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;

    .line 396
    goto :goto_1
.end method

.method private trimEndOfLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 331
    if-eqz p1, :cond_1

    .line 333
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 334
    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_2

    .line 337
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    .line 339
    if-eq v0, v1, :cond_4

    .line 341
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 331
    .end local v0    # "i":I
    :cond_1
    return-object p1

    .line 334
    .restart local v0    # "i":I
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_0

    .line 335
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 337
    :cond_3
    return-object p1

    :cond_4
    const-string/jumbo v1, ""

    .line 339
    return-object v1
.end method


# virtual methods
.method public parseAddress(Ljava/lang/String;)Lgov2/nist/javax2/sip/address/AddressImpl;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 416
    new-instance v0, Lgov2/nist/javax2/sip/parser/AddressParser;

    invoke-direct {v0, p1}, Lgov2/nist/javax2/sip/parser/AddressParser;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, "addressParser":Lgov2/nist/javax2/sip/parser/AddressParser;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/parser/AddressParser;->address(Z)Lgov2/nist/javax2/sip/address/AddressImpl;

    move-result-object v1

    return-object v1
.end method

.method public parseSIPHeader(Ljava/lang/String;)Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 13
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xa

    const/16 v10, 0x20

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 500
    .local v8, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .line 503
    .local v3, "end":I
    :goto_0
    :try_start_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-le v9, v10, :cond_0

    .line 507
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-le v9, v10, :cond_1

    .line 514
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v9, v3, 0x1

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 515
    .local v0, "buffer":Ljava/lang/StringBuffer;
    move v6, v8

    .line 516
    .local v6, "i":I
    move v7, v8

    .line 517
    .local v7, "lineStart":I
    const/4 v4, 0x0

    .line 518
    .local v4, "endOfLine":Z
    :goto_2
    if-le v6, v3, :cond_2

    .line 539
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 542
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lgov2/nist/javax2/sip/parser/ParserFactory;->createParser(Ljava/lang/String;)Lgov2/nist/javax2/sip/parser/HeaderParser;

    move-result-object v5

    .line 543
    .local v5, "hp":Lgov2/nist/javax2/sip/parser/HeaderParser;
    if-eqz v5, :cond_9

    .line 544
    invoke-virtual {v5}, Lgov2/nist/javax2/sip/parser/HeaderParser;->parse()Lgov2/nist/javax2/sip/header/SIPHeader;

    move-result-object v9

    return-object v9

    .line 504
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "endOfLine":Z
    .end local v5    # "hp":Lgov2/nist/javax2/sip/parser/HeaderParser;
    .end local v6    # "i":I
    .end local v7    # "lineStart":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 508
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 512
    :catch_0
    move-exception v2

    .line 511
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v9, Ljava/text/ParseException;

    const-string/jumbo v10, "Empty header."

    invoke-direct {v9, v10, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 519
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v4    # "endOfLine":Z
    .restart local v6    # "i":I
    .restart local v7    # "lineStart":I
    :cond_2
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-char v1, v9

    .local v1, "c":C
    const/16 v9, 0xd

    .line 520
    if-ne v1, v9, :cond_5

    .line 521
    :cond_3
    if-eqz v4, :cond_7

    .line 537
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 520
    :cond_5
    if-eq v1, v12, :cond_3

    .line 526
    if-eqz v4, :cond_4

    .line 527
    const/4 v4, 0x0

    .line 528
    if-ne v1, v10, :cond_8

    .line 529
    :cond_6
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 530
    add-int/lit8 v7, v6, 0x1

    goto :goto_3

    .line 522
    :cond_7
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    const/16 v9, 0x9

    .line 528
    if-eq v1, v9, :cond_6

    .line 532
    move v7, v6

    goto :goto_3

    .line 543
    .end local v1    # "c":C
    .restart local v5    # "hp":Lgov2/nist/javax2/sip/parser/HeaderParser;
    :cond_9
    new-instance v9, Ljava/text/ParseException;

    const-string/jumbo v10, "could not create parser"

    invoke-direct {v9, v10, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9
.end method

.method public parseSIPMessage(Ljava/lang/String;)Lgov2/nist/javax2/sip/message/SIPMessage;
    .locals 14
    .param p1, "msgString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 230
    if-nez p1, :cond_1

    :cond_0
    const/4 v11, 0x0

    return-object v11

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 232
    iput-object p1, p0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    const/4 v7, 0x0

    .line 238
    .local v7, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    const/16 v12, 0x20

    if-lt v11, v12, :cond_8

    const/4 v3, 0x0

    .local v3, "currentLine":Ljava/lang/String;
    const/4 v2, 0x0

    .line 250
    .local v2, "currentHeader":Ljava/lang/String;
    const/4 v8, 0x1

    .local v8, "isFirstLine":Z
    const/4 v10, 0x0

    .line 253
    .end local v2    # "currentHeader":Ljava/lang/String;
    .end local v3    # "currentLine":Ljava/lang/String;
    :cond_2
    move v9, v7

    .line 257
    .local v9, "lineStart":I
    :try_start_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v11

    int-to-char v1, v11

    .local v1, "c":C
    :goto_1
    const/16 v11, 0xd

    .line 258
    if-ne v1, v11, :cond_9

    .line 268
    :cond_3
    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "currentLine":Ljava/lang/String;
    invoke-direct {p0, v3}, Lgov2/nist/javax2/sip/parser/StringMsgParser;->trimEndOfLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_a

    .line 277
    if-nez v8, :cond_b

    const/4 v11, 0x0

    .line 280
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-char v6, v11

    .local v6, "firstChar":C
    const/16 v11, 0x9

    .line 281
    if-ne v6, v11, :cond_c

    .line 282
    :cond_4
    if-eqz v2, :cond_d

    .line 287
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    .end local v6    # "firstChar":C
    :cond_5
    :goto_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0xd

    if-eq v11, v12, :cond_f

    .line 300
    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 302
    const/4 v8, 0x0

    .line 303
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_2

    .line 305
    .end local v1    # "c":C
    .end local v3    # "currentLine":Ljava/lang/String;
    :goto_4
    if-eqz v10, :cond_10

    .line 309
    invoke-virtual {v10, v7}, Lgov2/nist/javax2/sip/message/SIPMessage;->setSize(I)V

    .line 312
    iget-boolean v11, p0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->readBody:Z

    if-nez v11, :cond_11

    .line 327
    :cond_7
    :goto_5
    return-object v10

    .line 239
    .end local v8    # "isFirstLine":Z
    .end local v9    # "lineStart":I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 245
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v11, 0x0

    .line 242
    return-object v11

    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v5

    .local v5, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    const/4 v11, 0x0

    .line 244
    return-object v11

    .end local v5    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v1    # "c":C
    .restart local v8    # "isFirstLine":Z
    .restart local v9    # "lineStart":I
    :cond_9
    const/16 v11, 0xa

    .line 258
    if-eq v1, v11, :cond_3

    .line 259
    add-int/lit8 v7, v7, 0x1

    :try_start_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v11

    int-to-char v1, v11

    goto :goto_1

    .line 265
    .end local v1    # "c":C
    :catch_2
    move-exception v4

    .line 260
    .restart local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_4

    .line 262
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_3
    move-exception v5

    .line 263
    .restart local v5    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    goto :goto_4

    .line 273
    .end local v5    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v1    # "c":C
    .restart local v3    # "currentLine":Ljava/lang/String;
    :cond_a
    if-eqz v2, :cond_5

    .line 274
    invoke-direct {p0, v2, v10}, Lgov2/nist/javax2/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov2/nist/javax2/sip/message/SIPMessage;)V

    goto :goto_2

    .line 278
    :cond_b
    invoke-direct {p0, v3}, Lgov2/nist/javax2/sip/parser/StringMsgParser;->processFirstLine(Ljava/lang/String;)Lgov2/nist/javax2/sip/message/SIPMessage;

    move-result-object v10

    .local v10, "message":Lgov2/nist/javax2/sip/message/SIPMessage;
    goto :goto_2

    .end local v10    # "message":Lgov2/nist/javax2/sip/message/SIPMessage;
    .restart local v6    # "firstChar":C
    :cond_c
    const/16 v11, 0x20

    .line 281
    if-eq v6, v11, :cond_4

    .line 289
    if-nez v2, :cond_e

    .line 292
    :goto_6
    move-object v2, v3

    .local v2, "currentHeader":Ljava/lang/String;
    goto :goto_2

    .line 283
    .end local v2    # "currentHeader":Ljava/lang/String;
    :cond_d
    new-instance v11, Ljava/text/ParseException;

    const-string/jumbo v12, "Bad header continuation."

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 290
    :cond_e
    invoke-direct {p0, v2, v10}, Lgov2/nist/javax2/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov2/nist/javax2/sip/message/SIPMessage;)V

    goto :goto_6

    .line 297
    .end local v6    # "firstChar":C
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v12, v7, 0x1

    if-le v11, v12, :cond_6

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_6

    .line 298
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 306
    .end local v1    # "c":C
    .end local v3    # "currentLine":Ljava/lang/String;
    :cond_10
    return-object v10

    .line 312
    :cond_11
    invoke-virtual {v10}, Lgov2/nist/javax2/sip/message/SIPMessage;->getContentLength()Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 313
    invoke-virtual {v10}, Lgov2/nist/javax2/sip/message/SIPMessage;->getContentLength()Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v11

    invoke-interface {v11}, Ljavax2/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v11

    if-nez v11, :cond_12

    .line 317
    sget-boolean v11, Lgov2/nist/javax2/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    if-nez v11, :cond_7

    invoke-virtual {v10}, Lgov2/nist/javax2/sip/message/SIPMessage;->getContentLength()Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v11

    invoke-interface {v11}, Ljavax2/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v11

    if-nez v11, :cond_7

    const-string/jumbo v11, "\r\n\r\n"

    invoke-virtual {p1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 320
    iget-boolean v11, p0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->strict:Z

    if-eqz v11, :cond_7

    .line 321
    new-instance v11, Ljava/text/ParseException;

    const-string/jumbo v12, "Extraneous characters at the end of the message "

    invoke-direct {v11, v12, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 314
    :cond_12
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "body":Ljava/lang/String;
    iget-boolean v11, p0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->strict:Z

    sget-boolean v12, Lgov2/nist/javax2/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    invoke-virtual {v10}, Lgov2/nist/javax2/sip/message/SIPMessage;->getContentLength()Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax2/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v13

    invoke-virtual {v10, v0, v11, v12, v13}, Lgov2/nist/javax2/sip/message/SIPMessage;->setMessageContent(Ljava/lang/String;ZZI)V

    goto/16 :goto_5
.end method

.method public parseSIPMessage([B)Lgov2/nist/javax2/sip/message/SIPMessage;
    .locals 16
    .param p1, "msgBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 126
    if-nez p1, :cond_1

    :cond_0
    const/4 v13, 0x0

    return-object v13

    :cond_1
    move-object/from16 v0, p1

    array-length v13, v0

    if-eqz v13, :cond_0

    const/4 v8, 0x0

    .line 132
    .local v8, "i":I
    :goto_0
    :try_start_0
    aget-byte v13, p1, v8
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v14, 0x20

    if-lt v13, v14, :cond_8

    const/4 v4, 0x0

    .local v4, "currentLine":Ljava/lang/String;
    const/4 v3, 0x0

    .line 142
    .local v3, "currentHeader":Ljava/lang/String;
    const/4 v9, 0x1

    .local v9, "isFirstLine":Z
    const/4 v12, 0x0

    .line 145
    .end local v3    # "currentHeader":Ljava/lang/String;
    .end local v4    # "currentLine":Ljava/lang/String;
    :cond_2
    move v11, v8

    .line 149
    .local v11, "lineStart":I
    :goto_1
    :try_start_1
    aget-byte v13, p1, v8
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v14, 0xd

    if-ne v13, v14, :cond_9

    .line 155
    :cond_3
    sub-int v10, v8, v11

    .line 159
    .local v10, "lineLength":I
    :try_start_2
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v13, "UTF-8"

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v11, v10, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 164
    .local v4, "currentLine":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lgov2/nist/javax2/sip/parser/StringMsgParser;->trimEndOfLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_a

    .line 173
    if-nez v9, :cond_b

    const/4 v13, 0x0

    .line 176
    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    int-to-char v7, v13

    .local v7, "firstChar":C
    const/16 v13, 0x9

    .line 177
    if-ne v7, v13, :cond_c

    .line 178
    :cond_4
    if-eqz v3, :cond_e

    .line 183
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .end local v7    # "firstChar":C
    :cond_5
    :goto_2
    aget-byte v13, p1, v8

    const/16 v14, 0xd

    if-eq v13, v14, :cond_10

    .line 195
    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 197
    const/4 v9, 0x0

    .line 198
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_2

    .line 200
    .end local v4    # "currentLine":Ljava/lang/String;
    .end local v10    # "lineLength":I
    :goto_4
    if-eqz v12, :cond_11

    .line 201
    invoke-virtual {v12, v8}, Lgov2/nist/javax2/sip/message/SIPMessage;->setSize(I)V

    .line 203
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->readBody:Z

    if-nez v13, :cond_12

    .line 214
    :cond_7
    :goto_5
    return-object v12

    .line 133
    .end local v9    # "isFirstLine":Z
    .end local v11    # "lineStart":I
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v13, 0x0

    .line 136
    return-object v13

    .line 149
    .end local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v9    # "isFirstLine":Z
    .restart local v11    # "lineStart":I
    :cond_9
    :try_start_3
    aget-byte v13, p1, v8
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v14, 0xa

    if-eq v13, v14, :cond_3

    .line 150
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 154
    :catch_1
    move-exception v6

    .line 151
    .restart local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_4

    .line 162
    .end local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v10    # "lineLength":I
    :catch_2
    move-exception v5

    .line 161
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v13, Ljava/text/ParseException;

    const-string/jumbo v14, "Bad message encoding!"

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v13

    .line 168
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "currentLine":Ljava/lang/String;
    :cond_a
    if-eqz v3, :cond_5

    if-eqz v12, :cond_5

    .line 169
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lgov2/nist/javax2/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov2/nist/javax2/sip/message/SIPMessage;)V

    goto :goto_2

    .line 174
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lgov2/nist/javax2/sip/parser/StringMsgParser;->processFirstLine(Ljava/lang/String;)Lgov2/nist/javax2/sip/message/SIPMessage;

    move-result-object v12

    .local v12, "message":Lgov2/nist/javax2/sip/message/SIPMessage;
    goto :goto_2

    .end local v12    # "message":Lgov2/nist/javax2/sip/message/SIPMessage;
    .restart local v7    # "firstChar":C
    :cond_c
    const/16 v13, 0x20

    .line 177
    if-eq v7, v13, :cond_4

    .line 185
    if-nez v3, :cond_f

    .line 188
    :cond_d
    :goto_6
    move-object v3, v4

    .local v3, "currentHeader":Ljava/lang/String;
    goto :goto_2

    .line 179
    .end local v3    # "currentHeader":Ljava/lang/String;
    :cond_e
    new-instance v13, Ljava/text/ParseException;

    const-string/jumbo v14, "Bad header continuation."

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v13

    .line 185
    :cond_f
    if-eqz v12, :cond_d

    .line 186
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lgov2/nist/javax2/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov2/nist/javax2/sip/message/SIPMessage;)V

    goto :goto_6

    .line 193
    .end local v7    # "firstChar":C
    :cond_10
    move-object/from16 v0, p1

    array-length v13, v0

    add-int/lit8 v14, v8, 0x1

    if-le v13, v14, :cond_6

    add-int/lit8 v13, v8, 0x1

    aget-byte v13, p1, v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 200
    .end local v4    # "currentLine":Ljava/lang/String;
    .end local v10    # "lineLength":I
    :cond_11
    new-instance v13, Ljava/text/ParseException;

    const-string/jumbo v14, "Bad message"

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v13

    .line 203
    :cond_12
    invoke-virtual {v12}, Lgov2/nist/javax2/sip/message/SIPMessage;->getContentLength()Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual {v12}, Lgov2/nist/javax2/sip/message/SIPMessage;->getContentLength()Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax2/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v13

    if-eqz v13, :cond_7

    .line 206
    move-object/from16 v0, p1

    array-length v13, v0

    sub-int v2, v13, v8

    .line 208
    .local v2, "bodyLength":I
    new-array v1, v2, [B

    .local v1, "body":[B
    const/4 v13, 0x0

    .line 209
    move-object/from16 v0, p1

    invoke-static {v0, v8, v1, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    sget-boolean v13, Lgov2/nist/javax2/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    invoke-virtual {v12}, Lgov2/nist/javax2/sip/message/SIPMessage;->getContentLength()Ljavax2/sip/header/ContentLengthHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax2/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v14

    invoke-virtual {v12, v1, v13, v14}, Lgov2/nist/javax2/sip/message/SIPMessage;->setMessageContent([BZI)V

    goto/16 :goto_5
.end method

.method public parseSIPUrl(Ljava/lang/String;)Lgov2/nist/javax2/sip/address/SipUri;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 473
    :try_start_0
    new-instance v1, Lgov2/nist/javax2/sip/parser/URLParser;

    invoke-direct {v1, p1}, Lgov2/nist/javax2/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/parser/URLParser;->sipURL(Z)Lgov2/nist/javax2/sip/address/SipUri;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .line 475
    .local v0, "ex":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Not a SIP URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setParseExceptionListener(Lgov2/nist/javax2/sip/parser/ParseExceptionListener;)V
    .locals 0
    .param p1, "pexhandler"    # Lgov2/nist/javax2/sip/parser/ParseExceptionListener;

    .prologue
    .line 108
    iput-object p1, p0, Lgov2/nist/javax2/sip/parser/StringMsgParser;->parseExceptionListener:Lgov2/nist/javax2/sip/parser/ParseExceptionListener;

    .line 109
    return-void
.end method
