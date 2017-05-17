.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GeolocInfoParser.java"


# instance fields
.field private accumulator:Ljava/lang/StringBuffer;

.field private geoloc:Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;

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
    .line 76
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v2, 0x0

    .line 63
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->geoloc:Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 77
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 78
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 79
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1, p1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 80
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 95
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "End document"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "namespaceURL"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v2, "radius"

    .line 114
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "retention-expiry"

    .line 118
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "pos"

    .line 122
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->geoloc:Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->geoloc:Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->setRadius(F)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->geoloc:Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->geoloc:Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;

    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/utils/DateUtils;->decodeDate(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->setExpiration(J)V

    goto :goto_0

    .line 123
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->geoloc:Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;

    if-eqz v2, :cond_0

    .line 124
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, "st":Ljava/util/StringTokenizer;
    :try_start_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_4

    .line 129
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_5

    .line 132
    :goto_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->geoloc:Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->setAltitude(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Can\'t parse geoloc value"

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->geoloc:Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->setLatitude(D)V

    goto :goto_1

    .line 130
    :cond_5
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->geoloc:Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->setLongitude(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getGeoLocInfo()Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->geoloc:Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;

    return-object v0
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->accumulator:Ljava/lang/StringBuffer;

    .line 91
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start document"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "namespaceURL"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .param p4, "attr"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v3, 0x0

    .line 98
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string/jumbo v2, "rcsenvelope"

    .line 99
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "rcspushlocation"

    .line 102
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 111
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "entity"

    .line 100
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "entity":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;

    invoke-direct {v2, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->geoloc:Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;

    goto :goto_0

    .line 103
    .end local v0    # "entity":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_3

    .line 106
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->geoloc:Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "label"

    .line 107
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "label":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->geoloc:Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v1    # "label":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "rcspushlocation"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method
