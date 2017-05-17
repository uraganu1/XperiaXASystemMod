.class public Lcom/sonymobile/generativeartwork/settings/SquarePatternSetupW17_2;
.super Lcom/sonymobile/generativeartwork/settings/LayerSettings;
.source "SquarePatternSetupW17_2.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 20
    invoke-direct {p0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;-><init>()V

    .line 22
    new-array v0, v10, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 23
    new-instance v1, Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    invoke-direct {v1}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;-><init>()V

    aput-object v1, v0, v6

    .line 24
    aget-object v1, v0, v6

    sget-object v2, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v3, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Saturation:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v4, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Offset:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    invoke-virtual {v1, v2, v3, v4, v9}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    .line 25
    new-instance v1, Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    invoke-direct {v1}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;-><init>()V

    aput-object v1, v0, v7

    .line 26
    aget-object v1, v0, v7

    sget-object v2, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v3, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Brightness:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v4, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Multiply:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const v5, 0x3f68ba2e

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    .line 27
    new-instance v1, Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    invoke-direct {v1}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;-><init>()V

    aput-object v1, v0, v8

    .line 28
    aget-object v1, v0, v8

    sget-object v2, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v3, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Brightness:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v4, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Multiply:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const v5, 0x3f555555

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    .line 30
    sget-object v1, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/generativeartwork/settings/SquarePatternSetupW17_2;->add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V

    .line 31
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const/high16 v1, 0x42340000    # 45.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/generativeartwork/settings/SquarePatternSetupW17_2;->add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V

    .line 33
    new-array v0, v10, [F

    .line 34
    aput v9, v0, v6

    const/high16 v1, 0x3f000000    # 0.5f

    .line 35
    aput v1, v0, v7

    const/high16 v1, 0x3f800000    # 1.0f

    .line 36
    aput v1, v0, v8

    .line 38
    sget-object v1, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientRanges:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/generativeartwork/settings/SquarePatternSetupW17_2;->add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V

    .line 41
    new-array v0, v8, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 42
    new-instance v1, Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    invoke-direct {v1}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;-><init>()V

    aput-object v1, v0, v6

    .line 43
    aget-object v1, v0, v6

    sget-object v2, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v3, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Saturation:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v4, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Multiply:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const v5, 0x3f169696

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    .line 44
    aget-object v1, v0, v6

    sget-object v2, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v3, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Brightness:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v4, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Multiply:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const v5, 0x3fb33333    # 1.4f

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    .line 45
    aget-object v1, v0, v6

    sget-object v2, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v3, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Opacity:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v4, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Set:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    .line 47
    new-instance v1, Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    invoke-direct {v1}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;-><init>()V

    aput-object v1, v0, v7

    .line 48
    aget-object v1, v0, v7

    sget-object v2, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v3, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Saturation:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v4, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Multiply:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const v5, 0x3f2aaaab

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    .line 49
    aget-object v1, v0, v7

    sget-object v2, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v3, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Brightness:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v4, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Multiply:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const v5, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    .line 50
    aget-object v1, v0, v7

    sget-object v2, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v3, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Opacity:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v4, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Set:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const v5, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    .line 51
    sget-object v1, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/generativeartwork/settings/SquarePatternSetupW17_2;->add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/generativeartwork/settings/SquarePatternSetupW17_2;->add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterXOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const v1, -0x41666666    # -0.3f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/generativeartwork/settings/SquarePatternSetupW17_2;->add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterYOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const v1, 0x3e19999a    # 0.15f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/generativeartwork/settings/SquarePatternSetupW17_2;->add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterScale:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const v1, 0x3f44ec4f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/generativeartwork/settings/SquarePatternSetupW17_2;->add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->PaletteColors:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-static {p1}, Lcom/sonymobile/generativeartwork/settings/SquarePatternSetupW17_2;->getPalette(Landroid/content/Context;)[I

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/generativeartwork/settings/SquarePatternSetupW17_2;->add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method private static getPalette(Landroid/content/Context;)[I
    .locals 4

    .prologue
    const/4 v0, 0x6

    .line 81
    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sonymobile/generativeartwork/R$color;->blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sonymobile/generativeartwork/R$color;->purple:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sonymobile/generativeartwork/R$color;->red:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sonymobile/generativeartwork/R$color;->yellow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sonymobile/generativeartwork/R$color;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sonymobile/generativeartwork/R$color;->gray:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 89
    return-object v0
.end method
