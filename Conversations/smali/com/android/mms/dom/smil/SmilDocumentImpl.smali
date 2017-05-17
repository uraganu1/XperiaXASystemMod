.class public Lcom/android/mms/dom/smil/SmilDocumentImpl;
.super Lcom/android/mms/dom/DocumentImpl;
.source "SmilDocumentImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILDocument;
.implements Lorg/w3c/dom/events/DocumentEvent;


# instance fields
.field mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/mms/dom/DocumentImpl;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public beginElement()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->beginElement()Z

    move-result v0

    return v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 164
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const-string/jumbo v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 164
    if-nez v0, :cond_0

    .line 166
    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 164
    if-eqz v0, :cond_1

    .line 167
    :cond_0
    new-instance v0, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v0

    .line 168
    :cond_1
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    new-instance v0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v0

    .line 170
    :cond_2
    const-string/jumbo v0, "layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    new-instance v0, Lcom/android/mms/dom/smil/SmilLayoutElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/smil/SmilLayoutElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v0

    .line 172
    :cond_3
    const-string/jumbo v0, "root-layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    new-instance v0, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v0

    .line 174
    :cond_4
    const-string/jumbo v0, "region"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    new-instance v0, Lcom/android/mms/dom/smil/SmilRegionElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v0

    .line 176
    :cond_5
    const-string/jumbo v0, "ref"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 177
    new-instance v0, Lcom/android/mms/dom/smil/SmilRefElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/smil/SmilRefElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v0

    .line 178
    :cond_6
    const-string/jumbo v0, "par"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    new-instance v0, Lcom/android/mms/dom/smil/SmilParElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/smil/SmilParElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v0

    .line 180
    :cond_7
    const-string/jumbo v0, "seq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 181
    new-instance v0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v0

    .line 185
    :cond_8
    new-instance v0, Lcom/android/mms/dom/smil/SmilElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;
    .locals 3
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 292
    const-string/jumbo v0, "Event"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Lcom/android/mms/dom/events/EventImpl;

    invoke-direct {v0}, Lcom/android/mms/dom/events/EventImpl;-><init>()V

    return-object v0

    .line 295
    :cond_0
    new-instance v0, Lorg/w3c/dom/DOMException;

    .line 296
    const-string/jumbo v1, "Not supported interface"

    .line 295
    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public endElement()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->endElement()Z

    move-result v0

    return v0
.end method

.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .locals 1
    .param p1, "instant"    # F

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lorg/w3c/dom/smil/SMILElement;
    .locals 5

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getDocumentElement()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v2

    .line 219
    .local v2, "rootElement":Lorg/w3c/dom/Node;
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getHead()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    .line 220
    .local v1, "headElement":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 221
    .local v0, "bodyElement":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lorg/w3c/dom/smil/SMILElement;

    if-eqz v3, :cond_0

    .line 228
    :goto_0
    new-instance v4, Lcom/android/mms/dom/smil/SmilDocumentImpl$1;

    move-object v3, v0

    check-cast v3, Lorg/w3c/dom/smil/SMILElement;

    invoke-direct {v4, p0, v3}, Lcom/android/mms/dom/smil/SmilDocumentImpl$1;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Lorg/w3c/dom/smil/SMILElement;)V

    iput-object v4, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    .line 267
    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    .end local v0    # "bodyElement":Lorg/w3c/dom/Node;
    return-object v0

    .line 223
    .restart local v0    # "bodyElement":Lorg/w3c/dom/Node;
    :cond_0
    const-string/jumbo v3, "body"

    invoke-virtual {p0, v3}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 224
    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public bridge synthetic getDocumentElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getDocumentElement()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentElement()Lorg/w3c/dom/smil/SMILElement;
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 192
    .local v0, "rootElement":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/w3c/dom/smil/SMILElement;

    if-eqz v1, :cond_0

    .line 198
    :goto_0
    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    .end local v0    # "rootElement":Lorg/w3c/dom/Node;
    return-object v0

    .line 194
    .restart local v0    # "rootElement":Lorg/w3c/dom/Node;
    :cond_0
    const-string/jumbo v1, "smil"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public getDur()F
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getDur()F

    move-result v0

    return v0
.end method

.method public getEnd()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getFill()S
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getFill()S

    move-result v0

    return v0
.end method

.method public getHead()Lorg/w3c/dom/smil/SMILElement;
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getDocumentElement()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    .line 207
    .local v1, "rootElement":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 208
    .local v0, "headElement":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lorg/w3c/dom/smil/SMILElement;

    if-eqz v2, :cond_0

    .line 214
    :goto_0
    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    .end local v0    # "headElement":Lorg/w3c/dom/Node;
    return-object v0

    .line 210
    .restart local v0    # "headElement":Lorg/w3c/dom/Node;
    :cond_0
    const-string/jumbo v2, "head"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 211
    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;
    .locals 3

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getHead()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v0

    .line 272
    .local v0, "headElement":Lorg/w3c/dom/Node;
    const/4 v1, 0x0

    .line 275
    .local v1, "layoutElement":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 276
    .local v1, "layoutElement":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v1, :cond_0

    instance-of v2, v1, Lorg/w3c/dom/smil/SMILLayoutElement;

    if-eqz v2, :cond_2

    .line 280
    :cond_0
    if-nez v1, :cond_1

    .line 282
    new-instance v1, Lcom/android/mms/dom/smil/SmilLayoutElementImpl;

    .end local v1    # "layoutElement":Lorg/w3c/dom/Node;
    const-string/jumbo v2, "layout"

    invoke-direct {v1, p0, v2}, Lcom/android/mms/dom/smil/SmilLayoutElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 283
    .restart local v1    # "layoutElement":Lorg/w3c/dom/Node;
    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 285
    :cond_1
    check-cast v1, Lorg/w3c/dom/smil/SMILLayoutElement;

    .end local v1    # "layoutElement":Lorg/w3c/dom/Node;
    return-object v1

    .line 277
    .restart local v1    # "layoutElement":Lorg/w3c/dom/Node;
    :cond_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public getTimeChildren()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public pauseElement()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->pauseElement()V

    .line 112
    return-void
.end method

.method public resumeElement()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->resumeElement()V

    .line 116
    return-void
.end method

.method public seekElement(F)V
    .locals 1
    .param p1, "seekTo"    # F

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->seekElement(F)V

    .line 120
    return-void
.end method

.method public setDur(F)V
    .locals 1
    .param p1, "dur"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->setDur(F)V

    .line 128
    return-void
.end method
