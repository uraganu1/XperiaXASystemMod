.class public Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RlmiParser.java"


# instance fields
.field private accumulator:Ljava/lang/StringBuffer;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private resourceInfo:Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;

.field private resourceInstance:Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;


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

    .line 62
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 47
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->resourceInstance:Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;

    .line 49
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->resourceInfo:Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 81
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "End document"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespaceURL"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "resource"

    .line 105
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "list"

    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->resourceInfo:Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;

    if-nez v0, :cond_2

    .line 109
    :goto_1
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->resourceInstance:Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->resourceInfo:Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->resourceInstance:Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;->addResource(Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;)V

    goto :goto_1

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "RLMI document is complete"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getResourceInfo()Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->resourceInfo:Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;

    return-object v0
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->accumulator:Ljava/lang/StringBuffer;

    .line 77
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start document"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "namespaceURL"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .param p4, "attr"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v4, 0x0

    .line 84
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string/jumbo v3, "list"

    .line 86
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "resource"

    .line 89
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "instance"

    .line 92
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 102
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "uri"

    .line 87
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "uri":Ljava/lang/String;
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;

    invoke-direct {v3, v2}, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->resourceInfo:Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiDocument;

    goto :goto_0

    .end local v2    # "uri":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "uri"

    .line 90
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 91
    .restart local v2    # "uri":Ljava/lang/String;
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;

    invoke-direct {v3, v2}, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->resourceInstance:Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;

    goto :goto_0

    .end local v2    # "uri":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "state"

    .line 93
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "state":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->resourceInstance:Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;

    if-nez v3, :cond_5

    :cond_4
    :goto_1
    const-string/jumbo v3, "reason"

    .line 97
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "reason":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->resourceInstance:Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 99
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->resourceInstance:Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v0    # "reason":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_4

    .line 95
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/RlmiParser;->resourceInstance:Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/presence/rlmi/ResourceInstance;->setState(Ljava/lang/String;)V

    goto :goto_1
.end method
