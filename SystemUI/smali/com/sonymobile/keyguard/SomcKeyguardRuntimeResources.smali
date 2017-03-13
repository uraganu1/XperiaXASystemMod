.class public Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;
.super Ljava/lang/Object;
.source "SomcKeyguardRuntimeResources.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSecurityView(Lcom/android/keyguard/KeyguardSecurityViewFlipper;)Landroid/view/View;
    .locals 2
    .param p0, "viewFlipper"    # Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, "securityView":Landroid/view/View;
    instance-of v1, v0, Lcom/android/keyguard/KeyguardSecurityView;

    if-nez v1, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 94
    .end local v0    # "securityView":Landroid/view/View;
    :cond_0
    return-object v0
.end method

.method public static reload(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 7
    .param p0, "statusBarWindow"    # Landroid/view/View;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    return-void

    .line 46
    :cond_0
    sget v6, Lcom/android/keyguard/R$id;->keyguard_host_view:I

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "bouncer":Landroid/view/View;
    sget v6, Lcom/android/keyguard/R$dimen;->somc_keyguard_bouncer_security_bottom_margin:I

    .line 47
    invoke-static {v0, p1, v6}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateLayoutBottomMargin(Landroid/view/View;Landroid/content/res/Resources;I)V

    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, "securityView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 53
    sget v6, Lcom/android/keyguard/R$id;->view_flipper:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 54
    .local v5, "viewFlipper":Landroid/view/View;
    instance-of v6, v5, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    if-eqz v6, :cond_1

    .line 55
    check-cast v5, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .end local v5    # "viewFlipper":Landroid/view/View;
    invoke-static {v5}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityViewFlipper;)Landroid/view/View;

    move-result-object v2

    .line 60
    .end local v2    # "securityView":Landroid/view/View;
    :cond_1
    if-eqz v2, :cond_4

    .line 62
    sget v6, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    .line 61
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, "emergencyIceArea":Landroid/view/View;
    instance-of v6, v2, Lcom/android/keyguard/KeyguardSimPinView;

    if-nez v6, :cond_5

    .line 67
    instance-of v6, v2, Lcom/android/keyguard/KeyguardSimPukView;

    .line 66
    :goto_0
    if-nez v6, :cond_2

    .line 69
    sget v6, Lcom/android/keyguard/R$dimen;->somc_keyguard_emergency_carrier_area_layout_bottom_margin:I

    .line 68
    invoke-static {v1, p1, v6}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateLayoutBottomMargin(Landroid/view/View;Landroid/content/res/Resources;I)V

    .line 72
    :cond_2
    sget v6, Lcom/android/keyguard/R$id;->keyguard_sim:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 73
    .local v3, "simLargeIcon":Landroid/view/View;
    sget v6, Lcom/android/keyguard/R$string;->somc_keyguard_visible_tablet_or_portrait:I

    invoke-static {v3, p1, v6}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateVisibility(Landroid/view/View;Landroid/content/res/Resources;I)V

    .line 75
    sget v6, Lcom/android/keyguard/R$id;->somc_keyguard_sim_small_icon:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 76
    .local v4, "simSmallIcon":Landroid/view/View;
    sget v6, Lcom/android/keyguard/R$string;->somc_keyguard_visible_phone_landscape:I

    invoke-static {v4, p1, v6}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateVisibility(Landroid/view/View;Landroid/content/res/Resources;I)V

    .line 80
    instance-of v6, v2, Lcom/android/keyguard/KeyguardSimPinView;

    if-nez v6, :cond_3

    .line 81
    instance-of v6, v2, Lcom/android/keyguard/KeyguardSimPukView;

    .line 80
    if-eqz v6, :cond_4

    .line 82
    :cond_3
    invoke-static {v2, p1}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateMessageArea(Landroid/view/View;Landroid/content/res/Resources;)V

    .line 40
    .end local v1    # "emergencyIceArea":Landroid/view/View;
    .end local v3    # "simLargeIcon":Landroid/view/View;
    .end local v4    # "simSmallIcon":Landroid/view/View;
    :cond_4
    return-void

    .line 66
    .restart local v1    # "emergencyIceArea":Landroid/view/View;
    :cond_5
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private static updateLayoutBottomMargin(Landroid/view/View;Landroid/content/res/Resources;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 124
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 125
    :cond_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 129
    .local v0, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 130
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    return-void
.end method

.method private static updateLayoutTopPadding(Landroid/view/View;Landroid/content/res/Resources;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 134
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 135
    :cond_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 139
    .local v0, "paddingTop":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 139
    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 133
    return-void
.end method

.method private static updateMessageArea(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v4, 0x0

    .line 144
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 145
    :cond_0
    return-void

    .line 148
    :cond_1
    sget v3, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    .local v0, "keyguardMessageArea":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 151
    sget v3, Lcom/android/keyguard/R$bool;->somc_keyguard_message_area_single_line:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 152
    .local v2, "singleLine":Z
    sget v3, Lcom/android/keyguard/R$integer;->somc_keyguard_message_area_max_lines:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 154
    .local v1, "nbrOfLines":I
    sget v3, Lcom/android/keyguard/R$dimen;->somc_keyguard_message_area_padding_top:I

    .line 153
    invoke-static {v0, p1, v3}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateLayoutTopPadding(Landroid/view/View;Landroid/content/res/Resources;I)V

    .line 155
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 156
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 157
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 159
    if-eqz v2, :cond_3

    .line 160
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 143
    .end local v1    # "nbrOfLines":I
    .end local v2    # "singleLine":Z
    :cond_2
    :goto_0
    return-void

    .line 162
    .restart local v1    # "nbrOfLines":I
    .restart local v2    # "singleLine":Z
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method private static updateVisibility(Landroid/view/View;Landroid/content/res/Resources;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 98
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 99
    :cond_0
    return-void

    .line 102
    :cond_1
    const/4 v1, 0x0

    .line 104
    .local v1, "visibility":I
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 114
    const-string/jumbo v2, "SomcStatusBarKeyguardLoadResources"

    const-string/jumbo v3, "Invalid visibility value"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void

    .line 108
    :pswitch_1
    const/4 v1, 0x4

    .line 109
    goto :goto_0

    .line 111
    :pswitch_2
    const/16 v1, 0x8

    .line 112
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "SomcStatusBarKeyguardLoadResources"

    const-string/jumbo v3, "Invalid visibility format"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
