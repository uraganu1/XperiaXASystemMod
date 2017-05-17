.class public Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XcapPhotoIconResponseParser.java"


# instance fields
.field private accumulator:Ljava/lang/StringBuffer;

.field private data:[B

.field private desc:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mime:Ljava/lang/String;


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

    .line 58
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 39
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->data:[B

    .line 41
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->mime:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->encoding:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->desc:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 59
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 60
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 61
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1, p1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 62
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 73
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "End document"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURL"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "data"

    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mime-type"

    .line 82
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "encoding"

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "description"

    .line 86
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 89
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->data:[B

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->mime:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->desc:Ljava/lang/String;

    goto :goto_0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->data:[B

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->mime:Ljava/lang/String;

    return-object v0
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->accumulator:Ljava/lang/StringBuffer;

    .line 69
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    .line 76
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->accumulator:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 77
    return-void
.end method
