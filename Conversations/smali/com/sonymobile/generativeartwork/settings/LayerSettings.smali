.class public Lcom/sonymobile/generativeartwork/settings/LayerSettings;
.super Ljava/lang/Object;
.source "LayerSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/generativeartwork/settings/LayerSettings$1;,
        Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;
    }
.end annotation


# instance fields
.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/generativeartwork/settings/LayerSettings;)V
    .locals 5
    .param p1, "original"    # Lcom/sonymobile/generativeartwork/settings/LayerSettings;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    .line 40
    iget-object v2, p1, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    return-void

    .line 40
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 41
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private validate(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "key"    # Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x0

    .line 93
    const/4 v4, 0x0

    .line 94
    .local v4, "result":Z
    const/4 v2, 0x0

    .local v2, "isArrayType":Z
    const/4 v3, 0x0

    .local v3, "requestedLength":I
    const/4 v0, 0x0

    .local v0, "actualLength":I
    const/4 v1, 0x0

    .line 100
    .local v1, "example":Ljava/lang/Object;
    if-eqz p2, :cond_1

    .line 104
    sget-object v8, Lcom/sonymobile/generativeartwork/settings/LayerSettings$1;->$SwitchMap$com$sonymobile$generativeartwork$settings$LayerSettings$Item:[I

    invoke-virtual {p1}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 151
    .end local v1    # "example":Ljava/lang/Object;
    :goto_0
    if-nez v1, :cond_2

    .line 161
    :cond_0
    :goto_1
    return v4

    .line 101
    .restart local v1    # "example":Ljava/lang/Object;
    :cond_1
    return v8

    .line 110
    :pswitch_0
    new-instance v1, Ljava/lang/Float;

    .end local v1    # "example":Ljava/lang/Object;
    const-wide/16 v8, 0x0

    invoke-direct {v1, v8, v9}, Ljava/lang/Float;-><init>(D)V

    .restart local v1    # "example":Ljava/lang/Object;
    goto :goto_0

    .line 114
    :pswitch_1
    new-array v7, v10, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 115
    .local v7, "type":[Lcom/sonymobile/generativeartwork/settings/ColorSettings;
    move-object v1, v7

    .line 116
    const/4 v2, 0x1

    .line 117
    array-length v3, v7

    move-object v8, p2

    .line 118
    check-cast v8, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    check-cast v8, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    array-length v0, v8

    goto :goto_0

    .line 123
    .end local v7    # "type":[Lcom/sonymobile/generativeartwork/settings/ColorSettings;
    :pswitch_2
    new-array v5, v10, [F

    .line 124
    .local v5, "type":[F
    move-object v1, v5

    .line 125
    const/4 v2, 0x1

    .line 126
    array-length v3, v5

    move-object v8, p2

    .line 127
    check-cast v8, [F

    check-cast v8, [F

    array-length v0, v8

    goto :goto_0

    .end local v5    # "type":[F
    :pswitch_3
    const/4 v8, 0x2

    .line 132
    new-array v7, v8, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 133
    .restart local v7    # "type":[Lcom/sonymobile/generativeartwork/settings/ColorSettings;
    move-object v1, v7

    .line 134
    const/4 v2, 0x1

    .line 135
    array-length v3, v7

    move-object v8, p2

    .line 136
    check-cast v8, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    check-cast v8, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    array-length v0, v8

    goto :goto_0

    .end local v7    # "type":[Lcom/sonymobile/generativeartwork/settings/ColorSettings;
    :pswitch_4
    const/4 v8, 0x1

    .line 141
    new-array v6, v8, [I

    .line 142
    .local v6, "type":[I
    move-object v1, v6

    .line 143
    const/4 v2, 0x1

    .line 144
    array-length v3, v6

    move-object v8, p2

    .line 145
    check-cast v8, [I

    check-cast v8, [I

    array-length v0, v8

    goto :goto_0

    .line 151
    .end local v1    # "example":Ljava/lang/Object;
    .end local v6    # "type":[I
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_0

    .line 152
    if-nez v2, :cond_3

    .line 157
    const/4 v4, 0x1

    goto :goto_1

    .line 153
    :cond_3
    if-lt v0, v3, :cond_0

    .line 154
    const/4 v4, 0x1

    goto :goto_1

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public containsKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Z
    .locals 1
    .param p1, "key"    # Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V
    .locals 4
    .param p1, "key"    # Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The object for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not presented in the map"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, "testObj":Ljava/lang/Object;
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validate(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    return-void

    .line 69
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The object of key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not acceptable for such key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
