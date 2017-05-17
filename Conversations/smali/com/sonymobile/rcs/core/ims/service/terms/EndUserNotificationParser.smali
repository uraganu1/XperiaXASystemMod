.class public Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "EndUserNotificationParser.java"


# instance fields
.field private accumulator:Ljava/lang/StringBuffer;

.field private currentLangAttribute:Ljava/lang/String;

.field private elementMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private firstLanguage:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isFirstSubjectParsed:Z

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private requestedLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xml/sax/InputSource;Ljava/lang/String;)V
    .locals 4
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;
    .param p2, "requestedLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 65
    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->id:Ljava/lang/String;

    .line 70
    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->requestedLanguage:Ljava/lang/String;

    .line 75
    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->firstLanguage:Ljava/lang/String;

    .line 80
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->isFirstSubjectParsed:Z

    .line 85
    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->currentLangAttribute:Ljava/lang/String;

    .line 90
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->elementMap:Ljava/util/HashMap;

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 106
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->requestedLanguage:Ljava/lang/String;

    .line 107
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 108
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 109
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1, p1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 110
    return-void
.end method

.method private giveTextInBestLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->elementMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->requestedLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->elementMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->elementMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->firstLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->elementMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->elementMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->requestedLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->elementMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->elementMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->firstLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 137
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "End document: \'EndUserNotification\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespaceURL"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "EndUserNotification"

    .line 166
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->currentLangAttribute:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->requestedLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->elementMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->currentLangAttribute:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "EndUserNotification document is complete"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->currentLangAttribute:Ljava/lang/String;

    const-string/jumbo v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->currentLangAttribute:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->firstLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->currentLangAttribute:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public getButtonOk()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "ButtonOK"

    .line 125
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->giveTextInBestLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "Subject"

    .line 117
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->giveTextInBestLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "Text"

    .line 121
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->giveTextInBestLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->accumulator:Ljava/lang/StringBuffer;

    .line 133
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start document \'EndUserNotification\'."

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

    .line 140
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string/jumbo v0, "EndUserNotification"

    .line 142
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "xml:lang"

    .line 145
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->currentLangAttribute:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->currentLangAttribute:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->currentLangAttribute:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 156
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->currentLangAttribute:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->currentLangAttribute:Ljava/lang/String;

    .line 157
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->isFirstSubjectParsed:Z

    if-eqz v0, :cond_3

    .line 163
    :goto_2
    return-void

    :cond_0
    const-string/jumbo v0, "id"

    .line 143
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->id:Ljava/lang/String;

    goto :goto_2

    :cond_1
    const-string/jumbo v0, "lang"

    .line 148
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->currentLangAttribute:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    .line 153
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->currentLangAttribute:Ljava/lang/String;

    goto :goto_1

    .line 158
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->isFirstSubjectParsed:Z

    .line 159
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->currentLangAttribute:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/EndUserNotificationParser;->firstLanguage:Ljava/lang/String;

    goto :goto_2
.end method
