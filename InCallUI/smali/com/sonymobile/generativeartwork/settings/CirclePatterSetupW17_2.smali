.class public Lcom/sonymobile/generativeartwork/settings/CirclePatterSetupW17_2;
.super Lcom/sonymobile/generativeartwork/settings/LayerSettings;
.source "CirclePatterSetupW17_2.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 20
    invoke-direct {p0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;-><init>()V

    .line 22
    const/4 v3, 0x3

    new-array v0, v3, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 23
    .local v0, "gradientColorPoints":[Lcom/sonymobile/generativeartwork/settings/ColorSettings;
    new-instance v3, Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    invoke-direct {v3}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;-><init>()V

    aput-object v3, v0, v8

    .line 24
    aget-object v3, v0, v8

    sget-object v4, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v5, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Saturation:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v6, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Offset:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    invoke-virtual {v3, v4, v5, v6, v11}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    .line 25
    new-instance v3, Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    invoke-direct {v3}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;-><init>()V

    aput-object v3, v0, v9

    .line 26
    aget-object v3, v0, v9

    sget-object v4, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v5, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Brightness:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v6, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Multiply:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const v7, 0x3f68ba2e

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    .line 27
    new-instance v3, Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    invoke-direct {v3}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;-><init>()V

    aput-object v3, v0, v10

    .line 28
    aget-object v3, v0, v10

    sget-object v4, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v5, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Brightness:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v6, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Multiply:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const v7, 0x3f555555

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    .line 30
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p0, v3, v0}, Lcom/sonymobile/generativeartwork/settings/CirclePatterSetupW17_2;->add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V

    .line 31
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const/high16 v4, 0x42340000    # 45.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/generativeartwork/settings/CirclePatterSetupW17_2;->add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V

    .line 33
    const/4 v3, 0x3

    new-array v2, v3, [F

    .line 34
    .local v2, "ranges":[F
    aput v11, v2, v8

    .line 35
    const/high16 v3, 0x3f000000    # 0.5f

    aput v3, v2, v9

    .line 36
    aput v12, v2, v10

    .line 38
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientRanges:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p0, v3, v2}, Lcom/sonymobile/generativeartwork/settings/CirclePatterSetupW17_2;->add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V

    .line 41
    new-array v1, v10, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 42
    .local v1, "letterColorPoints":[Lcom/sonymobile/generativeartwork/settings/ColorSettings;
    new-instance v3, Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    invoke-direct {v3}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;-><init>()V

    aput-object v3, v1, v8

    .line 43
    aget-object v3, v1, v8

    sget-object v4, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v5, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Saturation:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v6, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Multiply:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const v7, 0x3f169696

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    .line 44
    aget-object v3, v1, v8

    sget-object v4, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v5, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Brightness:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v6, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Multiply:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const v7, 0x3fb33333    # 1.4f

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    .line 45
    aget-object v3, v1, v8

    sget-object v4, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v5, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Opacity:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v6, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Set:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    .line 47
    new-instance v3, Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    invoke-direct {v3}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;-><init>()V

    aput-object v3, v1, v9

    .line 48
    aget-object v3, v1, v9

    sget-object v4, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v5, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Saturation:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v6, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Multiply:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const v7, 0x3f2aaaab

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    .line 49
    aget-object v3, v1, v9

    sget-object v4, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v5, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Brightness:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v6, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Multiply:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const v7, 0x3f99999a    # 1.2f

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    .line 50
    aget-object v3, v1, v9

    sget-object v4, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v5, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Opacity:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v6, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Set:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const v7, 0x3e4ccccd    # 0.2f

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    .line 51
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p0, v3, v1}, Lcom/sonymobile/generativeartwork/settings/CirclePatterSetupW17_2;->add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V

    .line 53
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/generativeartwork/settings/CirclePatterSetupW17_2;->add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V

    .line 55
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterXOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const v4, -0x42333333    # -0.1f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/generativeartwork/settings/CirclePatterSetupW17_2;->add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V

    .line 56
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterYOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/generativeartwork/settings/CirclePatterSetupW17_2;->add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V

    .line 57
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterScale:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/generativeartwork/settings/CirclePatterSetupW17_2;->add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V

    .line 59
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->PaletteColors:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-static {p1}, Lcom/sonymobile/generativeartwork/settings/CirclePatterSetupW17_2;->getPalette(Landroid/content/Context;)[I

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/generativeartwork/settings/CirclePatterSetupW17_2;->add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method private static getPalette(Landroid/content/Context;)[I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v1, 0x6

    new-array v0, v1, [I

    .line 82
    .local v0, "palette":[I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 89
    return-object v0
.end method
