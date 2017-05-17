.class public abstract Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;
.super Lcom/android/mms/dom/smil/ElementTimeContainerImpl;
.source "ElementParallelTimeContainerImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/ElementParallelTimeContainer;


# direct methods
.method constructor <init>(Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0
    .param p1, "element"    # Lorg/w3c/dom/smil/SMILElement;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .locals 22
    .param p1, "instant"    # F

    .prologue
    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v3, "activeChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 121
    .local v7, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    .line 122
    .local v8, "childrenLen":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v8, :cond_5

    .line 123
    const-wide/16 v14, 0x0

    .line 124
    .local v14, "maxOffset":D
    const/4 v2, 0x0

    .line 125
    .local v2, "active":Z
    invoke-interface {v7, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/smil/ElementTime;

    .line 127
    .local v6, "child":Lorg/w3c/dom/smil/ElementTime;
    invoke-interface {v6}, Lorg/w3c/dom/smil/ElementTime;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v5

    .line 128
    .local v5, "beginList":Lorg/w3c/dom/smil/TimeList;
    invoke-interface {v5}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v13

    .line 129
    .local v13, "len":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    if-ge v12, v13, :cond_1

    .line 130
    invoke-interface {v5, v12}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v4

    .line 131
    .local v4, "begin":Lorg/w3c/dom/smil/Time;
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 132
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v18

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v16, v18, v20

    .line 133
    .local v16, "resolvedOffset":D
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v16, v18

    if-gtz v18, :cond_0

    cmpl-double v18, v16, v14

    if-ltz v18, :cond_0

    .line 134
    move-wide/from16 v14, v16

    .line 135
    const/4 v2, 0x1

    .line 129
    .end local v16    # "resolvedOffset":D
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 140
    .end local v4    # "begin":Lorg/w3c/dom/smil/Time;
    :cond_1
    invoke-interface {v6}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v10

    .line 141
    .local v10, "endList":Lorg/w3c/dom/smil/TimeList;
    invoke-interface {v10}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v13

    .line 142
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_3

    .line 143
    invoke-interface {v10, v12}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v9

    .line 144
    .local v9, "end":Lorg/w3c/dom/smil/Time;
    invoke-interface {v9}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 145
    invoke-interface {v9}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v18

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v16, v18, v20

    .line 146
    .restart local v16    # "resolvedOffset":D
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v16, v18

    if-gtz v18, :cond_2

    cmpl-double v18, v16, v14

    if-ltz v18, :cond_2

    .line 147
    move-wide/from16 v14, v16

    .line 148
    const/4 v2, 0x0

    .line 142
    .end local v16    # "resolvedOffset":D
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 153
    .end local v9    # "end":Lorg/w3c/dom/smil/Time;
    :cond_3
    if-eqz v2, :cond_4

    .line 154
    check-cast v6, Lorg/w3c/dom/Node;

    .end local v6    # "child":Lorg/w3c/dom/smil/ElementTime;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "active":Z
    .end local v5    # "beginList":Lorg/w3c/dom/smil/TimeList;
    .end local v10    # "endList":Lorg/w3c/dom/smil/TimeList;
    .end local v12    # "j":I
    .end local v13    # "len":I
    .end local v14    # "maxOffset":D
    :cond_5
    new-instance v18, Lcom/android/mms/dom/NodeListImpl;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/android/mms/dom/NodeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v18
.end method

.method public getDur()F
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;->getDur()F

    move-result v0

    .line 83
    .local v0, "dur":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getImplicitDuration()F

    move-result v0

    .line 86
    :cond_0
    return v0
.end method

.method public getEndSync()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v2, "endsync"

    invoke-interface {v1, v2}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "endsync":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 56
    :cond_0
    const-string/jumbo v1, "last"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->setEndSync(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v1, "last"

    return-object v1

    .line 59
    :cond_1
    const-string/jumbo v1, "first"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "last"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 60
    const-string/jumbo v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 59
    if-nez v1, :cond_2

    .line 60
    const-string/jumbo v1, "media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 59
    if-eqz v1, :cond_3

    .line 61
    :cond_2
    return-object v0

    .line 66
    :cond_3
    const-string/jumbo v1, "last"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->setEndSync(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v1, "last"

    return-object v1
.end method

.method public getImplicitDuration()F
    .locals 10

    .prologue
    .line 90
    const/high16 v2, -0x40800000    # -1.0f

    .line 91
    .local v2, "dur":F
    const-string/jumbo v8, "last"

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getEndSync()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 93
    .local v1, "children":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 94
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 95
    .local v0, "child":Lorg/w3c/dom/smil/ElementTime;
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v5

    .line 96
    .local v5, "endTimeList":Lorg/w3c/dom/smil/TimeList;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 97
    invoke-interface {v5, v7}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v4

    .line 98
    .local v4, "endTime":Lorg/w3c/dom/smil/Time;
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getTimeType()S

    move-result v8

    if-nez v8, :cond_0

    .line 100
    const/high16 v8, -0x40800000    # -1.0f

    return v8

    .line 102
    :cond_0
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 103
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v8

    double-to-float v3, v8

    .line 104
    .local v3, "end":F
    cmpl-float v8, v3, v2

    if-lez v8, :cond_1

    move v2, v3

    .line 96
    .end local v3    # "end":F
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 93
    .end local v4    # "endTime":Lorg/w3c/dom/smil/Time;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "child":Lorg/w3c/dom/smil/ElementTime;
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v5    # "endTimeList":Lorg/w3c/dom/smil/TimeList;
    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_3
    return v2
.end method

.method public setEndSync(Ljava/lang/String;)V
    .locals 3
    .param p1, "endSync"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 71
    const-string/jumbo v0, "first"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "last"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const-string/jumbo v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    const-string/jumbo v0, "media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v1, "endsync"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void

    .line 75
    :cond_1
    new-instance v0, Lorg/w3c/dom/DOMException;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported endsync value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
