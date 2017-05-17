.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "IsComposingParser.java"


# instance fields
.field private accumulator:Ljava/lang/StringBuffer;

.field private isComposingInfo:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;

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

    .line 59
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->accumulator:Ljava/lang/StringBuffer;

    .line 46
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->isComposingInfo:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 60
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 61
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 62
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1, p1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 63
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 74
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    const-string/jumbo v0, "state"

    .line 86
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "lastactive"

    .line 90
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "contenttype"

    .line 94
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "refresh"

    .line 98
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "isComposing"

    .line 102
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->isComposingInfo:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->isComposingInfo:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->isComposingInfo:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->isComposingInfo:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->setLastActiveDate(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->isComposingInfo:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->isComposingInfo:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->isComposingInfo:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->isComposingInfo:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->setRefreshTime(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Watcher document is complete"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    .line 129
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    throw p1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

.method public getIsComposingInfo()Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->isComposingInfo:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;

    return-object v0
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->accumulator:Ljava/lang/StringBuffer;

    .line 70
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 77
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string/jumbo v0, "isComposing"

    .line 79
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;

    invoke-direct {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->isComposingInfo:Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;

    goto :goto_0
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
