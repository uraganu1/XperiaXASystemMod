.class public abstract Lgov2/nist/core/GenericObjectList;
.super Ljava/util/LinkedList;
.source "GenericObjectList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lgov2/nist/core/GenericObject;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field protected indentation:I

.field protected listName:Ljava/lang/String;

.field protected myClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private myListIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<+",
            "Lgov2/nist/core/GenericObject;",
            ">;"
        }
    .end annotation
.end field

.field protected separator:Ljava/lang/String;

.field private stringRep:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lgov2/nist/core/GenericObjectList;->listName:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 140
    iput-object v0, p0, Lgov2/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    const-string/jumbo v0, ";"

    .line 141
    iput-object v0, p0, Lgov2/nist/core/GenericObjectList;->separator:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public static isMySubclass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "other":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lgov2/nist/core/GenericObjectList;

    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addFirst(Lgov2/nist/core/GenericObject;)V
    .locals 1
    .param p1, "objToAdd"    # Lgov2/nist/core/GenericObject;

    .prologue
    .line 297
    iget-object v0, p0, Lgov2/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 300
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 302
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    goto :goto_0
.end method

.method public bridge synthetic addFirst(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Lgov2/nist/core/GenericObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lgov2/nist/core/GenericObjectList;->addFirst(Lgov2/nist/core/GenericObject;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 125
    invoke-super {p0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/core/GenericObjectList;

    .line 126
    .local v2, "retval":Lgov2/nist/core/GenericObjectList;
    invoke-virtual {v2}, Lgov2/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov2/nist/core/GenericObject;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    return-object v2

    .line 127
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov2/nist/core/GenericObject;

    invoke-virtual {v3}, Lgov2/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/core/GenericObject;

    .line 128
    .local v1, "obj":Lgov2/nist/core/GenericObject;
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public encode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 336
    invoke-virtual {p0}, Lgov2/nist/core/GenericObjectList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 337
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 338
    .local v0, "encoding":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov2/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 339
    .local v2, "iterator":Ljava/util/ListIterator;
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 354
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .end local v0    # "encoding":Ljava/lang/StringBuffer;
    .end local v2    # "iterator":Ljava/util/ListIterator;
    :cond_0
    const-string/jumbo v4, ""

    .line 336
    return-object v4

    .line 349
    .restart local v0    # "encoding":Ljava/lang/StringBuffer;
    .restart local v2    # "iterator":Ljava/util/ListIterator;
    .local v3, "obj":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lgov2/nist/core/GenericObjectList;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 342
    .restart local v3    # "obj":Ljava/lang/Object;
    instance-of v4, v3, Lgov2/nist/core/GenericObject;

    if-nez v4, :cond_3

    .line 346
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_3
    move-object v1, v3

    .line 343
    check-cast v1, Lgov2/nist/core/GenericObject;

    .line 344
    .local v1, "gobj":Lgov2/nist/core/GenericObject;
    invoke-virtual {v1}, Lgov2/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 389
    if-eqz p1, :cond_2

    .line 390
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v5, p1

    .line 391
    check-cast v5, Lgov2/nist/core/GenericObjectList;

    .line 392
    .local v5, "that":Lgov2/nist/core/GenericObjectList;
    invoke-virtual {p0}, Lgov2/nist/core/GenericObjectList;->size()I

    move-result v6

    invoke-virtual {v5}, Lgov2/nist/core/GenericObjectList;->size()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 393
    invoke-virtual {p0}, Lgov2/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 394
    .local v3, "myIterator":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 406
    invoke-virtual {v5}, Lgov2/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 407
    .local v1, "hisIterator":Ljava/util/ListIterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 419
    const/4 v6, 0x1

    return v6

    .line 389
    .end local v1    # "hisIterator":Ljava/util/ListIterator;
    .end local v3    # "myIterator":Ljava/util/ListIterator;
    .end local v5    # "that":Lgov2/nist/core/GenericObjectList;
    :cond_2
    return v8

    .line 390
    :cond_3
    return v8

    .line 392
    .restart local v5    # "that":Lgov2/nist/core/GenericObjectList;
    :cond_4
    return v8

    .line 395
    .restart local v3    # "myIterator":Ljava/util/ListIterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 396
    .local v4, "myobj":Ljava/lang/Object;
    invoke-virtual {v5}, Lgov2/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 399
    .restart local v1    # "hisIterator":Ljava/util/ListIterator;
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 400
    .local v2, "hisobj":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 404
    .end local v2    # "hisobj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 403
    .local v0, "ex":Ljava/util/NoSuchElementException;
    return v8

    .line 408
    .end local v0    # "ex":Ljava/util/NoSuchElementException;
    .end local v4    # "myobj":Ljava/lang/Object;
    :cond_6
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 409
    .restart local v2    # "hisobj":Ljava/lang/Object;
    invoke-virtual {p0}, Lgov2/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 412
    :goto_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 413
    .restart local v4    # "myobj":Ljava/lang/Object;
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 417
    .end local v4    # "myobj":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 416
    .restart local v0    # "ex":Ljava/util/NoSuchElementException;
    return v8
.end method

.method public hashCode()I
    .locals 1

    .prologue
    const/16 v0, 0x2a

    .line 379
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Lgov2/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
