.class public Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PidfParser.java"


# instance fields
.field private accumulator:Ljava/lang/StringBuffer;

.field private basic:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

.field private contact:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;

.field private geopriv:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

.field private icon:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private note:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;

.field private person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

.field private presence:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;

.field private service:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;

.field private status:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;

.field private tuple:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;

.field private willingness:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;


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

    .line 110
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 77
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->presence:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;

    .line 79
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->tuple:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;

    .line 81
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->note:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;

    .line 83
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->contact:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;

    .line 85
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->basic:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    .line 87
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->willingness:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;

    .line 89
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->status:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;

    .line 91
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->service:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;

    .line 93
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->icon:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    .line 95
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    .line 97
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->geopriv:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 111
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 112
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 113
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1, p1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 114
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 129
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "End document"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "namespaceURL"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const-string/jumbo v8, "tuple"

    .line 190
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "person"

    .line 195
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "note"

    .line 200
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string/jumbo v8, "contact"

    .line 207
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "basic"

    .line 213
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string/jumbo v8, "overriding-willingness"

    .line 221
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string/jumbo v8, "status-icon"

    .line 226
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string/jumbo v8, "status"

    .line 233
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string/jumbo v8, "timestamp"

    .line 238
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string/jumbo v8, "service-description"

    .line 248
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string/jumbo v8, "service-id"

    .line 253
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    const-string/jumbo v8, "homepage"

    .line 257
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string/jumbo v8, "geopriv"

    .line 263
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    const-string/jumbo v8, "method"

    .line 268
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    const-string/jumbo v8, "pos"

    .line 272
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string/jumbo v8, "presence"

    .line 291
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->presence:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;

    if-nez v8, :cond_2

    .line 194
    :goto_1
    iput-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->tuple:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;

    goto :goto_0

    .line 192
    :cond_2
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->presence:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->tuple:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->addTuple(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;)V

    goto :goto_1

    .line 196
    :cond_3
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    if-eqz v8, :cond_0

    .line 197
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->presence:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->setPerson(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;)V

    .line 198
    iput-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    goto :goto_0

    .line 201
    :cond_4
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->note:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    if-eqz v8, :cond_0

    .line 202
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/StringUtils;->decodeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, "value":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->note:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;

    invoke-virtual {v8, v7}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;->setValue(Ljava/lang/String;)V

    .line 204
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->note:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->setNote(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;)V

    .line 205
    iput-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->note:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;

    goto :goto_0

    .line 208
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->contact:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->tuple:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;

    if-eqz v8, :cond_0

    .line 209
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->contact:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;->setUri(Ljava/lang/String;)V

    .line 210
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->tuple:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->contact:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->addContact(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;)V

    .line 211
    iput-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->contact:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;

    goto :goto_0

    .line 214
    :cond_6
    new-instance v8, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->basic:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    .line 215
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->status:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;

    if-nez v8, :cond_7

    .line 217
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->willingness:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;

    if-nez v8, :cond_8

    .line 220
    :goto_2
    iput-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->basic:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    goto :goto_0

    .line 216
    :cond_7
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->status:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->basic:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;->setBasic(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;)V

    goto :goto_2

    .line 218
    :cond_8
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->willingness:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->basic:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;->setBasic(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Basic;)V

    goto :goto_2

    .line 222
    :cond_9
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->willingness:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    if-eqz v8, :cond_0

    .line 223
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->willingness:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->setOverridingWillingness(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;)V

    .line 224
    iput-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->willingness:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;

    goto/16 :goto_0

    .line 227
    :cond_a
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "url":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->icon:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    if-eqz v8, :cond_0

    .line 229
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->icon:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;->setUrl(Ljava/lang/String;)V

    .line 230
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->icon:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->setStatusIcon(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;)V

    .line 231
    iput-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->icon:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    goto/16 :goto_0

    .line 234
    .end local v6    # "url":Ljava/lang/String;
    :cond_b
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->status:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->tuple:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;

    if-eqz v8, :cond_0

    .line 235
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->tuple:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->status:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->setStatus(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;)V

    .line 236
    iput-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->status:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;

    goto/16 :goto_0

    .line 239
    :cond_c
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "timestamp":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 241
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/DateUtils;->decodeDate(Ljava/lang/String;)J

    move-result-wide v4

    .line 242
    .local v4, "ts":J
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    if-nez v8, :cond_d

    .line 244
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->tuple:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;

    if-eqz v8, :cond_0

    .line 245
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->tuple:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;

    invoke-virtual {v8, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->setTimestamp(J)V

    goto/16 :goto_0

    .line 243
    :cond_d
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    invoke-virtual {v8, v4, v5}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->setTimestamp(J)V

    goto/16 :goto_0

    .line 249
    .end local v3    # "timestamp":Ljava/lang/String;
    .end local v4    # "ts":J
    :cond_e
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->service:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->tuple:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;

    if-eqz v8, :cond_0

    .line 250
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->tuple:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->service:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;->setService(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;)V

    .line 251
    iput-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->service:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;

    goto/16 :goto_0

    .line 254
    :cond_f
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->service:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;

    if-eqz v8, :cond_0

    .line 255
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->service:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :cond_10
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "homepage":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    if-eqz v8, :cond_0

    .line 260
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/rcs/utils/StringUtils;->decodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;->setHomePage(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 261
    .local v1, "homepage":Ljava/lang/String;
    goto/16 :goto_0

    .line 264
    .end local v1    # "homepage":Ljava/lang/String;
    :cond_11
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->geopriv:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->presence:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;

    if-eqz v8, :cond_0

    .line 265
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->presence:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->geopriv:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;->setGeopriv(Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;)V

    .line 266
    iput-object v10, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->geopriv:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    goto/16 :goto_0

    .line 269
    :cond_12
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->geopriv:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    if-eqz v8, :cond_0

    .line 270
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->geopriv:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;->setMethod(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :cond_13
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->geopriv:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    if-eqz v8, :cond_0

    .line 274
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 276
    .local v2, "st":Ljava/util/StringTokenizer;
    :try_start_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_14

    .line 279
    :goto_3
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_15

    .line 282
    :goto_4
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 283
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->geopriv:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;->setAltitude(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 287
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Can\'t parse geoloc value"

    invoke-virtual {v8, v9, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 277
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_14
    :try_start_1
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->geopriv:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;->setLatitude(D)V

    goto :goto_3

    .line 280
    :cond_15
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->geopriv:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;->setLongitude(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 292
    .end local v2    # "st":Ljava/util/StringTokenizer;
    :cond_16
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 293
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Presence document complete"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getPresence()Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->presence:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;

    return-object v0
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->accumulator:Ljava/lang/StringBuffer;

    .line 125
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start document"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11
    .param p1, "namespaceURL"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .param p4, "attr"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 132
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->accumulator:Ljava/lang/StringBuffer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string/jumbo v9, "presence"

    .line 134
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "person"

    .line 137
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "tuple"

    .line 140
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "note"

    .line 143
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string/jumbo v9, "contact"

    .line 149
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string/jumbo v9, "overriding-willingness"

    .line 160
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string/jumbo v9, "status-icon"

    .line 170
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string/jumbo v9, "status"

    .line 180
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "service-description"

    .line 182
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string/jumbo v9, "geopriv"

    .line 184
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 187
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v9, "entity"

    .line 135
    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "entity":Ljava/lang/String;
    new-instance v9, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;

    invoke-direct {v9, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->presence:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;

    goto :goto_0

    .end local v1    # "entity":Ljava/lang/String;
    :cond_2
    const-string/jumbo v9, "id"

    .line 138
    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "id":Ljava/lang/String;
    new-instance v9, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    invoke-direct {v9, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->person:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Person;

    goto :goto_0

    .end local v3    # "id":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "id"

    .line 141
    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 142
    .restart local v3    # "id":Ljava/lang/String;
    new-instance v9, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;

    invoke-direct {v9, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->tuple:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Tuple;

    goto :goto_0

    .line 144
    .end local v3    # "id":Ljava/lang/String;
    :cond_4
    new-instance v9, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;

    invoke-direct {v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;-><init>()V

    iput-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->note:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;

    const-string/jumbo v9, "xml:lang"

    .line 145
    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "lang":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 147
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->note:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Note;->setLang(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    .end local v6    # "lang":Ljava/lang/String;
    :cond_5
    new-instance v9, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;

    invoke-direct {v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;-><init>()V

    iput-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->contact:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;

    const-string/jumbo v9, "priority"

    .line 151
    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, "priority":Ljava/lang/String;
    if-nez v7, :cond_6

    :goto_1
    const-string/jumbo v9, "contactType"

    .line 155
    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "contactType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 158
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->contact:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;->setContactType(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v0    # "contactType":Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->contact:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Contact;->setPriority(Ljava/lang/String;)V

    goto :goto_1

    .line 161
    .end local v7    # "priority":Ljava/lang/String;
    :cond_7
    new-instance v9, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;

    invoke-direct {v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;-><init>()V

    iput-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->willingness:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;

    const/4 v8, 0x0

    .local v8, "until":Ljava/lang/String;
    const-string/jumbo v9, "urn:oma:xml:pde:pidf:ext"

    const-string/jumbo v10, "until"

    .line 163
    invoke-interface {p4, v9, v10}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .local v5, "indexUntilValue":I
    const/4 v9, -0x1

    .line 164
    if-ne v5, v9, :cond_8

    .line 167
    .end local v8    # "until":Ljava/lang/String;
    :goto_2
    if-eqz v8, :cond_0

    .line 168
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->willingness:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;

    invoke-virtual {v9, v8}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/OverridingWillingness;->setUntilTimestamp(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    .restart local v8    # "until":Ljava/lang/String;
    :cond_8
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "until":Ljava/lang/String;
    goto :goto_2

    .line 171
    .end local v5    # "indexUntilValue":I
    .end local v8    # "until":Ljava/lang/String;
    :cond_9
    new-instance v9, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    invoke-direct {v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;-><init>()V

    iput-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->icon:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    const/4 v2, 0x0

    .local v2, "etag":Ljava/lang/String;
    const-string/jumbo v9, "urn:oma:xml:pde:pidf:ext"

    const-string/jumbo v10, "etag"

    .line 173
    invoke-interface {p4, v9, v10}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .local v4, "indexEtagValue":I
    const/4 v9, -0x1

    .line 174
    if-ne v4, v9, :cond_a

    .line 177
    .end local v2    # "etag":Ljava/lang/String;
    :goto_3
    if-eqz v2, :cond_0

    .line 178
    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->icon:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;

    invoke-virtual {v9, v2}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;->setEtag(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    .restart local v2    # "etag":Ljava/lang/String;
    :cond_a
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "etag":Ljava/lang/String;
    goto :goto_3

    .line 181
    .end local v2    # "etag":Ljava/lang/String;
    .end local v4    # "indexEtagValue":I
    :cond_b
    new-instance v9, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;

    invoke-direct {v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;-><init>()V

    iput-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->status:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Status;

    goto/16 :goto_0

    .line 183
    :cond_c
    new-instance v9, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;

    invoke-direct {v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;-><init>()V

    iput-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->service:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/Service;

    goto/16 :goto_0

    .line 185
    :cond_d
    new-instance v9, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    invoke-direct {v9}, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;-><init>()V

    iput-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfParser;->geopriv:Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;

    goto/16 :goto_0
.end method
