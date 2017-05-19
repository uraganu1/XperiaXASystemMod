.class public Lcom/android/contacts/common/util/MaterialColorMapUtils;
.super Ljava/lang/Object;
.source "MaterialColorMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    }
.end annotation


# instance fields
.field private final sPrimaryColors:Landroid/content/res/TypedArray;

.field private final sSecondaryColors:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/high16 v0, 0x7f0e0000

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    .line 35
    const v0, 0x7f0e0001

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils;->sSecondaryColors:Landroid/content/res/TypedArray;

    .line 31
    return-void
.end method

.method public static hue(I)F
    .locals 11
    .param p0, "color"    # I

    .prologue
    .line 147
    shr-int/lit8 v10, p0, 0x10

    and-int/lit16 v7, v10, 0xff

    .line 148
    .local v7, "r":I
    shr-int/lit8 v10, p0, 0x8

    and-int/lit16 v6, v10, 0xff

    .line 149
    .local v6, "g":I
    and-int/lit16 v2, p0, 0xff

    .line 151
    .local v2, "b":I
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 152
    .local v1, "V":I
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 156
    .local v8, "temp":I
    if-ne v1, v8, :cond_1

    .line 157
    const/4 v0, 0x0

    .line 178
    .local v0, "H":F
    :cond_0
    :goto_0
    return v0

    .line 159
    .end local v0    # "H":F
    :cond_1
    sub-int v10, v1, v8

    int-to-float v9, v10

    .line 160
    .local v9, "vtemp":F
    sub-int v10, v1, v7

    int-to-float v10, v10

    div-float v5, v10, v9

    .line 161
    .local v5, "cr":F
    sub-int v10, v1, v6

    int-to-float v10, v10

    div-float v4, v10, v9

    .line 162
    .local v4, "cg":F
    sub-int v10, v1, v2

    int-to-float v10, v10

    div-float v3, v10, v9

    .line 164
    .local v3, "cb":F
    if-ne v7, v1, :cond_2

    .line 165
    sub-float v0, v3, v4

    .line 172
    .restart local v0    # "H":F
    :goto_1
    const/high16 v10, 0x40c00000    # 6.0f

    div-float/2addr v0, v10

    .line 173
    const/4 v10, 0x0

    cmpg-float v10, v0, v10

    if-gez v10, :cond_0

    .line 174
    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v0, v10

    goto :goto_0

    .line 166
    .end local v0    # "H":F
    :cond_2
    if-ne v6, v1, :cond_3

    .line 167
    const/high16 v10, 0x40000000    # 2.0f

    add-float/2addr v10, v5

    sub-float v0, v10, v3

    .restart local v0    # "H":F
    goto :goto_1

    .line 169
    .end local v0    # "H":F
    :cond_3
    const/high16 v10, 0x40800000    # 4.0f

    add-float/2addr v10, v4

    sub-float v0, v10, v5

    .restart local v0    # "H":F
    goto :goto_1
.end method


# virtual methods
.method public calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 11
    .param p1, "color"    # I

    .prologue
    const/4 v10, 0x0

    .line 110
    const-string/jumbo v7, "calculatePrimaryAndSecondaryColor"

    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Lcom/android/contacts/common/util/MaterialColorMapUtils;->hue(I)F

    move-result v0

    .line 113
    .local v0, "colorHue":F
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 114
    .local v5, "minimumDistance":F
    const/4 v4, 0x0

    .line 115
    .local v4, "indexBestMatch":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 116
    iget-object v7, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v7, v3, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 117
    .local v6, "primaryColor":I
    invoke-static {v6}, Lcom/android/contacts/common/util/MaterialColorMapUtils;->hue(I)F

    move-result v1

    .line 121
    .local v1, "comparedHue":F
    sub-float v7, v1, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 122
    .local v2, "distance":F
    cmpg-float v7, v2, v5

    if-gez v7, :cond_0

    .line 123
    move v5, v2

    .line 124
    move v4, v3

    .line 115
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "comparedHue":F
    .end local v2    # "distance":F
    .end local v6    # "primaryColor":I
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 129
    new-instance v7, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    iget-object v8, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v8, v4, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 130
    iget-object v9, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils;->sSecondaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v9, v4, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 129
    invoke-direct {v7, v8, v9}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    return-object v7
.end method
