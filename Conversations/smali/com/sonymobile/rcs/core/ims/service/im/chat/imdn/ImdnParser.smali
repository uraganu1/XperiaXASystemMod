.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ImdnParser.java"


# instance fields
.field private accumulator:Ljava/lang/StringBuffer;

.field private imdn:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lorg/xml/sax/InputSource;)V
    .locals 3
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 42
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->accumulator:Ljava/lang/StringBuffer;

    .line 44
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->imdn:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 58
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 59
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 60
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1, p1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 61
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 72
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "End document"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespaceURL"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "message-id"

    .line 83
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "delivered"

    .line 87
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "failed"

    .line 91
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "error"

    .line 95
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "displayed"

    .line 99
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "forbidden"

    .line 103
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "imdn"

    .line 107
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->imdn:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->imdn:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->setMsgId(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->imdn:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->imdn:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    const-string/jumbo v1, "delivered"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->imdn:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->imdn:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    const-string/jumbo v1, "failed"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->imdn:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->imdn:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->imdn:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->imdn:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    const-string/jumbo v1, "displayed"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->imdn:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->imdn:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    const-string/jumbo v1, "forbidden"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "IMDN document is complete"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :goto_0
    throw p1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fatal: line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getImdnDocument()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->imdn:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    return-object v0
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->accumulator:Ljava/lang/StringBuffer;

    .line 68
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start document"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "namespaceURL"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .param p4, "attr"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string/jumbo v0, "imdn"

    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    invoke-direct {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->imdn:Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;

    goto :goto_0
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Warning: line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
