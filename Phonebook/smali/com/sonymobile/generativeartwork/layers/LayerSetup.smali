.class public final Lcom/sonymobile/generativeartwork/layers/LayerSetup;
.super Ljava/lang/Object;
.source "LayerSetup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/generativeartwork/layers/LayerSetup$1;
    }
.end annotation


# static fields
.field private static final START_COLOR_ID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private static init(Ljava/util/ArrayList;Lcom/sonymobile/generativeartwork/settings/LayerSettings;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;",
            ">;",
            "Lcom/sonymobile/generativeartwork/settings/LayerSettings;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->PaletteColors:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p1, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 79
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->PaletteColors:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p1, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    .line 80
    aget v1, v0, v1

    .line 81
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    return-void

    .line 81
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    .line 82
    sget-object v3, Lcom/sonymobile/generativeartwork/layers/LayerSetup$1;->$SwitchMap$com$sonymobile$generativeartwork$layers$LayerType:[I

    invoke-interface {v0}, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;->getType()Lcom/sonymobile/generativeartwork/layers/LayerType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/generativeartwork/layers/LayerType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 84
    :pswitch_0
    check-cast v0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/generativeartwork/layers/LayerSetup;->initBackground(Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;ILcom/sonymobile/generativeartwork/settings/LayerSettings;)V

    goto :goto_0

    .line 87
    :pswitch_1
    check-cast v0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/generativeartwork/layers/LayerSetup;->initArtisticLayer(Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;ILcom/sonymobile/generativeartwork/settings/LayerSettings;)V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static initArtisticLayer(Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;ILcom/sonymobile/generativeartwork/settings/LayerSettings;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 112
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 113
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 114
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterXOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 115
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterYOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 116
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterScale:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 118
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    check-cast v0, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 120
    array-length v1, v0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v1, v4, v2

    const/4 v1, 0x4

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    .line 121
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 124
    invoke-virtual {p0, v1}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->setColor([[F)V

    .line 125
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterXOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterYOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterScale:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->setArtTrasnformation(FFFF)V

    .line 129
    return-void

    .line 122
    :cond_0
    aget-object v3, v0, v2

    aget-object v4, v1, v2

    invoke-virtual {v3, p1, v4}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->transform(I[F)[F

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static initBackground(Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;ILcom/sonymobile/generativeartwork/settings/LayerSettings;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 95
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 96
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientRanges:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 97
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 99
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    check-cast v0, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 101
    array-length v1, v0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v1, v4, v2

    const/4 v1, 0x4

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    .line 102
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 105
    invoke-virtual {p0, v1}, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->setColor([[F)V

    .line 106
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientRanges:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    invoke-virtual {p0, v0}, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->setGradientRanges([F)V

    .line 107
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->setGradientAngle(F)V

    .line 108
    return-void

    .line 103
    :cond_0
    aget-object v3, v0, v2

    aget-object v4, v1, v2

    invoke-virtual {v3, p1, v4}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->transform(I[F)[F

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static setSettings(Ljava/util/ArrayList;Lcom/sonymobile/generativeartwork/settings/LayerSettings;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;",
            ">;",
            "Lcom/sonymobile/generativeartwork/settings/LayerSettings;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v8, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 28
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->PaletteColors:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p1, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 29
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p1, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 30
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p1, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 33
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->PaletteColors:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p1, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    .line 34
    invoke-static {p0, p1}, Lcom/sonymobile/generativeartwork/layers/LayerSetup;->init(Ljava/util/ArrayList;Lcom/sonymobile/generativeartwork/settings/LayerSettings;)V

    .line 36
    sget-object v1, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p1, v1}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    check-cast v1, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 38
    sget-object v2, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p1, v2}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    check-cast v2, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 42
    array-length v3, v0

    array-length v4, v1

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v7, v8, [I

    aput v3, v7, v6

    aput v4, v7, v9

    aput v11, v7, v10

    invoke-static {v5, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[F

    .line 43
    array-length v4, v0

    array-length v5, v2

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v8, v8, [I

    aput v4, v8, v6

    aput v5, v8, v9

    aput v11, v8, v10

    invoke-static {v7, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[F

    move v5, v6

    .line 45
    :goto_0
    array-length v7, v0

    if-lt v5, v7, :cond_0

    .line 54
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 66
    return-void

    :cond_0
    move v7, v6

    .line 46
    :goto_2
    array-length v8, v1

    if-lt v7, v8, :cond_1

    move v7, v6

    .line 49
    :goto_3
    array-length v8, v2

    if-lt v7, v8, :cond_2

    .line 45
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 47
    :cond_1
    aget-object v8, v1, v7

    aget v9, v0, v5

    aget-object v10, v3, v5

    aget-object v10, v10, v7

    invoke-virtual {v8, v9, v10}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->transform(I[F)[F

    .line 46
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 50
    :cond_2
    aget-object v8, v2, v7

    aget v9, v0, v5

    aget-object v10, v4, v5

    aget-object v10, v10, v7

    invoke-virtual {v8, v9, v10}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->transform(I[F)[F

    .line 49
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 54
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    .line 55
    sget-object v2, Lcom/sonymobile/generativeartwork/layers/LayerSetup$1;->$SwitchMap$com$sonymobile$generativeartwork$layers$LayerType:[I

    invoke-interface {v0}, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;->getType()Lcom/sonymobile/generativeartwork/layers/LayerType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/generativeartwork/layers/LayerType;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 57
    :pswitch_0
    check-cast v0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;

    .line 58
    invoke-virtual {v0, v3}, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->setColorPalette([[[F)V

    goto :goto_1

    .line 61
    :pswitch_1
    check-cast v0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    .line 62
    invoke-virtual {v0, v4}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->setColorPalette([[[F)V

    goto :goto_1

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
