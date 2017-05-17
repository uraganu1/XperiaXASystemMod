.class public Lgov2/nist/core/DuplicateNameValueList;
.super Ljava/lang/Object;
.source "DuplicateNameValueList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x4ddf7598584c3ad8L


# instance fields
.field private nameValueMap:Lgov2/nist/core/MultiValueMapImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgov2/nist/core/MultiValueMapImpl",
            "<",
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
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lgov2/nist/core/MultiValueMapImpl;

    invoke-direct {v0}, Lgov2/nist/core/MultiValueMapImpl;-><init>()V

    iput-object v0, p0, Lgov2/nist/core/DuplicateNameValueList;->nameValueMap:Lgov2/nist/core/MultiValueMapImpl;

    const-string/jumbo v0, ";"

    .line 52
    iput-object v0, p0, Lgov2/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 186
    new-instance v1, Lgov2/nist/core/DuplicateNameValueList;

    invoke-direct {v1}, Lgov2/nist/core/DuplicateNameValueList;-><init>()V

    .line 187
    .local v1, "retval":Lgov2/nist/core/DuplicateNameValueList;
    iget-object v2, p0, Lgov2/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgov2/nist/core/DuplicateNameValueList;->setSeparator(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lgov2/nist/core/DuplicateNameValueList;->nameValueMap:Lgov2/nist/core/MultiValueMapImpl;

    invoke-virtual {v2}, Lgov2/nist/core/MultiValueMapImpl;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 189
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/core/NameValue;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    return-object v1

    .line 190
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/core/NameValue;

    invoke-virtual {v2}, Lgov2/nist/core/NameValue;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/core/NameValue;

    invoke-virtual {v1, v2}, Lgov2/nist/core/DuplicateNameValueList;->set(Lgov2/nist/core/NameValue;)V

    goto :goto_0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/core/DuplicateNameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 72
    iget-object v3, p0, Lgov2/nist/core/DuplicateNameValueList;->nameValueMap:Lgov2/nist/core/MultiValueMapImpl;

    invoke-virtual {v3}, Lgov2/nist/core/MultiValueMapImpl;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    :cond_0
    return-object p1

    .line 73
    :cond_1
    iget-object v3, p0, Lgov2/nist/core/DuplicateNameValueList;->nameValueMap:Lgov2/nist/core/MultiValueMapImpl;

    invoke-virtual {v3}, Lgov2/nist/core/MultiValueMapImpl;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 74
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/core/NameValue;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 77
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lgov2/nist/core/GenericObject;

    if-nez v3, :cond_2

    .line 81
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    iget-object v3, p0, Lgov2/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 78
    check-cast v0, Lgov2/nist/core/GenericObject;

    .line 79
    .local v0, "gobj":Lgov2/nist/core/GenericObject;
    invoke-virtual {v0, p1}, Lgov2/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "otherObject"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 121
    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, p1

    .line 127
    check-cast v4, Lgov2/nist/core/DuplicateNameValueList;

    .line 129
    .local v4, "other":Lgov2/nist/core/DuplicateNameValueList;
    iget-object v5, p0, Lgov2/nist/core/DuplicateNameValueList;->nameValueMap:Lgov2/nist/core/MultiValueMapImpl;

    invoke-virtual {v5}, Lgov2/nist/core/MultiValueMapImpl;->size()I

    move-result v5

    iget-object v6, v4, Lgov2/nist/core/DuplicateNameValueList;->nameValueMap:Lgov2/nist/core/MultiValueMapImpl;

    invoke-virtual {v6}, Lgov2/nist/core/MultiValueMapImpl;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 132
    iget-object v5, p0, Lgov2/nist/core/DuplicateNameValueList;->nameValueMap:Lgov2/nist/core/MultiValueMapImpl;

    invoke-virtual {v5}, Lgov2/nist/core/MultiValueMapImpl;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 134
    .local v1, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 142
    const/4 v5, 0x1

    return v5

    .line 122
    .end local v1    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "other":Lgov2/nist/core/DuplicateNameValueList;
    :cond_1
    return v7

    .line 125
    :cond_2
    return v7

    .line 130
    .restart local v4    # "other":Lgov2/nist/core/DuplicateNameValueList;
    :cond_3
    return v7

    .line 135
    .restart local v1    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lgov2/nist/core/DuplicateNameValueList;->getNameValue(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 137
    .local v2, "nv1":Ljava/util/Collection;
    iget-object v5, v4, Lgov2/nist/core/DuplicateNameValueList;->nameValueMap:Lgov2/nist/core/MultiValueMapImpl;

    invoke-virtual {v5, v0}, Lgov2/nist/core/MultiValueMapImpl;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 138
    .local v3, "nv2":Ljava/util/Collection;
    if-eqz v3, :cond_5

    .line 140
    invoke-interface {v3, v2}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    return v7

    .line 139
    :cond_5
    return v7
.end method

.method public getNameValue(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lgov2/nist/core/DuplicateNameValueList;->nameValueMap:Lgov2/nist/core/MultiValueMapImpl;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov2/nist/core/MultiValueMapImpl;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lgov2/nist/core/DuplicateNameValueList;->nameValueMap:Lgov2/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov2/nist/core/MultiValueMapImpl;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lgov2/nist/core/DuplicateNameValueList;->nameValueMap:Lgov2/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov2/nist/core/MultiValueMapImpl;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public set(Lgov2/nist/core/NameValue;)V
    .locals 2
    .param p1, "nv"    # Lgov2/nist/core/NameValue;

    .prologue
    .line 102
    iget-object v0, p0, Lgov2/nist/core/DuplicateNameValueList;->nameValueMap:Lgov2/nist/core/MultiValueMapImpl;

    invoke-virtual {p1}, Lgov2/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lgov2/nist/core/MultiValueMapImpl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 103
    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lgov2/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lgov2/nist/core/DuplicateNameValueList;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
