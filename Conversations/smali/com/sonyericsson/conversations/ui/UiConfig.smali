.class public Lcom/sonyericsson/conversations/ui/UiConfig;
.super Ljava/lang/Object;
.source "UiConfig.java"


# static fields
.field private static synthetic -com_sonymobile_jms_setting_ImSettingApi$ClientModeSwitchesValues:[I

.field private static sActionbarHideWhenKeypadOpen:Z

.field private static volatile sBrandingPolicy:Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;

.field private static sContext:Landroid/content/Context;

.field private static sIsTablet:Z

.field private static sNavigationBarHeight:I

.field private static sStatusBarHeight:I


# direct methods
.method private static synthetic -getcom_sonymobile_jms_setting_ImSettingApi$ClientModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/UiConfig;->-com_sonymobile_jms_setting_ImSettingApi$ClientModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/UiConfig;->-com_sonymobile_jms_setting_ImSettingApi$ClientModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->values()[Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->CONVERGED:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->INTEGRATED:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->NO_CLIENT:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->SEAMLESS:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/ui/UiConfig;->-com_sonymobile_jms_setting_ImSettingApi$ClientModeSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/conversations/ui/UiConfig;->sContext:Landroid/content/Context;

    .line 55
    sput-boolean v2, Lcom/sonyericsson/conversations/ui/UiConfig;->sActionbarHideWhenKeypadOpen:Z

    .line 56
    sput-boolean v2, Lcom/sonyericsson/conversations/ui/UiConfig;->sIsTablet:Z

    .line 59
    sput v1, Lcom/sonyericsson/conversations/ui/UiConfig;->sStatusBarHeight:I

    .line 60
    sput v1, Lcom/sonyericsson/conversations/ui/UiConfig;->sNavigationBarHeight:I

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccentColor(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 192
    .local v1, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 193
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    const v2, 0x1010435

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 194
    iget v2, v1, Landroid/util/TypedValue;->data:I

    return v2
.end method

.method public static getAccentDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 198
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor(Landroid/content/Context;)I

    move-result v0

    .line 199
    .local v0, "accentColor":I
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/UiConfig;->getBrighterAccentColor(I)I

    move-result v2

    .line 201
    .local v2, "brighterAccentColor":I
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 202
    .local v4, "sl":Landroid/graphics/drawable/StateListDrawable;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 203
    .local v1, "accentDrawable":Landroid/graphics/drawable/ColorDrawable;
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 204
    .local v3, "brighterAccentDrawable":Landroid/graphics/drawable/ColorDrawable;
    new-array v5, v8, [I

    const v6, 0x10100a7

    aput v6, v5, v7

    invoke-virtual {v4, v5, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 205
    new-array v5, v8, [I

    const v6, -0x10100a7

    aput v6, v5, v7

    invoke-virtual {v4, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 207
    return-object v4
.end method

.method public static getBrandingPolicy()Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;
    .locals 5

    .prologue
    .line 272
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v1

    .line 273
    .local v1, "rcseConfigured":Z
    sget-object v2, Lcom/sonyericsson/conversations/ui/UiConfig;->sBrandingPolicy:Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;

    if-eqz v2, :cond_0

    .line 274
    sget-object v2, Lcom/sonyericsson/conversations/ui/UiConfig;->sBrandingPolicy:Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;

    invoke-interface {v2, v1}, Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;->update(Z)V

    .line 275
    sget-object v2, Lcom/sonyericsson/conversations/ui/UiConfig;->sBrandingPolicy:Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;

    return-object v2

    .line 278
    :cond_0
    sget-object v2, Lcom/sonyericsson/conversations/ui/UiConfig;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 279
    .local v0, "policyConfigValue":I
    packed-switch v0, :pswitch_data_0

    .line 287
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Incorrect branding policy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :pswitch_0
    new-instance v2, Lcom/sonyericsson/conversations/ui/branding/PartialBrandingPolicy;

    sget-object v3, Lcom/sonyericsson/conversations/ui/UiConfig;->sContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sonyericsson/conversations/ui/branding/PartialBrandingPolicy;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/UiConfig;->sBrandingPolicy:Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;

    .line 282
    sget-object v2, Lcom/sonyericsson/conversations/ui/UiConfig;->sBrandingPolicy:Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;

    return-object v2

    .line 284
    :pswitch_1
    new-instance v2, Lcom/sonyericsson/conversations/ui/branding/FullBrandingPolicy;

    sget-object v3, Lcom/sonyericsson/conversations/ui/UiConfig;->sContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/sonyericsson/conversations/ui/branding/FullBrandingPolicy;-><init>(Landroid/content/Context;Z)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/UiConfig;->sBrandingPolicy:Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;

    .line 285
    sget-object v2, Lcom/sonyericsson/conversations/ui/UiConfig;->sBrandingPolicy:Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;

    return-object v2

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getBrighterAccentColor(I)I
    .locals 6
    .param p0, "accentColor"    # I

    .prologue
    .line 211
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 212
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 214
    const/4 v1, 0x1

    aget v2, v0, v1

    float-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    .line 216
    const/4 v1, 0x2

    aget v2, v0, v1

    float-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    .line 217
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public static getPrimaryColor()I
    .locals 4

    .prologue
    .line 171
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 172
    .local v1, "typedValue":Landroid/util/TypedValue;
    sget-object v2, Lcom/sonyericsson/conversations/ui/UiConfig;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 173
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    const v2, 0x1010433

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 174
    iget v2, v1, Landroid/util/TypedValue;->data:I

    return v2
.end method

.method public static getPrimaryDrawable()Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 178
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryColor()I

    move-result v0

    .line 179
    .local v0, "accentColor":I
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/UiConfig;->getBrighterAccentColor(I)I

    move-result v2

    .line 181
    .local v2, "brighterAccentColor":I
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 182
    .local v4, "sl":Landroid/graphics/drawable/StateListDrawable;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 183
    .local v1, "accentDrawable":Landroid/graphics/drawable/ColorDrawable;
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 184
    .local v3, "brighterAccentDrawable":Landroid/graphics/drawable/ColorDrawable;
    new-array v5, v8, [I

    const v6, 0x10100a7

    aput v6, v5, v7

    invoke-virtual {v4, v5, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 185
    new-array v5, v8, [I

    const v6, -0x10100a7

    aput v6, v5, v7

    invoke-virtual {v4, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 187
    return-object v4
.end method

.method public static getSearchTextColor()I
    .locals 1

    .prologue
    .line 240
    const/4 v0, -0x1

    return v0
.end method

.method public static getThemeDefaultContactBadge()Landroid/widget/QuickContactBadge;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 249
    sget-object v2, Lcom/sonyericsson/conversations/ui/UiConfig;->sContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 250
    .local v1, "li":Landroid/view/LayoutInflater;
    const v2, 0x7f03004f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 251
    .local v0, "badgeLayout":Landroid/view/View;
    const v2, 0x7f0d0016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/QuickContactBadge;

    return-object v2
.end method

.method public static getThemeTextColorHighlight()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 226
    sget-object v2, Lcom/sonyericsson/conversations/ui/UiConfig;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    .line 227
    const v4, 0x1010099

    aput v4, v3, v5

    .line 226
    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 229
    .local v1, "ta":Landroid/content/res/TypedArray;
    const v2, -0x777778

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 230
    .local v0, "c":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    sput-object p0, Lcom/sonyericsson/conversations/ui/UiConfig;->sContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/conversations/ui/UiConfig;->sIsTablet:Z

    .line 67
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/UiConfig;->initActionbarHideAbility(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method private static initActionbarHideAbility(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 101
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xa0

    if-gt v1, v2, :cond_0

    .line 102
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sonyericsson/conversations/ui/UiConfig;->sActionbarHideWhenKeypadOpen:Z

    .line 99
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sonyericsson/conversations/ui/UiConfig;->sActionbarHideWhenKeypadOpen:Z

    goto :goto_0
.end method

.method public static isActionbarHideWhenKeypadOpen()Z
    .locals 1

    .prologue
    .line 135
    sget-boolean v0, Lcom/sonyericsson/conversations/ui/UiConfig;->sActionbarHideWhenKeypadOpen:Z

    return v0
.end method

.method public static isPreviewButtonAvailable()Z
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/android/mms/MmsConfig;->isComposerAttachmentPreviewEnabled()Z

    move-result v0

    return v0
.end method

.method public static isRcseConfigured()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 293
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    .line 294
    .local v0, "apis":Lcom/sonyericsson/conversations/Apis;
    const/4 v1, 0x0

    .line 295
    .local v1, "settingApi":Lcom/sonymobile/jms/setting/ImSettingApi;
    if-eqz v0, :cond_0

    .line 296
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v1

    .line 299
    .end local v1    # "settingApi":Lcom/sonymobile/jms/setting/ImSettingApi;
    :cond_0
    if-nez v1, :cond_1

    .line 300
    return v4

    .line 303
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->-getcom_sonymobile_jms_setting_ImSettingApi$ClientModeSwitchesValues()[I

    move-result-object v2

    invoke-interface {v1}, Lcom/sonymobile/jms/setting/ImSettingApi;->getClientMode()Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported client mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/sonymobile/jms/setting/ImSettingApi;->getClientMode()Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-static {v2}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 312
    return v4

    .line 305
    :pswitch_0
    return v4

    .line 308
    :pswitch_1
    const/4 v2, 0x1

    return v2

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Lcom/sonyericsson/conversations/ui/UiConfig;->sIsTablet:Z

    return v0
.end method

.method public static declared-synchronized isTextMessagingEnabled()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v4, Lcom/sonyericsson/conversations/ui/UiConfig;

    monitor-enter v4

    .line 75
    :try_start_0
    sget-object v5, Lcom/sonyericsson/conversations/ui/UiConfig;->sContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 76
    .local v1, "userManager":Landroid/os/UserManager;
    const-string/jumbo v5, "no_sms"

    invoke-virtual {v1, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    monitor-exit v4

    .line 77
    return v2

    .line 80
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/conversations/proxy/ProxyService;->getDevicePolicyManagerProxy()Lcom/sonymobile/conversations/proxy/IDevicePolicyManagerProxy;

    move-result-object v5

    .line 81
    sget-object v6, Lcom/sonyericsson/conversations/ui/UiConfig;->sContext:Landroid/content/Context;

    const/4 v7, 0x0

    .line 80
    invoke-interface {v5, v6, v7}, Lcom/sonymobile/conversations/proxy/IDevicePolicyManagerProxy;->isTextMessagingDisabled(Landroid/content/Context;Landroid/content/ComponentName;)Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    monitor-exit v4

    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :try_start_2
    sget-boolean v2, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v2, :cond_2

    .line 86
    const-string/jumbo v2, "Exception in accessing DEVICE_POLICY_SERVICE"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v4

    .line 89
    return v3

    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method
