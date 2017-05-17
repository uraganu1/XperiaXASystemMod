.class public Lcom/android/mms/dom/NodeListImpl;
.super Ljava/lang/Object;
.source "NodeListImpl.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field private mDeepSearch:Z

.field private mRootNode:Lorg/w3c/dom/Node;

.field private mSearchNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field private mTagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/mms/dom/NodeListImpl;->mStaticNodes:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "rootNode"    # Lorg/w3c/dom/Node;
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "deepSearch"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/mms/dom/NodeListImpl;->mRootNode:Lorg/w3c/dom/Node;

    .line 51
    iput-object p2, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    .line 52
    iput-boolean p3, p0, Lcom/android/mms/dom/NodeListImpl;->mDeepSearch:Z

    .line 49
    return-void
.end method

.method private fillList(Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mRootNode:Lorg/w3c/dom/Node;

    if-ne p1, v0, :cond_2

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    .line 117
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 121
    :goto_1
    if-eqz p1, :cond_6

    .line 122
    iget-boolean v0, p0, Lcom/android/mms/dom/NodeListImpl;->mDeepSearch:Z

    if-eqz v0, :cond_4

    .line 123
    invoke-direct {p0, p1}, Lcom/android/mms/dom/NodeListImpl;->fillList(Lorg/w3c/dom/Node;)V

    .line 129
    :cond_1
    :goto_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/dom/NodeListImpl;->mTagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    :cond_6
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mStaticNodes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mRootNode:Lorg/w3c/dom/Node;

    invoke-direct {p0, v0}, Lcom/android/mms/dom/NodeListImpl;->fillList(Lorg/w3c/dom/Node;)V

    .line 70
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/mms/dom/NodeListImpl;->mStaticNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "node":Lorg/w3c/dom/Node;
    iget-object v3, p0, Lcom/android/mms/dom/NodeListImpl;->mStaticNodes:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/android/mms/dom/NodeListImpl;->mRootNode:Lorg/w3c/dom/Node;

    invoke-direct {p0, v3}, Lcom/android/mms/dom/NodeListImpl;->fillList(Lorg/w3c/dom/Node;)V

    .line 81
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/dom/NodeListImpl;->mSearchNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .end local v2    # "node":Lorg/w3c/dom/Node;
    :goto_0
    return-object v2

    .line 87
    .restart local v2    # "node":Lorg/w3c/dom/Node;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/dom/NodeListImpl;->mStaticNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .local v2, "node":Lorg/w3c/dom/Node;
    goto :goto_0

    .line 88
    .local v2, "node":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .line 82
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0
.end method
