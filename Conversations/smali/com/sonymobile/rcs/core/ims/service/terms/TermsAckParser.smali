.class public Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TermsAckParser.java"


# instance fields
.field private accumulator:Ljava/lang/StringBuffer;

.field private id:Ljava/lang/String;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private status:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private text:Ljava/lang/String;


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

    .line 63
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->id:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->status:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->subject:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->text:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 64
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 65
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 66
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1, p1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 67
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 94
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    const-string/jumbo v0, "EndUserConfirmationAck"

    .line 106
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Subject"

    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "Text"

    .line 112
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Terms request document is complete"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->subject:Ljava/lang/String;

    goto :goto_0

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->text:Ljava/lang/String;

    return-object v0
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->accumulator:Ljava/lang/StringBuffer;

    .line 90
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 97
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string/jumbo v0, "EndUserConfirmationAck"

    .line 99
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "id"

    .line 100
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->id:Ljava/lang/String;

    const-string/jumbo v0, "status"

    .line 101
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsAckParser;->status:Ljava/lang/String;

    goto :goto_0
.end method
