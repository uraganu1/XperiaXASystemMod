.class Landroid/support/v4/view/ViewCompatBase;
.super Ljava/lang/Object;
.source "ViewCompatBase.java"


# static fields
.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMinimumHeight(Landroid/view/View;)I
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 86
    sget-boolean v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightFieldFetched:Z

    if-nez v2, :cond_0

    .line 88
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "mMinHeight"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    .line 89
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :goto_0
    sput-boolean v4, Landroid/support/v4/view/ViewCompatBase;->sMinHeightFieldFetched:Z

    .line 96
    :cond_0
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    .line 98
    :try_start_1
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    return v2

    .line 99
    :catch_0
    move-exception v0

    .line 105
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 90
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0
.end method

.method static getMinimumWidth(Landroid/view/View;)I
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 63
    sget-boolean v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthFieldFetched:Z

    if-nez v2, :cond_0

    .line 65
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "mMinWidth"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    .line 66
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :goto_0
    sput-boolean v4, Landroid/support/v4/view/ViewCompatBase;->sMinWidthFieldFetched:Z

    .line 73
    :cond_0
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    .line 75
    :try_start_1
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    return v2

    .line 76
    :catch_0
    move-exception v0

    .line 82
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 67
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0
.end method
