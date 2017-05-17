.class public Lcom/android/mms/dom/smil/SmilRegionElementImpl;
.super Lcom/android/mms/dom/smil/SmilElementImpl;
.source "SmilRegionElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILRegionElement;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lcom/android/mms/dom/smil/SmilDocumentImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private parseRegionLength(Ljava/lang/String;Z)I
    .locals 6
    .param p1, "length"    # Ljava/lang/String;
    .param p2, "horizontal"    # Z

    .prologue
    const/4 v3, 0x0

    .line 241
    const-string/jumbo v2, "px"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const-string/jumbo v2, "px"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 244
    :cond_0
    const-string/jumbo v2, "%"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 245
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    mul-double v0, v4, v2

    .line 246
    .local v0, "value":D
    if-eqz p2, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    .line 251
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    return v2

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 253
    .end local v0    # "value":D
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string/jumbo v0, "backgroundColor"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    const-string/jumbo v1, "fit"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "fit":Ljava/lang/String;
    const-string/jumbo v1, "fill"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const-string/jumbo v1, "fill"

    return-object v1

    .line 58
    :cond_0
    const-string/jumbo v1, "meet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    const-string/jumbo v1, "meet"

    return-object v1

    .line 60
    :cond_1
    const-string/jumbo v1, "scroll"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    const-string/jumbo v1, "scroll"

    return-object v1

    .line 62
    :cond_2
    const-string/jumbo v1, "slice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    const-string/jumbo v1, "slice"

    return-object v1

    .line 65
    :cond_3
    const-string/jumbo v1, "hidden"

    return-object v1
.end method

.method public getHeight()I
    .locals 4

    .prologue
    .line 152
    :try_start_0
    const-string/jumbo v2, "height"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "_":Ljava/lang/NumberFormatException;
    sget-boolean v2, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    .line 155
    const-string/jumbo v2, "Height attribute is not set or incorrect."

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v1

    .line 160
    .local v1, "bbh":I
    :try_start_1
    const-string/jumbo v2, "top"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    sub-int/2addr v1, v2

    .line 167
    :cond_1
    :goto_0
    :try_start_2
    const-string/jumbo v2, "bottom"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    sub-int/2addr v1, v2

    .line 173
    :cond_2
    :goto_1
    return v1

    .line 161
    :catch_1
    move-exception v0

    .line 162
    sget-boolean v2, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v2, :cond_1

    .line 163
    const-string/jumbo v2, "Top attribute is not set or incorrect."

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :catch_2
    move-exception v0

    .line 169
    sget-boolean v2, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v2, :cond_2

    .line 170
    const-string/jumbo v2, "Bottom attribute is not set or incorrect."

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()I
    .locals 6

    .prologue
    .line 71
    :try_start_0
    const-string/jumbo v4, "left"

    invoke-virtual {p0, v4}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "_":Ljava/lang/NumberFormatException;
    sget-boolean v4, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v4, :cond_0

    .line 74
    const-string/jumbo v4, "Left attribute is not set or incorrect."

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 78
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v1

    .line 79
    .local v1, "bbw":I
    const-string/jumbo v4, "right"

    invoke-virtual {p0, v4}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I

    move-result v2

    .line 80
    .local v2, "right":I
    const-string/jumbo v4, "width"

    invoke-virtual {p0, v4}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 81
    .local v3, "width":I
    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    return v4

    .line 82
    .end local v1    # "bbw":I
    .end local v2    # "right":I
    .end local v3    # "width":I
    :catch_1
    move-exception v0

    .line 83
    sget-boolean v4, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v4, :cond_1

    .line 84
    const-string/jumbo v4, "Right or width attribute is not set or incorrect."

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 87
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public getTop()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 92
    :try_start_0
    const-string/jumbo v4, "top"

    invoke-virtual {p0, v4}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "_":Ljava/lang/NumberFormatException;
    sget-boolean v4, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v4, :cond_0

    .line 95
    const-string/jumbo v4, "Top attribute is not set or incorrect."

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 99
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v1

    .line 100
    .local v1, "bbh":I
    const-string/jumbo v4, "bottom"

    invoke-virtual {p0, v4}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I

    move-result v2

    .line 101
    .local v2, "bottom":I
    const-string/jumbo v4, "height"

    invoke-virtual {p0, v4}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 102
    .local v3, "height":I
    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    return v4

    .line 103
    .end local v1    # "bbh":I
    .end local v2    # "bottom":I
    .end local v3    # "height":I
    :catch_1
    move-exception v0

    .line 104
    sget-boolean v4, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v4, :cond_1

    .line 105
    const-string/jumbo v4, "Bottom or height attribute is not set or incorrect."

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 108
    :cond_1
    return v6
.end method

.method public getWidth()I
    .locals 4

    .prologue
    .line 182
    :try_start_0
    const-string/jumbo v2, "width"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "_":Ljava/lang/NumberFormatException;
    sget-boolean v2, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    .line 185
    const-string/jumbo v2, "Width attribute is not set or incorrect."

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v1

    .line 190
    .local v1, "bbw":I
    :try_start_1
    const-string/jumbo v2, "left"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    sub-int/2addr v1, v2

    .line 197
    :cond_1
    :goto_0
    :try_start_2
    const-string/jumbo v2, "right"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    sub-int/2addr v1, v2

    .line 203
    :cond_2
    :goto_1
    return v1

    .line 191
    :catch_1
    move-exception v0

    .line 192
    sget-boolean v2, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v2, :cond_1

    .line 193
    const-string/jumbo v2, "Left attribute is not set or incorrect."

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :catch_2
    move-exception v0

    .line 199
    sget-boolean v2, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v2, :cond_2

    .line 200
    const-string/jumbo v2, "Right attribute is not set or incorrect."

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "backgroundColor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 207
    const-string/jumbo v0, "backgroundColor"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public setFit(Ljava/lang/String;)V
    .locals 2
    .param p1, "fit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 120
    const-string/jumbo v0, "fill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const-string/jumbo v0, "meet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 120
    if-nez v0, :cond_0

    .line 122
    const-string/jumbo v0, "scroll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 120
    if-nez v0, :cond_0

    .line 123
    const-string/jumbo v0, "slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 120
    if-eqz v0, :cond_1

    .line 124
    :cond_0
    const-string/jumbo v0, "fit"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string/jumbo v0, "fit"

    const-string/jumbo v1, "hidden"

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 3
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 211
    const-string/jumbo v0, "height"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 233
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public setLeft(I)V
    .locals 2
    .param p1, "left"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 131
    const-string/jumbo v0, "left"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public setTop(I)V
    .locals 2
    .param p1, "top"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 135
    const-string/jumbo v0, "top"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public setWidth(I)V
    .locals 3
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 219
    const-string/jumbo v0, "width"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/mms/dom/smil/SmilElementImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 264
    const-string/jumbo v1, ": id="

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 264
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getId()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    const-string/jumbo v1, ", width="

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getWidth()I

    move-result v1

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    const-string/jumbo v1, ", height="

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getHeight()I

    move-result v1

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 267
    const-string/jumbo v1, ", left="

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 267
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getLeft()I

    move-result v1

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    const-string/jumbo v1, ", top="

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getTop()I

    move-result v1

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
