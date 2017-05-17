.class public Lcom/android/contacts/util/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static final ACTIONBAR_STYLE:[I

.field private static final BACKGROUND:[I

.field private static final BACKGROUND_STACKED:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-array v0, v3, [I

    const v1, 0x10102ce

    aput v1, v0, v2

    sput-object v0, Lcom/android/contacts/util/ThemeUtils;->ACTIONBAR_STYLE:[I

    .line 42
    new-array v0, v3, [I

    const v1, 0x10100d4

    aput v1, v0, v2

    sput-object v0, Lcom/android/contacts/util/ThemeUtils;->BACKGROUND:[I

    .line 44
    new-array v0, v3, [I

    const v1, 0x101038a

    aput v1, v0, v2

    sput-object v0, Lcom/android/contacts/util/ThemeUtils;->BACKGROUND_STACKED:[I

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/contacts/util/ThemeUtils;->getActionBarBackground(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getActionBarBackground(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isStackedBackground"    # Z

    .prologue
    const/4 v4, 0x0

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    sget-object v3, Lcom/android/contacts/util/ThemeUtils;->ACTIONBAR_STYLE:[I

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 104
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 105
    .local v1, "styleRes":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    if-eqz v1, :cond_0

    .line 107
    if-eqz p1, :cond_1

    .line 108
    sget-object v3, Lcom/android/contacts/util/ThemeUtils;->BACKGROUND_STACKED:[I

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 112
    :goto_0
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0

    .line 110
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    sget-object v3, Lcom/android/contacts/util/ThemeUtils;->BACKGROUND:[I

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    goto :goto_0
.end method

.method public static getActivatedBackground(Landroid/content/res/Resources$Theme;)I
    .locals 1
    .param p0, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 66
    const v0, 0x10102fd

    invoke-static {p0, v0}, Lcom/android/contacts/util/ThemeUtils;->getAttribute(Landroid/content/res/Resources$Theme;I)I

    move-result v0

    return v0
.end method

.method public static getAttribute(Landroid/content/res/Resources$Theme;I)I
    .locals 2
    .param p0, "theme"    # Landroid/content/res/Resources$Theme;
    .param p1, "attrId"    # I

    .prologue
    .line 50
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 51
    .local v0, "outValue":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 52
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public static getSelectableItemBackground(Landroid/content/res/Resources$Theme;)I
    .locals 1
    .param p0, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 59
    const v0, 0x101030e

    invoke-static {p0, v0}, Lcom/android/contacts/util/ThemeUtils;->getAttribute(Landroid/content/res/Resources$Theme;I)I

    move-result v0

    return v0
.end method

.method public static getThemeColor(Landroid/content/Context;II)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I
    .param p2, "defaultColor"    # I

    .prologue
    .line 79
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 81
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1
.end method
