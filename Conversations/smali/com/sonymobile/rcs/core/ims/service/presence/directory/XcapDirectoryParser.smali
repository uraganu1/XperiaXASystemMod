.class public Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XcapDirectoryParser.java"


# instance fields
.field private accumulator:Ljava/lang/StringBuffer;

.field private docs:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private entry:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

.field private folder:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;

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

    .line 42
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->folder:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;

    .line 44
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->entry:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    .line 46
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->docs:Ljava/util/Hashtable;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 74
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "End document"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "namespaceURL"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v0, "folder"

    .line 100
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "entry"

    .line 105
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "xcap-directory"

    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->folder:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;

    if-nez v0, :cond_2

    .line 104
    :goto_1
    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->folder:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->docs:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->folder:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;->getAuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->folder:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->folder:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;

    if-nez v0, :cond_5

    .line 109
    :cond_4
    :goto_2
    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->entry:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    goto :goto_0

    .line 106
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->entry:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->folder:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->entry:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;->setEntry(Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;)V

    goto :goto_2

    .line 111
    :cond_6
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "XCAP directory document is complete"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDocuments()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->docs:Ljava/util/Hashtable;

    return-object v0
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->accumulator:Ljava/lang/StringBuffer;

    .line 70
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start document"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .param p1, "namespaceURL"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .param p4, "attr"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v7, 0x0

    .line 77
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string/jumbo v6, "folder"

    .line 79
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "entry"

    .line 82
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 97
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v6, "auid"

    .line 80
    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "auid":Ljava/lang/String;
    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;

    invoke-direct {v6, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->folder:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;

    goto :goto_0

    .end local v0    # "auid":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "uri"

    .line 83
    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "uri":Ljava/lang/String;
    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    invoke-direct {v6, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->entry:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    const-string/jumbo v6, "etag"

    .line 86
    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "etag":Ljava/lang/String;
    if-nez v1, :cond_3

    :goto_1
    const-string/jumbo v6, "last-modified"

    .line 91
    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "lastModified":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/rcs/utils/DateUtils;->decodeDate(Ljava/lang/String;)J

    move-result-wide v4

    .line 94
    .local v4, "ts":J
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->entry:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    invoke-virtual {v6, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;->setLastModified(J)V

    goto :goto_0

    .line 88
    .end local v2    # "lastModified":Ljava/lang/String;
    .end local v4    # "ts":J
    :cond_3
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->entry:Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;->setEtag(Ljava/lang/String;)V

    goto :goto_1
.end method
