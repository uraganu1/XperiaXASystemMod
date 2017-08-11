.class public final Lcom/sonymobile/generativeartwork/layers/LayerSetup;
.super Ljava/lang/Object;
.source "LayerSetup.java"


# static fields
.field private static synthetic -com_sonymobile_generativeartwork_layers_LayerTypeSwitchesValues:[I


# direct methods
.method private static synthetic -getcom_sonymobile_generativeartwork_layers_LayerTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonymobile/generativeartwork/layers/LayerSetup;->-com_sonymobile_generativeartwork_layers_LayerTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/generativeartwork/layers/LayerSetup;->-com_sonymobile_generativeartwork_layers_LayerTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/generativeartwork/layers/LayerType;->values()[Lcom/sonymobile/generativeartwork/layers/LayerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/generativeartwork/layers/LayerType;->ARTISTIC:Lcom/sonymobile/generativeartwork/layers/LayerType;

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/layers/LayerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/generativeartwork/layers/LayerType;->BACKGROUND:Lcom/sonymobile/generativeartwork/layers/LayerType;

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/layers/LayerType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/sonymobile/generativeartwork/layers/LayerSetup;->-com_sonymobile_generativeartwork_layers_LayerTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 76
    .local p0, "layers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;>;"
    sget-object v4, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->PaletteColors:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p1, v4}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V

    .line 79
    sget-object v4, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->PaletteColors:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p1, v4}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 80
    .local v2, "palette":[I
    const/4 v4, 0x0

    aget v3, v2, v4

    .line 81
    .local v3, "rgba":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "lr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    .line 82
    .local v0, "lr":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    invoke-static {}, Lcom/sonymobile/generativeartwork/layers/LayerSetup;->-getcom_sonymobile_generativeartwork_layers_LayerTypeSwitchesValues()[I

    move-result-object v4

    invoke-interface {v0}, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;->getType()Lcom/sonymobile/generativeartwork/layers/LayerType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/generativeartwork/layers/LayerType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 87
    :pswitch_0
    check-cast v0, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    .end local v0    # "lr":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    invoke-static {v0, v3, p1}, Lcom/sonymobile/generativeartwork/layers/LayerSetup;->initArtisticLayer(Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;ILcom/sonymobile/generativeartwork/settings/LayerSettings;)V

    goto :goto_0

    .line 84
    .restart local v0    # "lr":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :pswitch_1
    check-cast v0, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;

    .end local v0    # "lr":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    invoke-static {v0, v3, p1}, Lcom/sonymobile/generativeartwork/layers/LayerSetup;->initBackground(Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;ILcom/sonymobile/generativeartwork/settings/LayerSettings;)V

    goto :goto_0

    .line 74
    :cond_0
    return-void

    .line 82
    nop

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

    .line 119
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    .line 118
    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 120
    .local v2, "letterTransformations":[Lcom/sonymobile/generativeartwork/settings/ColorSettings;
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    array-length v5, v2

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x4

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 121
    .local v0, "colors":[[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 122
    aget-object v3, v2, v1

    aget-object v4, v0, v1

    invoke-virtual {v3, p1, v4}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->transform(I[F)[F

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->setColor([[F)V

    .line 125
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 126
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterXOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 127
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterYOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 128
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterScale:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 125
    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->setArtTrasnformation(FFFF)V

    .line 110
    return-void
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

    .line 100
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    .line 99
    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 101
    .local v1, "gradientTransformations":[Lcom/sonymobile/generativeartwork/settings/ColorSettings;
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    array-length v5, v1

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x4

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 102
    .local v0, "gradientColorPoints":[[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 103
    aget-object v3, v1, v2

    aget-object v4, v0, v2

    invoke-virtual {v3, p1, v4}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->transform(I[F)[F

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->setColor([[F)V

    .line 106
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientRanges:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p2, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v3

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

    .line 93
    return-void
.end method

.method public static setSettings(Ljava/util/ArrayList;Lcom/sonymobile/generativeartwork/settings/LayerSettings;)V
    .locals 16
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

    move-result-object v11

    check-cast v11, [I

    .line 34
    .local v11, "palette":[I
    invoke-static/range {p0 .. p1}, Lcom/sonymobile/generativeartwork/layers/LayerSetup;->init(Ljava/util/ArrayList;Lcom/sonymobile/generativeartwork/settings/LayerSettings;)V

    .line 37
    sget-object v12, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    .line 36
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 39
    .local v5, "gradientTransformations":[Lcom/sonymobile/generativeartwork/settings/ColorSettings;
    sget-object v12, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    .line 38
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 42
    .local v8, "letterTransformations":[Lcom/sonymobile/generativeartwork/settings/ColorSettings;
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x3

    new-array v13, v13, [I

    array-length v14, v11

    const/4 v15, 0x0

    aput v14, v13, v15

    array-length v14, v5

    const/4 v15, 0x1

    aput v14, v13, v15

    const/4 v14, 0x4

    const/4 v15, 0x2

    aput v14, v13, v15

    invoke-static {v12, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[F

    .line 43
    .local v3, "cyclingGradients":[[[F
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x3

    new-array v13, v13, [I

    array-length v14, v11

    const/4 v15, 0x0

    aput v14, v13, v15

    array-length v14, v8

    const/4 v15, 0x1

    aput v14, v13, v15

    const/4 v14, 0x4

    const/4 v15, 0x2

    aput v14, v13, v15

    invoke-static {v12, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[F

    .line 45
    .local v4, "cyclingLettersClrs":[[[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v12, v11

    if-ge v6, v12, :cond_2

    .line 46
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    array-length v12, v5

    if-ge v7, v12, :cond_0

    .line 47
    aget-object v12, v5, v7

    aget v13, v11, v6

    aget-object v14, v3, v6

    aget-object v14, v14, v7

    invoke-virtual {v12, v13, v14}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->transform(I[F)[F

    .line 46
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 49
    :cond_0
    const/4 v7, 0x0

    :goto_2
    array-length v12, v8

    if-ge v7, v12, :cond_1

    .line 50
    aget-object v12, v8, v7

    aget v13, v11, v6

    aget-object v14, v4, v6

    aget-object v14, v14, v7

    invoke-virtual {v12, v13, v14}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->transform(I[F)[F

    .line 49
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 45
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 54
    .end local v7    # "j":I
    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "lr$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    .line 55
    .local v9, "lr":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    invoke-static {}, Lcom/sonymobile/generativeartwork/layers/LayerSetup;->-getcom_sonymobile_generativeartwork_layers_LayerTypeSwitchesValues()[I

    move-result-object v12

    invoke-interface {v9}, Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;->getType()Lcom/sonymobile/generativeartwork/layers/LayerType;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sonymobile/generativeartwork/layers/LayerType;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    move-object v1, v9

    .line 61
    check-cast v1, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    .line 62
    .local v1, "artLr":Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;
    invoke-virtual {v1, v4}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->setColorPalette([[[F)V

    goto :goto_3

    .end local v1    # "artLr":Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;
    :pswitch_1
    move-object v2, v9

    .line 57
    check-cast v2, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;

    .line 58
    .local v2, "bgLr":Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;
    invoke-virtual {v2, v3}, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;->setColorPalette([[[F)V

    goto :goto_3

    .line 26
    .end local v2    # "bgLr":Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;
    .end local v9    # "lr":Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;
    :cond_3
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
