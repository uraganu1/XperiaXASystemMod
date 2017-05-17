.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ConferenceInfoParser.java"


# instance fields
.field private accumulator:Ljava/lang/StringBuffer;

.field private conference:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private user:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;


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

    .line 85
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 70
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->conference:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;

    .line 72
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->user:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 86
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 87
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 88
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1, p1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 89
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 104
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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

    const-string/jumbo v0, "user"

    .line 128
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "display-text"

    .line 133
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "status"

    .line 137
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "maximum-user-count"

    .line 141
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "user-count"

    .line 143
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "conference-info"

    .line 145
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "disconnection-method"

    .line 149
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "reason"

    .line 153
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->user:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->conference:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->user:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;->addUser(Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;)V

    .line 131
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->user:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->user:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->user:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->setDisplayName(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->user:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->user:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->conference:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;->setMaxUserCount(I)V

    goto :goto_0

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->conference:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;->setUserCount(I)V

    goto :goto_0

    .line 146
    :cond_6
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Conference-Info document complete"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->user:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->user:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->setDisconnectionMethod(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :cond_8
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->user:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->user:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;->setFailureReason(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getConferenceInfo()Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->conference:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;

    return-object v0
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->accumulator:Ljava/lang/StringBuffer;

    .line 100
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    const/4 v5, 0x0

    .line 107
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string/jumbo v4, "conference-info"

    .line 109
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "user"

    .line 113
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 125
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v4, "entity"

    .line 110
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .local v0, "entity":Ljava/lang/String;
    const-string/jumbo v4, "state"

    .line 111
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "state":Ljava/lang/String;
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;

    invoke-direct {v4, v0, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->conference:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;

    goto :goto_0

    .end local v0    # "entity":Ljava/lang/String;
    .end local v2    # "state":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "entity"

    .line 114
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "entity":Ljava/lang/String;
    const-string/jumbo v4, "yourown"

    .line 115
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "yourown":Ljava/lang/String;
    const/4 v1, 0x0

    .line 117
    .local v1, "me":Z
    if-nez v3, :cond_2

    .line 123
    .end local v1    # "me":Z
    :goto_1
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;

    invoke-direct {v4, v0, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;-><init>(Ljava/lang/String;Z)V

    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoParser;->user:Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;

    goto :goto_0

    .line 119
    .restart local v1    # "me":Z
    :cond_2
    :try_start_0
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "me":Z
    goto :goto_1

    .line 121
    .local v1, "me":Z
    :catch_0
    move-exception v4

    goto :goto_1
.end method
