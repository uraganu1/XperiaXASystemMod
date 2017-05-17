.class public Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;
.super Lcom/android/mms/dom/smil/SmilElementImpl;
.source "SmilRootLayoutElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILRootLayoutElement;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lcom/android/mms/dom/smil/SmilDocumentImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private parseAbsoluteLength(Ljava/lang/String;)I
    .locals 3
    .param p1, "length"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 75
    const-string/jumbo v1, "px"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string/jumbo v1, "px"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 79
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v2
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "backgroundColor"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v1, "height"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "heightString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;->parseAbsoluteLength(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 49
    const-string/jumbo v1, "width"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "widthString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;->parseAbsoluteLength(Ljava/lang/String;)I

    move-result v1

    return v1
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
    .line 54
    const-string/jumbo v0, "backgroundColor"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
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
    .line 58
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

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
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
    .line 67
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

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
