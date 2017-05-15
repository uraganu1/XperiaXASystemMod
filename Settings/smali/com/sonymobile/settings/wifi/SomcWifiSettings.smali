.class public Lcom/sonymobile/settings/wifi/SomcWifiSettings;
.super Lcom/android/settings/wifi/WifiSettings;
.source "SomcWifiSettings.java"


# static fields
.field private static synthetic -android_net_NetworkInfo$DetailedStateSwitchesValues:[I

.field private static synthetic -com_sonymobile_settings_wifi_SomcAccessPointPreference$HighlightStateSwitchesValues:[I

.field private static volatile highlightDrawable:Landroid/graphics/drawable/Drawable;

.field private static volatile summaryAuthFailColor:I

.field private static volatile summaryConnectedColor:I

.field private static volatile summaryDefaultColor:I


# instance fields
.field private mHeader:Landroid/widget/TextView;

.field private mHeaderColorAnimator:Landroid/animation/ValueAnimator;

.field private mHighlightBgColor:I

.field private mIsHeaderShowing:Z


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/wifi/SomcWifiSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->mHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method private static synthetic -getandroid_net_NetworkInfo$DetailedStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/NetworkInfo$DetailedState;->values()[Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    :try_start_4
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    :try_start_6
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    :try_start_8
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    :try_start_9
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_9
    :try_start_a
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    :try_start_b
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    sput-object v0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1

    :catch_c
    move-exception v1

    goto/16 :goto_0
.end method

.method private static synthetic -getcom_sonymobile_settings_wifi_SomcAccessPointPreference$HighlightStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->-com_sonymobile_settings_wifi_SomcAccessPointPreference$HighlightStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->-com_sonymobile_settings_wifi_SomcAccessPointPreference$HighlightStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->values()[Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->BAD_PASSWORD:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    invoke-virtual {v1}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->CONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    invoke-virtual {v1}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->CONNECTING:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    invoke-virtual {v1}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->DISCONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    invoke-virtual {v1}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->JUST_CONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    invoke-virtual {v1}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->-com_sonymobile_settings_wifi_SomcAccessPointPreference$HighlightStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, -0x1

    sput v0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->summaryDefaultColor:I

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->mIsHeaderShowing:Z

    .line 34
    return-void
.end method

.method private static loadStaticResources(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    const v1, 0x7f020147

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->highlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    const v1, 0x7f0e0065

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->summaryConnectedColor:I

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    const v1, 0x7f0e0066

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->summaryAuthFailColor:I

    .line 88
    return-void
.end method

.method private showHeader(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->mIsHeaderShowing:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 128
    :cond_0
    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->mHeaderColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 134
    :goto_0
    iput-boolean p1, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->mIsHeaderShowing:Z

    .line 125
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public static updateHighlight(Landroid/view/View;Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "state"    # Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    .prologue
    .line 141
    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    .local v0, "summary":Landroid/widget/TextView;
    sget v1, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->summaryDefaultColor:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    sput v1, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->summaryDefaultColor:I

    .line 146
    :cond_0
    invoke-static {}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->-getcom_sonymobile_settings_wifi_SomcAccessPointPreference$HighlightStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 155
    :pswitch_0
    sget-object v1, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->highlightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    invoke-static {}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->-getcom_sonymobile_settings_wifi_SomcAccessPointPreference$HighlightStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 159
    :pswitch_1
    sget v1, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->summaryDefaultColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    :goto_0
    return-void

    .line 149
    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 150
    sget v1, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->summaryDefaultColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    const v1, 0x1020006

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 162
    :pswitch_3
    sget v1, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->summaryConnectedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 165
    :pswitch_4
    sget v1, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->summaryAuthFailColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 156
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->mHeader:Landroid/widget/TextView;

    .line 62
    iget-object v2, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->mHeader:Landroid/widget/TextView;

    const v3, 0x7f0b0c59

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 63
    iget-object v2, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->mHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1030208

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 65
    iget-object v2, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->mHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v2, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->mHeader:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 67
    invoke-virtual {p0}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 68
    const v3, 0x7f0c00d0

    .line 67
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 69
    .local v0, "dim1":I
    invoke-virtual {p0}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 70
    const v3, 0x7f0c00d1

    .line 69
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 71
    .local v1, "dim2":I
    iget-object v2, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 73
    invoke-virtual {p0}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->loadStaticResources(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p0}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->mHighlightBgColor:I

    .line 76
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->mHighlightBgColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 76
    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->mHeaderColorAnimator:Landroid/animation/ValueAnimator;

    .line 78
    iget-object v2, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->mHeaderColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 79
    iget-object v2, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->mHeaderColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/sonymobile/settings/wifi/SomcWifiSettings$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/wifi/SomcWifiSettings$1;-><init>(Lcom/sonymobile/settings/wifi/SomcWifiSettings;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 59
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 111
    instance-of v1, p2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 112
    check-cast v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;

    .line 113
    .local v0, "ap":Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;
    invoke-virtual {v0}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->getHighlightState()Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->BAD_PASSWORD:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    if-ne v1, v2, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;Z)V

    .line 116
    return v3

    .line 119
    .end local v0    # "ap":Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->onResume()V

    .line 102
    invoke-static {}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;->resetState()V

    .line 105
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 106
    .local v0, "wmgr":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 100
    return-void
.end method

.method protected updateSupportHeader(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ap$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 174
    .local v0, "ap":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 176
    invoke-static {}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->-getandroid_net_NetworkInfo$DetailedStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->showHeader(Z)V

    .line 187
    return-void

    .line 191
    .end local v0    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->showHeader(Z)V

    .line 172
    return-void

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
