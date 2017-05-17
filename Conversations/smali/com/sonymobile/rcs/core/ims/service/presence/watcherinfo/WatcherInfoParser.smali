.class public Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "WatcherInfoParser.java"


# instance fields
.field private accumulator:Ljava/lang/StringBuffer;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private watcher:Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;

.field private watcherInfo:Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;


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

    .line 48
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->watcherInfo:Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;

    .line 50
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->watcher:Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    .line 77
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 78
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    const-string/jumbo v0, "watcher"

    .line 111
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "watcher-list"

    .line 120
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->watcher:Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;

    if-nez v0, :cond_2

    .line 116
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->watcherInfo:Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;

    if-nez v0, :cond_3

    .line 119
    :goto_2
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->watcher:Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->watcher:Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;->setUri(Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->watcherInfo:Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->watcher:Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;->addWatcher(Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;)V

    goto :goto_2

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Watcher document is complete"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    .line 147
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    :goto_0
    throw p1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

.method public getWatcherInfo()Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->watcherInfo:Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;

    return-object v0
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->accumulator:Ljava/lang/StringBuffer;

    .line 74
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    .line 81
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string/jumbo v6, "watcher-list"

    .line 83
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "watcher"

    .line 87
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 108
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v6, "resource"

    .line 84
    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .local v4, "resource":Ljava/lang/String;
    const-string/jumbo v6, "package"

    .line 85
    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "packageId":Ljava/lang/String;
    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;

    invoke-direct {v6, v4, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->watcherInfo:Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;

    goto :goto_0

    .end local v3    # "packageId":Ljava/lang/String;
    .end local v4    # "resource":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "id"

    .line 88
    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 90
    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->watcher:Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;

    const-string/jumbo v6, "status"

    .line 92
    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "status":Ljava/lang/String;
    if-nez v5, :cond_3

    :goto_1
    const-string/jumbo v6, "event"

    .line 97
    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "event":Ljava/lang/String;
    if-nez v0, :cond_4

    :goto_2
    const-string/jumbo v6, "display-name"

    .line 102
    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 104
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->watcher:Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;->setDisplayName(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v0    # "event":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->watcher:Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;->setStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 99
    .restart local v0    # "event":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->watcher:Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;->setEvent(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
