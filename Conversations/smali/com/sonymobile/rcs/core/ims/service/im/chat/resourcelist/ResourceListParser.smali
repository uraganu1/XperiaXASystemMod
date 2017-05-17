.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ResourceListParser.java"


# instance fields
.field private accumulator:Ljava/lang/StringBuffer;

.field private list:Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;

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
    .line 62
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v2, 0x0

    .line 49
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;->list:Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 63
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 64
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 65
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1, p1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 66
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 81
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    const-string/jumbo v0, "resource-lists"

    .line 95
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Resource-list document complete"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getResourceList()Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;->list:Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;

    return-object v0
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;->accumulator:Ljava/lang/StringBuffer;

    .line 77
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start document"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "namespaceURL"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .param p4, "attr"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string/jumbo v1, "resource-lists"

    .line 86
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "entry"

    .line 88
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;

    invoke-direct {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;->list:Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "uri"

    .line 89
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;->list:Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;->addEntry(Ljava/lang/String;)V

    goto :goto_0
.end method
