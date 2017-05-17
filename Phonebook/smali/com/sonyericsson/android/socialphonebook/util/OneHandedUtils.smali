.class public Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;
.super Ljava/lang/Object;
.source "OneHandedUtils.java"


# static fields
.field private static mMode:I

.field private static mModeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, -0x1

    sput v0, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->mMode:I

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->mModeChanged:Z

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deinjectOneHandedLayout(Landroid/content/Context;Landroid/view/View;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onehandDialPadView"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 105
    const v6, 0x7f0e022b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 106
    .local v5, "parent":Landroid/view/ViewGroup;
    const v6, 0x7f0e0125

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 108
    .local v4, "oneHandedLayout":Landroid/view/View;
    if-nez v4, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    const v6, 0x7f0e0128

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 113
    .local v1, "container":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 114
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 115
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 117
    invoke-virtual {v5, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 114
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 119
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 104
    return-void
.end method

.method public static getLayoutAlignment(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "one_hand_layout_alignment"

    .line 52
    const/4 v2, 0x1

    .line 50
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget v0, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->mMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "com.sonymobile.one_hand_phonebook"

    .line 64
    const/4 v2, 0x0

    .line 62
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->mMode:I

    .line 66
    :cond_0
    sget v0, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->mMode:I

    return v0
.end method

.method public static getModeChanged()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->mModeChanged:Z

    return v0
.end method

.method public static injectOneHandedLayout(Landroid/content/Context;Landroid/view/View;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "normalDialPadView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 86
    const v6, 0x7f0e022b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 87
    .local v5, "parent":Landroid/view/ViewGroup;
    const v6, 0x7f0e0125

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 88
    .local v4, "oneHandedLayout":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 92
    const v7, 0x7f040060

    .line 91
    invoke-virtual {v6, v7, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 94
    const v6, 0x7f0e0128

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 95
    .local v1, "container":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 96
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 97
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 99
    invoke-virtual {v1, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 96
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 101
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method public static isOneHandLayoutOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v1, :cond_0

    const/4 v0, 0x1

    .line 43
    .local v0, "isPortrait":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 44
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->getMode(Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    .line 41
    .end local v0    # "isPortrait":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isPortrait":Z
    goto :goto_0

    :cond_1
    move v1, v2

    .line 44
    goto :goto_1

    .line 46
    :cond_2
    return v2
.end method

.method public static resetMode()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, -0x1

    sput v0, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->mMode:I

    .line 73
    return-void
.end method

.method public static setLayoutAlignment(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutAlignment"    # I

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "one_hand_layout_alignment"

    .line 56
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setMode(I)V
    .locals 0
    .param p0, "mode"    # I

    .prologue
    .line 70
    sput p0, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->mMode:I

    .line 69
    return-void
.end method

.method public static setModeChanged(Z)V
    .locals 0
    .param p0, "mode"    # Z

    .prologue
    .line 82
    sput-boolean p0, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->mModeChanged:Z

    .line 81
    return-void
.end method
