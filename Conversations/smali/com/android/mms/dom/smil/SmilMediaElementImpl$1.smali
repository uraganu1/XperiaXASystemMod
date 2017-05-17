.class Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;
.super Lcom/android/mms/dom/smil/ElementTimeImpl;
.source "SmilMediaElementImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/smil/SmilMediaElementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilMediaElementImpl;Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/mms/dom/smil/SmilMediaElementImpl;
    .param p2, "$anonymous0"    # Lorg/w3c/dom/smil/SMILElement;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-direct {p0, p2}, Lcom/android/mms/dom/smil/ElementTimeImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    return-void
.end method

.method private createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;
    .locals 6
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    .line 51
    .local v0, "doc":Lorg/w3c/dom/events/DocumentEvent;
    const-string/jumbo v2, "Event"

    invoke-interface {v0, v2}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v1

    .line 52
    .local v1, "event":Lorg/w3c/dom/events/Event;
    invoke-interface {v1, p1, v3, v3}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    .line 53
    const-string/jumbo v2, "Conversations"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dispatching \'begin\' event to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v3}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 55
    const-string/jumbo v3, " "

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 55
    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v3}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getSrc()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 56
    const-string/jumbo v3, " at "

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 54
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 58
    :cond_0
    return-object v1
.end method

.method private createEvent(Ljava/lang/String;I)Lorg/w3c/dom/events/Event;
    .locals 6
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "seekTo"    # I

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    .line 64
    .local v0, "doc":Lorg/w3c/dom/events/DocumentEvent;
    const-string/jumbo v2, "Event"

    invoke-interface {v0, v2}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v1

    .line 65
    .local v1, "event":Lorg/w3c/dom/events/Event;
    invoke-interface {v1, p1, v3, v3, p2}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZI)V

    .line 66
    const-string/jumbo v2, "Conversations"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dispatching \'begin\' event to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v3}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 68
    const-string/jumbo v3, " "

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v3}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getSrc()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    const-string/jumbo v3, " at "

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 67
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-object v1
.end method


# virtual methods
.method public beginElement()Z
    .locals 2

    .prologue
    .line 75
    const-string/jumbo v1, "SmilMediaStart"

    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 76
    .local v0, "startEvent":Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 77
    const/4 v1, 0x1

    return v1
.end method

.method public endElement()Z
    .locals 2

    .prologue
    .line 81
    const-string/jumbo v1, "SmilMediaEnd"

    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 82
    .local v0, "endEvent":Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 83
    const/4 v1, 0x1

    return v1
.end method

.method public getDur()F
    .locals 5

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getDur()F

    move-result v0

    .line 104
    .local v0, "dur":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_5

    .line 106
    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v3}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 125
    .end local v2    # "tag":Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 111
    .restart local v2    # "tag":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :cond_3
    const-string/jumbo v3, "img"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v3}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getSrc()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "giftag":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .line 119
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    .end local v1    # "giftag":Ljava/lang/String;
    .end local v2    # "tag":Ljava/lang/String;
    :cond_5
    const-string/jumbo v3, "Unknown media type"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getParentElementTime()Lorg/w3c/dom/smil/ElementTime;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILElement;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilParElementImpl;

    iget-object v0, v0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    return-object v0
.end method

.method public pauseElement()V
    .locals 2

    .prologue
    .line 92
    const-string/jumbo v1, "SmilMediaPause"

    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 93
    .local v0, "pauseEvent":Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 91
    return-void
.end method

.method public resumeElement()V
    .locals 2

    .prologue
    .line 87
    const-string/jumbo v1, "SmilMediaStart"

    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 88
    .local v0, "resumeEvent":Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 86
    return-void
.end method

.method public seekElement(F)V
    .locals 3
    .param p1, "seekTo"    # F

    .prologue
    .line 97
    const-string/jumbo v1, "SmilMediaSeek"

    float-to-int v2, p1

    invoke-direct {p0, v1, v2}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;I)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 98
    .local v0, "seekEvent":Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 96
    return-void
.end method
