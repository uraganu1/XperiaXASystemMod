.class public Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "FileTransferHttpResumeInfoParser.java"


# instance fields
.field private ftResumeInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lorg/xml/sax/InputSource;)V
    .locals 3
    .param p1, "ftHttpInput"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v2, 0x0

    .line 48
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;->ftResumeInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 57
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 58
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 59
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1, p1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 60
    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "End document"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getResumeInfo()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;->ftResumeInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;

    return-object v0
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    const-string/jumbo v3, "file-resume-info"

    .line 79
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "file-range"

    .line 81
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "data"

    .line 89
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;

    invoke-direct {v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;->ftResumeInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;

    goto :goto_0

    .line 82
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;->ftResumeInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "start"

    .line 83
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "start":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;->ftResumeInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->setStart(I)V

    const-string/jumbo v3, "end"

    .line 85
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "end":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;->ftResumeInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->setEnd(I)V

    goto :goto_0

    .line 90
    .end local v0    # "end":Ljava/lang/String;
    .end local v1    # "start":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;->ftResumeInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "url"

    .line 91
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;->ftResumeInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;

    invoke-virtual {v3, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->setUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
