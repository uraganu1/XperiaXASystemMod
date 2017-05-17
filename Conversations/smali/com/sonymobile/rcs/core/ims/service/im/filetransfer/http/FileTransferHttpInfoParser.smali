.class public Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "FileTransferHttpInfoParser.java"


# instance fields
.field private accumulator:Ljava/lang/StringBuffer;

.field private ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private thumbnailInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;


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

    .line 91
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 73
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    .line 78
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->thumbnailInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 92
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 93
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 94
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1, p1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 95
    return-void
.end method

.method private parseValidityDate(Ljava/lang/String;)J
    .locals 6
    .param p1, "validity"    # Ljava/lang/String;

    .prologue
    .line 156
    :try_start_0
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/DateUtils;->decodeDate(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v1

    .line 162
    .local v1, "tfe":Landroid/util/TimeFormatException;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    return-wide v2

    :catch_1
    move-exception v0

    .line 166
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    return-wide v2

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not parse tranfer validity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 121
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    const-string/jumbo v2, "file-size"

    .line 178
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "file-name"

    .line 185
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "content-type"

    .line 198
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    if-nez v2, :cond_5

    .line 182
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->thumbnailInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->thumbnailInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;->setThumbnailSize(I)V

    goto :goto_0

    .line 179
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFileThumbnail()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 180
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->setFileSize(I)V

    goto :goto_0

    .line 179
    :cond_5
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->thumbnailInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    if-eqz v2, :cond_4

    goto :goto_1

    .line 186
    :cond_6
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    if-eqz v2, :cond_0

    .line 189
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->setFilename(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Coulnd not decode filename"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_7
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    if-nez v2, :cond_8

    .line 202
    :goto_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->thumbnailInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->thumbnailInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;->setThumbnailType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    :cond_8
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFileThumbnail()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 200
    :cond_9
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->setFileType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    :cond_a
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->thumbnailInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    if-eqz v2, :cond_9

    goto :goto_2
.end method

.method public getFtInfo()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    return-object v0
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->accumulator:Ljava/lang/StringBuffer;

    .line 114
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start document"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "namespaceURL"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .param p4, "attr"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v4, 0x0

    .line 127
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string/jumbo v3, "file"

    .line 128
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "file-info"

    .line 130
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "data"

    .line 137
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    invoke-direct {v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    goto :goto_0

    .line 131
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "type"

    .line 132
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v3, "thumbnail"

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    invoke-direct {v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->thumbnailInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    goto :goto_0

    .line 138
    .end local v0    # "type":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "url"

    .line 139
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v3, "until"

    .line 140
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "validity":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->getFileThumbnail()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 142
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    invoke-virtual {v3, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->setFileUrl(Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->parseValidityDate(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->setTransferValidity(J)V

    goto :goto_0

    .line 141
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->thumbnailInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    if-eqz v3, :cond_4

    .line 144
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->thumbnailInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    if-eqz v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->thumbnailInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    invoke-virtual {v3, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;->setThumbnailUrl(Ljava/lang/String;)V

    .line 146
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->thumbnailInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->parseValidityDate(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;->setThumbnailValidity(J)V

    .line 147
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->ftInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->thumbnailInfo:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->setFileThumbnail(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;)V

    goto :goto_0
.end method
