.class public Lgov2/nist/core/NameValueList;
.super Ljava/lang/Object;
.source "NameValueList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lgov2/nist/core/NameValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x611edb317cd0ac13L


# instance fields
.field private hmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgov2/nist/core/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field private separator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ";"

    .line 63
    iput-object v0, p0, Lgov2/nist/core/NameValueList;->separator:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    .line 65
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "sync"    # Z

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ";"

    .line 68
    iput-object v0, p0, Lgov2/nist/core/NameValueList;->separator:Ljava/lang/String;

    .line 69
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 273
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 210
    new-instance v1, Lgov2/nist/core/NameValueList;

    invoke-direct {v1}, Lgov2/nist/core/NameValueList;-><init>()V

    .line 211
    .local v1, "retval":Lgov2/nist/core/NameValueList;
    iget-object v2, p0, Lgov2/nist/core/NameValueList;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgov2/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 213
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/core/NameValue;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    return-object v1

    .line 214
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/core/NameValue;

    invoke-virtual {v2}, Lgov2/nist/core/NameValue;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/core/NameValue;

    invoke-virtual {v1, v2}, Lgov2/nist/core/NameValueList;->set(Lgov2/nist/core/NameValue;)V

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 280
    iget-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 288
    iget-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "lcName":Ljava/lang/String;
    iget-object v1, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    return v2

    .line 201
    :cond_0
    iget-object v1, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const/4 v1, 0x1

    return v1
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 90
    iget-object v3, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    :cond_0
    return-object p1

    .line 91
    :cond_1
    iget-object v3, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 92
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/core/NameValue;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 95
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lgov2/nist/core/GenericObject;

    if-nez v3, :cond_2

    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lgov2/nist/core/NameValueList;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 96
    check-cast v0, Lgov2/nist/core/GenericObject;

    .line 97
    .local v0, "gobj":Lgov2/nist/core/GenericObject;
    invoke-virtual {v0, p1}, Lgov2/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lgov2/nist/core/NameValue;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "otherObject"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 139
    if-eqz p1, :cond_1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, p1

    .line 145
    check-cast v4, Lgov2/nist/core/NameValueList;

    .line 147
    .local v4, "other":Lgov2/nist/core/NameValueList;
    iget-object v5, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    iget-object v6, v4, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 150
    iget-object v5, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 152
    .local v1, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 160
    const/4 v5, 0x1

    return v5

    .line 140
    .end local v1    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "other":Lgov2/nist/core/NameValueList;
    :cond_1
    return v7

    .line 143
    :cond_2
    return v7

    .line 148
    .restart local v4    # "other":Lgov2/nist/core/NameValueList;
    :cond_3
    return v7

    .line 153
    .restart local v1    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lgov2/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov2/nist/core/NameValue;

    move-result-object v2

    .line 155
    .local v2, "nv1":Lgov2/nist/core/NameValue;
    iget-object v5, v4, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov2/nist/core/NameValue;

    .line 156
    .local v3, "nv2":Lgov2/nist/core/NameValue;
    if-eqz v3, :cond_5

    .line 158
    invoke-virtual {v3, v2}, Lgov2/nist/core/NameValue;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    return v7

    .line 157
    :cond_5
    return v7
.end method

.method public get(Ljava/lang/Object;)Lgov2/nist/core/NameValue;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 304
    iget-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/core/NameValue;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lgov2/nist/core/NameValueList;->get(Ljava/lang/Object;)Lgov2/nist/core/NameValue;

    move-result-object v0

    return-object v0
.end method

.method public getNameValue(Ljava/lang/String;)Lgov2/nist/core/NameValue;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/core/NameValue;

    return-object v0
.end method

.method public getNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 258
    invoke-virtual {p0, p1}, Lgov2/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 259
    .local v0, "val":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 260
    instance-of v1, v0, Lgov2/nist/core/GenericObject;

    if-nez v1, :cond_1

    .line 263
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 259
    :cond_0
    return-object v1

    .line 261
    :cond_1
    check-cast v0, Lgov2/nist/core/GenericObject;

    .end local v0    # "val":Ljava/lang/Object;
    invoke-virtual {v0}, Lgov2/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov2/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov2/nist/core/NameValue;

    move-result-object v0

    .line 168
    .local v0, "nv":Lgov2/nist/core/NameValue;
    if-nez v0, :cond_0

    .line 171
    return-object v2

    .line 169
    :cond_0
    invoke-virtual {v0}, Lgov2/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public hasNameValue(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lgov2/nist/core/NameValue;)Lgov2/nist/core/NameValue;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameValue"    # Lgov2/nist/core/NameValue;

    .prologue
    .line 320
    iget-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/core/NameValue;

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lgov2/nist/core/NameValue;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgov2/nist/core/NameValueList;->put(Ljava/lang/String;Lgov2/nist/core/NameValue;)Lgov2/nist/core/NameValue;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Lgov2/nist/core/NameValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Lgov2/nist/core/NameValue;>;"
    iget-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 325
    return-void
.end method

.method public remove(Ljava/lang/Object;)Lgov2/nist/core/NameValue;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 332
    iget-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/core/NameValue;

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lgov2/nist/core/NameValueList;->remove(Ljava/lang/Object;)Lgov2/nist/core/NameValue;

    move-result-object v0

    return-object v0
.end method

.method public set(Lgov2/nist/core/NameValue;)V
    .locals 2
    .param p1, "nv"    # Lgov2/nist/core/NameValue;

    .prologue
    .line 120
    iget-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Lgov2/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 127
    new-instance v0, Lgov2/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    .local v0, "nameValue":Lgov2/nist/core/NameValue;
    iget-object v1, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lgov2/nist/core/NameValueList;->separator:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lgov2/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lgov2/nist/core/NameValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lgov2/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
