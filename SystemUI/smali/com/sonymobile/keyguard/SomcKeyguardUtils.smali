.class public Lcom/sonymobile/keyguard/SomcKeyguardUtils;
.super Ljava/lang/Object;
.source "SomcKeyguardUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static limitButtonTextSize(Landroid/content/Context;Landroid/widget/Button;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 27
    sget v3, Lcom/android/keyguard/R$dimen;->somc_kg_status_line_font_max_size:I

    .line 26
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v1, v2

    .line 28
    .local v1, "maxTextSize":F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 29
    sget v3, Lcom/android/keyguard/R$bool;->somc_keyguard_shown_on_phone:I

    .line 28
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 30
    .local v0, "isPhone":Z
    invoke-virtual {p1}, Landroid/widget/Button;->getTextSize()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    if-eqz v0, :cond_0

    .line 31
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 25
    :cond_0
    return-void
.end method
