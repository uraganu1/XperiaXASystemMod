.class public abstract Lcom/android/mms/dom/smil/ElementTimeImpl;
.super Ljava/lang/Object;
.source "ElementTimeImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/ElementTime;


# instance fields
.field final mSmilElement:Lorg/w3c/dom/smil/SMILElement;


# direct methods
.method constructor <init>(Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0
    .param p1, "element"    # Lorg/w3c/dom/smil/SMILElement;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    .line 48
    return-void
.end method


# virtual methods
.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .locals 7

    .prologue
    .line 73
    iget-object v4, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v5, "begin"

    invoke-interface {v4, v5}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "beginTimeStringList":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "beginTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/smil/Time;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 80
    :try_start_0
    new-instance v4, Lcom/android/mms/dom/smil/TimeImpl;

    aget-object v5, v1, v3

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getBeginConstraints()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 105
    new-instance v4, Lcom/android/mms/dom/smil/TimeImpl;

    const-string/jumbo v5, "0"

    const/16 v6, 0xff

    invoke-direct {v4, v5, v6}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_1
    new-instance v4, Lcom/android/mms/dom/smil/TimeListImpl;

    invoke-direct {v4, v0}, Lcom/android/mms/dom/smil/TimeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v4

    .line 81
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1
.end method

.method getBeginConstraints()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0xff

    return v0
.end method

.method public getDur()F
    .locals 5

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "dur":F
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v4, "dur"

    invoke-interface {v3, v4}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "durString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 115
    invoke-static {v1}, Lcom/android/mms/dom/smil/TimeImpl;->parseClockValue(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v0, v3, v4

    .line 120
    .end local v1    # "durString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 117
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public getEnd()Lorg/w3c/dom/smil/TimeList;
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v3, "endTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/smil/Time;>;"
    iget-object v7, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v8, "end"

    invoke-interface {v7, v8}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "endTimeStringList":[Ljava/lang/String;
    array-length v6, v4

    .line 128
    .local v6, "len":I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    aget-object v7, v4, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 130
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 132
    :try_start_0
    new-instance v7, Lcom/android/mms/dom/smil/TimeImpl;

    aget-object v8, v4, v5

    .line 133
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getEndConstraints()I

    move-result v9

    .line 132
    invoke-direct {v7, v8, v9}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v7, "Malformed time value."

    invoke-static {v7, v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 142
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getDur()F

    move-result v1

    .line 146
    .local v1, "duration":F
    const/4 v7, 0x0

    cmpg-float v7, v1, v7

    if-gez v7, :cond_3

    .line 147
    new-instance v7, Lcom/android/mms/dom/smil/TimeImpl;

    const-string/jumbo v8, "indefinite"

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getEndConstraints()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v1    # "duration":F
    :cond_2
    new-instance v7, Lcom/android/mms/dom/smil/TimeListImpl;

    invoke-direct {v7, v3}, Lcom/android/mms/dom/smil/TimeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v7

    .line 150
    .restart local v1    # "duration":F
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    .line 151
    .local v0, "begin":Lorg/w3c/dom/smil/TimeList;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 152
    new-instance v7, Lcom/android/mms/dom/smil/TimeImpl;

    .line 154
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v5}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v10

    float-to-double v12, v1

    add-double/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 155
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getEndConstraints()I

    move-result v9

    .line 152
    invoke-direct {v7, v8, v9}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method getEndConstraints()I
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0xff

    return v0
.end method

.method public getFill()S
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    iget-object v2, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v3, "fill"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "fill":Ljava/lang/String;
    const-string/jumbo v2, "freeze"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    return v5

    .line 167
    :cond_0
    const-string/jumbo v2, "remove"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    return v4

    .line 169
    :cond_1
    const-string/jumbo v2, "hold"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    return v5

    .line 172
    :cond_2
    const-string/jumbo v2, "transition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    return v5

    .line 175
    :cond_3
    const-string/jumbo v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 181
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getFillDefault()S

    move-result v1

    .line 182
    .local v1, "fillDefault":S
    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 183
    return v1

    .line 197
    .end local v1    # "fillDefault":S
    :cond_4
    iget-object v2, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v3, "dur"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 198
    iget-object v2, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v3, "end"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 199
    iget-object v2, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v3, "repeatCount"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 200
    iget-object v2, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v3, "repeatDur"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 201
    return v5

    .line 203
    :cond_5
    return v4
.end method

.method public getFillDefault()S
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 208
    iget-object v2, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v3, "fillDefault"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "fillDefault":Ljava/lang/String;
    const-string/jumbo v2, "remove"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    const/4 v2, 0x0

    return v2

    .line 211
    :cond_0
    const-string/jumbo v2, "freeze"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    return v4

    .line 213
    :cond_1
    const-string/jumbo v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    return v5

    .line 215
    :cond_2
    const-string/jumbo v2, "hold"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 217
    return v4

    .line 218
    :cond_3
    const-string/jumbo v2, "transition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 220
    return v4

    .line 228
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getParentElementTime()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    .line 229
    .local v1, "parent":Lorg/w3c/dom/smil/ElementTime;
    if-nez v1, :cond_5

    .line 234
    return v5

    .line 236
    :cond_5
    check-cast v1, Lcom/android/mms/dom/smil/ElementTimeImpl;

    .end local v1    # "parent":Lorg/w3c/dom/smil/ElementTime;
    invoke-virtual {v1}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getFillDefault()S

    move-result v2

    return v2
.end method

.method abstract getParentElementTime()Lorg/w3c/dom/smil/ElementTime;
.end method

.method public setDur(F)V
    .locals 4
    .param p1, "dur"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v1, "dur"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method
