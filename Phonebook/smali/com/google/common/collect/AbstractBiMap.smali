.class abstract Lcom/google/common/collect/AbstractBiMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "AbstractBiMap.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractBiMap$KeySet;,
        Lcom/google/common/collect/AbstractBiMap$ValueSet;,
        Lcom/google/common/collect/AbstractBiMap$EntrySet;,
        Lcom/google/common/collect/AbstractBiMap$Inverse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/BiMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Not needed in emulated source."
    .end annotation
.end field


# instance fields
.field private transient delegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient inverse:Lcom/google/common/collect/AbstractBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/AbstractBiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient valueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->removeFromBothMaps(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)V
    .locals 0
    .param p1, "oldValue"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->removeFromInverseMap(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "containedKey"    # Z
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/AbstractBiMap;->updateInverseMap(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/common/collect/AbstractBiMap",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "backward":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "forward":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TV;TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    .line 63
    iput-object p2, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap;)V
    .locals 0
    .param p1, "backward"    # Ljava/util/Map;
    .param p2, "forward"    # Lcom/google/common/collect/AbstractBiMap;

    .prologue
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap;-><init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "forward":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "backward":Ljava/util/Map;, "Ljava/util/Map<TV;TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap;->setDelegates(Ljava/util/Map;Ljava/util/Map;)V

    .line 56
    return-void
.end method

.method private putInBothMaps(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->checkKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p0, p2}, Lcom/google/common/collect/AbstractBiMap;->checkValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 123
    .local v0, "containedKey":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    return-object p2

    .line 126
    :cond_0
    if-eqz p3, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/google/common/collect/BiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 132
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/common/collect/AbstractBiMap;->updateInverseMap(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    .line 133
    return-object v1

    .line 129
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    const-string/jumbo v5, "value already present: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    invoke-static {v2, v5, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method private removeFromBothMaps(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractBiMap;->removeFromInverseMap(Ljava/lang/Object;)V

    .line 151
    return-object v0
.end method

.method private removeFromInverseMap(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method private updateInverseMap(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p2, "containedKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTV;TV;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p2, :cond_0

    .line 139
    invoke-direct {p0, p3}, Lcom/google/common/collect/AbstractBiMap;->removeFromInverseMap(Ljava/lang/Object;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method


# virtual methods
.method checkKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    return-object p1
.end method

.method checkValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    return-object p1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 167
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 168
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 166
    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 105
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->entrySet:Ljava/util/Set;

    .line 254
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractBiMap$EntrySet;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractBiMap$EntrySet;-><init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$EntrySet;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/AbstractBiMap;->putInBothMaps(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->keySet:Ljava/util/Set;

    .line 182
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractBiMap$KeySet;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractBiMap$KeySet;-><init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$KeySet;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/AbstractBiMap;->putInBothMaps(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 162
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/AbstractBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->removeFromBothMaps(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setDelegates(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "forward":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "backward":Ljava/util/Map;, "Ljava/util/Map<TV;TK;>;"
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 90
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 91
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 92
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 93
    if-eq p1, p2, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 94
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;

    .line 95
    new-instance v0, Lcom/google/common/collect/AbstractBiMap$Inverse;

    invoke-direct {v0, p2, p0, v3}, Lcom/google/common/collect/AbstractBiMap$Inverse;-><init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$Inverse;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    .line 88
    return-void

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0

    :cond_1
    move v0, v2

    .line 90
    goto :goto_1

    :cond_2
    move v1, v2

    .line 93
    goto :goto_2
.end method

.method setInverse(Lcom/google/common/collect/AbstractBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/AbstractBiMap",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    .local p1, "inverse":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TV;TK;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    .line 98
    return-void
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 217
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 222
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->valueSet:Ljava/util/Set;

    .line 223
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractBiMap$ValueSet;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractBiMap$ValueSet;-><init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$ValueSet;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap;->valueSet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
