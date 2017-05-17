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
    .locals 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    .line 40
    iget-object v0, p1, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    return-void

    .line 40
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 41
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private validate(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 100
    if-eqz p2, :cond_1

    .line 104
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$1;->$SwitchMap$com$sonymobile$generativeartwork$settings$LayerSettings$Item:[I

    invoke-virtual {p1}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v3, v1

    move v4, v1

    move v5, v1

    .line 151
    :goto_0
    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 161
    :goto_1
    return v0

    .line 101
    :cond_1
    return v1

    .line 110
    :pswitch_0
    new-instance v0, Ljava/lang/Float;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v4, v5}, Ljava/lang/Float;-><init>(D)V

    move v3, v1

    move v4, v1

    move v5, v1

    .line 111
    goto :goto_0

    .line 114
    :pswitch_1
    new-array v3, v5, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 117
    array-length v4, v3

    move-object v0, p2

    .line 118
    check-cast v0, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    check-cast v0, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    array-length v0, v0

    move v5, v2

    move v7, v0

    move-object v0, v3

    move v3, v7

    .line 120
    goto :goto_0

    .line 123
    :pswitch_2
    new-array v3, v5, [F

    .line 126
    array-length v4, v3

    move-object v0, p2

    .line 127
    check-cast v0, [F

    check-cast v0, [F

    array-length v0, v0

    move v5, v2

    move v7, v0

    move-object v0, v3

    move v3, v7

    .line 129
    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    .line 132
    new-array v3, v0, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 135
    array-length v4, v3

    move-object v0, p2

    .line 136
    check-cast v0, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    check-cast v0, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    array-length v0, v0

    move v5, v2

    move v7, v0

    move-object v0, v3

    move v3, v7

    .line 138
    goto :goto_0

    .line 141
    :pswitch_4
    new-array v3, v2, [I

    .line 144
    array-length v4, v3

    move-object v0, p2

    .line 145
    check-cast v0, [I

    check-cast v0, [I

    array-length v0, v0

    move v5, v2

    move v7, v0

    move-object v0, v3

    move v3, v7

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 152
    if-nez v5, :cond_3

    move v0, v2

    .line 157
    goto :goto_1

    .line 153
    :cond_3
    if-ge v3, v4, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 154
    goto :goto_1

    .line 104
    nop

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

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public containsKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The object for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not presented in the map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validate(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    return-void

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The object of key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not acceptable for such key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
