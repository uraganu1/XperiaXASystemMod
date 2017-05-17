.class public Lcom/android/mms/dom/smil/parser/SmilContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SmilContentHandler.java"


# instance fields
.field private mCurrentNode:Lorg/w3c/dom/Node;

.field private mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 104
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    .line 96
    return-void
.end method

.method public getSmilDocument()Lorg/w3c/dom/smil/SMILDocument;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    .line 50
    iget-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    .line 48
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 66
    iget-object v5, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v5, p2}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 67
    .local v3, "element":Lorg/w3c/dom/Element;
    if-eqz p4, :cond_1

    .line 70
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 71
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "attributesLocalName":Ljava/lang/String;
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "attributesValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 80
    :try_start_0
    invoke-interface {v3, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "dom":Lorg/w3c/dom/DOMException;
    const-string/jumbo v5, "Error when setting attribute in element."

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    .end local v0    # "attributesLocalName":Ljava/lang/String;
    .end local v1    # "attributesValue":Ljava/lang/String;
    .end local v2    # "dom":Lorg/w3c/dom/DOMException;
    .end local v4    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v5, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 92
    iput-object v3, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    .line 62
    return-void
.end method
