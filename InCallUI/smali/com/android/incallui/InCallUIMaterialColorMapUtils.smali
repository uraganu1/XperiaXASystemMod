.class public Lcom/android/incallui/InCallUIMaterialColorMapUtils;
.super Lcom/android/contacts/common/util/MaterialColorMapUtils;
.source "InCallUIMaterialColorMapUtils.java"


# instance fields
.field private final mResources:Landroid/content/res/Resources;

.field private final sPrimaryColors:Landroid/content/res/TypedArray;

.field private final sSecondaryColors:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/contacts/common/util/MaterialColorMapUtils;-><init>(Landroid/content/res/Resources;)V

    .line 18
    const v0, 0x7f0e0012

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    .line 20
    const v0, 0x7f0e0013

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->sSecondaryColors:Landroid/content/res/TypedArray;

    .line 21
    iput-object p1, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->mResources:Landroid/content/res/Resources;

    .line 15
    return-void
.end method

.method public static getDefaultPrimaryAndSecondaryColors(Landroid/content/res/Resources;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v3, 0x0

    .line 48
    const v2, 0x7f07001a

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 49
    .local v0, "primaryColor":I
    const v2, 0x7f07001b

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 50
    .local v1, "secondaryColor":I
    new-instance v2, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    invoke-direct {v2, v0, v1}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 5
    .param p1, "color"    # I

    .prologue
    const/4 v4, 0x0

    .line 31
    if-nez p1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->mResources:Landroid/content/res/Resources;

    invoke-static {v1}, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->getDefaultPrimaryAndSecondaryColors(Landroid/content/res/Resources;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v1

    return-object v1

    .line 35
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 36
    iget-object v1, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 37
    new-instance v1, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    .line 38
    iget-object v2, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 39
    iget-object v3, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->sSecondaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 37
    invoke-direct {v1, v2, v3}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    return-object v1

    .line 35
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_2
    invoke-super {p0, p1}, Lcom/android/contacts/common/util/MaterialColorMapUtils;->calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v1

    return-object v1
.end method