.class public Lcom/sonyericsson/conversations/ui/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field private static synthetic -com_sonyericsson_conversations_ui_util_TextLevelSwitchesValues:[I


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_ui_util_TextLevelSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/util/ViewUtils;->-com_sonyericsson_conversations_ui_util_TextLevelSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/util/ViewUtils;->-com_sonyericsson_conversations_ui_util_TextLevelSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/util/TextLevel;->values()[Lcom/sonyericsson/conversations/ui/util/TextLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/util/TextLevel;->Disabled:Lcom/sonyericsson/conversations/ui/util/TextLevel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/TextLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/util/TextLevel;->Primary:Lcom/sonyericsson/conversations/ui/util/TextLevel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/TextLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/ui/util/TextLevel;->Secondary:Lcom/sonyericsson/conversations/ui/util/TextLevel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/TextLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/ui/util/TextLevel;->Tertiary:Lcom/sonyericsson/conversations/ui/util/TextLevel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/TextLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/ui/util/ViewUtils;->-com_sonyericsson_conversations_ui_util_TextLevelSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setThemedTextColor(Landroid/content/Context;Landroid/widget/TextView;Lcom/sonyericsson/conversations/ui/util/TextLevel;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "level"    # Lcom/sonyericsson/conversations/ui/util/TextLevel;
    .param p3, "mainColor"    # Z

    .prologue
    .line 45
    invoke-static {}, Lcom/sonyericsson/conversations/ui/util/ViewUtils;->-getcom_sonyericsson_conversations_ui_util_TextLevelSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonyericsson/conversations/ui/util/TextLevel;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 63
    :pswitch_0
    if-eqz p3, :cond_3

    .line 64
    const v2, 0x1010036

    .line 69
    .local v2, "textColorRes":I
    :goto_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 70
    .local v1, "textColor":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 73
    .local v0, "color":I
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 43
    return-void

    .line 47
    .end local v0    # "color":I
    .end local v1    # "textColor":Landroid/util/TypedValue;
    .end local v2    # "textColorRes":I
    :pswitch_1
    if-eqz p3, :cond_0

    .line 48
    const v2, 0x1010037

    .restart local v2    # "textColorRes":I
    goto :goto_0

    .line 49
    .end local v2    # "textColorRes":I
    :cond_0
    const v2, 0x101028b

    .restart local v2    # "textColorRes":I
    goto :goto_0

    .line 52
    .end local v2    # "textColorRes":I
    :pswitch_2
    if-eqz p3, :cond_1

    .line 53
    const v2, 0x1010212

    .restart local v2    # "textColorRes":I
    goto :goto_0

    .line 54
    .end local v2    # "textColorRes":I
    :cond_1
    const v2, 0x1010213

    .restart local v2    # "textColorRes":I
    goto :goto_0

    .line 57
    .end local v2    # "textColorRes":I
    :pswitch_3
    if-eqz p3, :cond_2

    .line 58
    const v2, 0x1010038

    .restart local v2    # "textColorRes":I
    goto :goto_0

    .line 59
    .end local v2    # "textColorRes":I
    :cond_2
    const v2, 0x101003a

    .restart local v2    # "textColorRes":I
    goto :goto_0

    .line 65
    .end local v2    # "textColorRes":I
    :cond_3
    const v2, 0x1010039

    .restart local v2    # "textColorRes":I
    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static setThemedTextColor(Landroid/content/Context;Landroid/widget/TextView;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "inverse"    # Z

    .prologue
    .line 28
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/TextLevel;->Primary:Lcom/sonyericsson/conversations/ui/util/TextLevel;

    invoke-static {p0, p1, v0, p2}, Lcom/sonyericsson/conversations/ui/util/ViewUtils;->setThemedTextColor(Landroid/content/Context;Landroid/widget/TextView;Lcom/sonyericsson/conversations/ui/util/TextLevel;Z)V

    .line 27
    return-void
.end method

.method public static setThemedTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "primaryColor"    # Z

    .prologue
    .line 86
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 87
    .local v0, "color":Landroid/util/TypedValue;
    if-eqz p2, :cond_0

    const v1, 0x1010036

    .line 89
    .local v1, "tintColor":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 85
    return-void

    .line 88
    .end local v1    # "tintColor":I
    :cond_0
    const v1, 0x1010039

    .restart local v1    # "tintColor":I
    goto :goto_0
.end method
