.class public final Lcom/sonymobile/generativeartwork/layers/LayerSetup;
.super Ljava/lang/Object;
.source "LayerSetup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/generativeartwork/layers/LayerSetup$1;
    }
.end annotation


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
    .locals 6
    .param p1, "settings"    # Lcom/sonymobile/generativeartwork/settings/LayerSettings;
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
    .local p0, "layers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;>;"
    const/4 v5, 0x0

    .line 76
    sget-object v4, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->PaletteColors:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p1, v4}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 79
    sget-object v4, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->PaletteColors:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p1, v4}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    move-object v2, v4

    check-cast v2, [I

    .line 80
    .local v2, "palette":[I
    aget v3, v2, v5

    .line 81
    .local v3, "rgba":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    return-void

    .line 81
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    .line 82
    .local v1, "lr":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    sget-object v4, Lcom/sonymobile/generativeartwork/layers/LayerSetup$1;->$SwitchMap$com$sonymobile$generativeartwork$layers$LayerType:[I

    invoke-interface {v1}, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;->getType()Lcom/sonymobile/generativeartwork/layers/LayerType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/generativeartwork/layers/LayerType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 84
    :pswitch_0
    check-cast v1, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;

    .end local v1    # "lr":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    invoke-static {v1, v3, p1}, Lcom/sonymobile/generativeartwork/layers/LayerSetup;->initBackground(Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;ILcom/sonymobile/generativeartwork/settings/LayerSettings;)V

    goto :goto_0

    .line 87
    .restart local v1    # "lr":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :pswitch_1
    check-cast v1, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    .end local v1    # "lr":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    invoke-static {v1, v3, p1}, Lcom/sonymobile/generativeartwork/layers/LayerSetup;->initArtisticLayer(Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;ILcom/sonymobile/generativeartwork/settings/LayerSettings;)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static initArtisticLayer(Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;ILcom/sonymobile/generativeartwork/settings/LayerSettings;)V
    .locals 7
    .param p0, "lr"    # Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;
    .param p1, "rgba"    # I
    .param p2, "settings"    # Lcom/sonymobile/generativeartwork/settings/LayerSettings;

    .prologue
    .line 112
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 113
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 114
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterXOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 115
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterYOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 116
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterScale:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 118
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    move-object v2, v3

    check-cast v2, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 120
    .local v2, "letterTransformations":[Lcom/sonymobile/generativeartwork/settings/ColorSettings;
    array-length v3, v2

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v3, 0x4

    const/4 v6, 0x1

    aput v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .local v0, "colors":[[F
    const/4 v1, 0x0

    .line 121
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->setColor([[F)V

    .line 125
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterXOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterYOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterScale:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->setArtTrasnformation(FFFF)V

    .line 129
    return-void

    .line 122
    :cond_0
    aget-object v3, v2, v1

    aget-object v4, v0, v1

    invoke-virtual {v3, p1, v4}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->transform(I[F)[F

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static initBackground(Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;ILcom/sonymobile/generativeartwork/settings/LayerSettings;)V
    .locals 7
    .param p0, "lr"    # Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;
    .param p1, "rgba"    # I
    .param p2, "settings"    # Lcom/sonymobile/generativeartwork/settings/LayerSettings;

    .prologue
    .line 95
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 96
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientRanges:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 97
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 99
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    move-object v1, v3

    check-cast v1, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 101
    .local v1, "gradientTransformations":[Lcom/sonymobile/generativeartwork/settings/ColorSettings;
    array-length v3, v1

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v3, 0x4

    const/4 v6, 0x1

    aput v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .local v0, "gradientColorPoints":[[F
    const/4 v2, 0x0

    .line 102
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->setColor([[F)V

    .line 106
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientRanges:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    check-cast v3, [F

    invoke-virtual {p0, v3}, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->setGradientRanges([F)V

    .line 107
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->setGradientAngle(F)V

    .line 108
    return-void

    .line 103
    :cond_0
    aget-object v3, v1, v2

    aget-object v4, v0, v2

    invoke-virtual {v3, p1, v4}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->transform(I[F)[F

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static setSettings(Ljava/util/ArrayList;Lcom/sonymobile/generativeartwork/settings/LayerSettings;)V
    .locals 17
    .param p1, "settings"    # Lcom/sonymobile/generativeartwork/settings/LayerSettings;
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
    .line 28
    .local p0, "layers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;>;"
    sget-object v12, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->PaletteColors:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 29
    sget-object v12, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 30
    sget-object v12, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 33
    sget-object v12, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->PaletteColors:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    move-object v11, v12

    check-cast v11, [I

    .line 34
    .local v11, "palette":[I
    invoke-static/range {p0 .. p1}, Lcom/sonymobile/generativeartwork/layers/LayerSetup;->init(Ljava/util/ArrayList;Lcom/sonymobile/generativeartwork/settings/LayerSettings;)V

    .line 36
    sget-object v12, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    move-object v5, v12

    check-cast v5, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 38
    .local v5, "gradientTransformations":[Lcom/sonymobile/generativeartwork/settings/ColorSettings;
    sget-object v12, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    move-object v9, v12

    check-cast v9, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 42
    .local v9, "letterTransformations":[Lcom/sonymobile/generativeartwork/settings/ColorSettings;
    array-length v12, v11

    array-length v13, v5

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x3

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v12, v15, v16

    const/4 v12, 0x1

    aput v13, v15, v12

    const/4 v12, 0x4

    const/4 v13, 0x2

    aput v12, v15, v13

    invoke-static {v14, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[F

    .line 43
    .local v3, "cyclingGradients":[[[F
    array-length v12, v11

    array-length v13, v9

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x3

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v12, v15, v16

    const/4 v12, 0x1

    aput v13, v15, v12

    const/4 v12, 0x4

    const/4 v13, 0x2

    aput v12, v15, v13

    invoke-static {v14, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[F

    .local v4, "cyclingLettersClrs":[[[F
    const/4 v6, 0x0

    .line 45
    .local v6, "i":I
    :goto_0
    array-length v12, v11

    if-lt v6, v12, :cond_0

    .line 54
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_3

    .line 66
    return-void

    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v8, 0x0

    .line 46
    .local v8, "j":I
    :goto_2
    array-length v12, v5

    if-lt v8, v12, :cond_1

    const/4 v8, 0x0

    .line 49
    :goto_3
    array-length v12, v9

    if-lt v8, v12, :cond_2

    .line 45
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 47
    :cond_1
    aget-object v12, v5, v8

    aget v13, v11, v6

    aget-object v14, v3, v6

    aget-object v14, v14, v8

    invoke-virtual {v12, v13, v14}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->transform(I[F)[F

    .line 46
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 50
    :cond_2
    aget-object v12, v9, v8

    aget v13, v11, v6

    aget-object v14, v4, v6

    aget-object v14, v14, v8

    invoke-virtual {v12, v13, v14}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->transform(I[F)[F

    .line 49
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 54
    .end local v8    # "j":I
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    .line 55
    .local v10, "lr":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    sget-object v12, Lcom/sonymobile/generativeartwork/layers/LayerSetup$1;->$SwitchMap$com$sonymobile$generativeartwork$layers$LayerType:[I

    invoke-interface {v10}, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;->getType()Lcom/sonymobile/generativeartwork/layers/LayerType;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonymobile/generativeartwork/layers/LayerType;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object v2, v10

    .line 57
    check-cast v2, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;

    .line 58
    .local v2, "bgLr":Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;
    invoke-virtual {v2, v3}, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->setColorPalette([[[F)V

    goto :goto_1

    .end local v2    # "bgLr":Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;
    :pswitch_1
    move-object v1, v10

    .line 61
    check-cast v1, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    .line 62
    .local v1, "artLr":Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;
    invoke-virtual {v1, v4}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->setColorPalette([[[F)V

    goto :goto_1

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
