.class public abstract Lcom/android/mms/dom/smil/ElementSequentialTimeContainerImpl;
.super Lcom/android/mms/dom/smil/ElementTimeContainerImpl;
.source "ElementSequentialTimeContainerImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/ElementSequentialTimeContainer;


# direct methods
.method constructor <init>(Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0
    .param p1, "element"    # Lorg/w3c/dom/smil/SMILElement;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .locals 4
    .param p1, "instant"    # F

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementSequentialTimeContainerImpl;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 51
    .local v0, "allChildren":Lorg/w3c/dom/NodeList;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v2, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 53
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v3}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v3

    sub-float/2addr p1, v3

    .line 54
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    .line 55
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v3, Lcom/android/mms/dom/NodeListImpl;

    invoke-direct {v3, v2}, Lcom/android/mms/dom/NodeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v3

    .line 52
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_1
    new-instance v3, Lcom/android/mms/dom/NodeListImpl;

    invoke-direct {v3, v2}, Lcom/android/mms/dom/NodeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v3
.end method

.method public getDur()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 63
    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;->getDur()F

    move-result v2

    .line 64
    .local v2, "dur":F
    cmpl-float v4, v2, v5

    if-nez v4, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementSequentialTimeContainerImpl;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 66
    .local v1, "children":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 67
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 68
    .local v0, "child":Lorg/w3c/dom/smil/ElementTime;
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 70
    const/high16 v4, -0x40800000    # -1.0f

    return v4

    .line 72
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v4

    add-float/2addr v2, v4

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "child":Lorg/w3c/dom/smil/ElementTime;
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v3    # "i":I
    :cond_1
    return v2
.end method
