.class public Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TermsRequestParser.java"


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

.field private pin:Z

.field private requestedLanguage:Ljava/lang/String;

.field private timeout:I

.field private type:Ljava/lang/String;


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

    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 72
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->id:Ljava/lang/String;

    .line 87
    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->pin:Z

    .line 92
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->requestedLanguage:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->firstLanguage:Ljava/lang/String;

    .line 102
    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->isFirstSubjectParsed:Z

    .line 107
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->currentLangAttribute:Ljava/lang/String;

    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->elementMap:Ljava/util/HashMap;

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 126
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->requestedLanguage:Ljava/lang/String;

    .line 127
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 128
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 129
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1, p1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 130
    return-void
.end method

.method private giveTextInBestLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->elementMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->requestedLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->elementMap:Ljava/util/HashMap;

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

    .line 258
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->elementMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->firstLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->elementMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->elementMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->requestedLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->elementMap:Ljava/util/HashMap;

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

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->elementMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->firstLanguage:Ljava/lang/String;

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
    .line 173
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 174
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

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
    const-string/jumbo v0, "EndUserConfirmationRequest"

    .line 232
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->currentLangAttribute:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->requestedLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->elementMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->currentLangAttribute:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Terms request document is complete"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->currentLangAttribute:Ljava/lang/String;

    const-string/jumbo v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->currentLangAttribute:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->firstLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->currentLangAttribute:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public getButtonAccept()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "ButtonAccept"

    .line 157
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->giveTextInBestLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getButtonReject()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "ButtonReject"

    .line 161
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->giveTextInBestLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPin()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->pin:Z

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "Subject"

    .line 149
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->giveTextInBestLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "Text"

    .line 153
    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->giveTextInBestLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->timeout:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->type:Ljava/lang/String;

    return-object v0
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->accumulator:Ljava/lang/StringBuffer;

    .line 169
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start document \'EndUserConfirmationRequest\'"

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

    .line 178
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string/jumbo v3, "EndUserConfirmationRequest"

    .line 180
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "xml:lang"

    .line 211
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->currentLangAttribute:Ljava/lang/String;

    .line 212
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->currentLangAttribute:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 217
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->currentLangAttribute:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 222
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->currentLangAttribute:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->currentLangAttribute:Ljava/lang/String;

    .line 223
    iget-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->isFirstSubjectParsed:Z

    if-eqz v3, :cond_6

    .line 228
    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string/jumbo v3, "id"

    .line 181
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->id:Ljava/lang/String;

    const-string/jumbo v3, "type"

    .line 182
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->type:Ljava/lang/String;

    .line 183
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->type:Ljava/lang/String;

    const-string/jumbo v4, "Volatile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, -0x1

    .line 200
    iput v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->timeout:I

    .line 204
    :goto_3
    iput-boolean v5, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->pin:Z

    const-string/jumbo v3, "pin"

    .line 205
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "pinAttr":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v3, "pin"

    .line 207
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->pin:Z

    goto :goto_2

    .end local v1    # "pinAttr":Ljava/lang/String;
    :cond_2
    :try_start_0
    const-string/jumbo v3, "timeout"

    .line 185
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->timeout:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 198
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    .line 191
    .local v2, "rcsSettings":Lcom/sonymobile/rcs/provider/settings/RcsSettings;
    if-nez v2, :cond_3

    const/16 v3, 0x7d00

    .line 196
    iput v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->timeout:I

    goto :goto_3

    .line 192
    :cond_3
    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getSipTimerT1()I

    move-result v3

    mul-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->timeout:I

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "rcsSettings":Lcom/sonymobile/rcs/provider/settings/RcsSettings;
    :cond_4
    const-string/jumbo v3, "lang"

    .line 214
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->currentLangAttribute:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v3, ""

    .line 219
    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->currentLangAttribute:Ljava/lang/String;

    goto/16 :goto_1

    .line 224
    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->isFirstSubjectParsed:Z

    .line 225
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->currentLangAttribute:Ljava/lang/String;

    iput-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/terms/TermsRequestParser;->firstLanguage:Ljava/lang/String;

    goto/16 :goto_2
.end method
