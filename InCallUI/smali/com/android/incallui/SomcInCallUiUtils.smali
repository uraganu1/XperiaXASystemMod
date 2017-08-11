.class public final Lcom/android/incallui/SomcInCallUiUtils;
.super Ljava/lang/Object;
.source "SomcInCallUiUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/incallui/SomcInCallUiUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/SomcInCallUiUtils;->TAG:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkCurrentStatusForCallEndedInteraction(Lcom/android/incallui/Call;)Z
    .locals 9
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v5

    if-ne v5, v7, :cond_2

    const/4 v2, 0x1

    .line 122
    .local v2, "isNumberPresent":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSubId()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v5

    .line 122
    if-eqz v5, :cond_3

    :cond_0
    const/4 v4, 0x0

    .line 124
    .local v4, "isRegularNumber":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v5

    const/4 v8, 0x3

    if-eq v5, v8, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_4

    .line 124
    :cond_1
    const/4 v1, 0x1

    .line 128
    .local v1, "isEndedByOtherOrSelf":Z
    :goto_2
    const/4 v3, 0x0

    .line 129
    .local v3, "isOtpLockActive":Z
    invoke-static {}, Lcom/android/incallui/InCallServiceImpl;->getInCallServiceContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 130
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 131
    .local v0, "currentUser":I
    invoke-static {}, Lcom/android/incallui/InCallServiceImpl;->getInCallServiceContext()Landroid/content/Context;

    move-result-object v5

    .line 132
    const-string/jumbo v8, "device_policy"

    .line 131
    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v0}, Landroid/app/admin/DevicePolicyManager;->isOtpLockActive(I)Z

    move-result v3

    .line 138
    .end local v0    # "currentUser":I
    .end local v3    # "isOtpLockActive":Z
    :goto_3
    if-eqz v2, :cond_8

    if-eqz v4, :cond_8

    if-eqz v1, :cond_8

    .line 139
    if-eqz v3, :cond_7

    move v5, v6

    .line 138
    :goto_4
    return v5

    .line 120
    .end local v1    # "isEndedByOtherOrSelf":Z
    .end local v2    # "isNumberPresent":Z
    .end local v4    # "isRegularNumber":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isNumberPresent":Z
    goto :goto_0

    .line 122
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "isRegularNumber":Z
    goto :goto_1

    .line 126
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v5

    if-nez v5, :cond_5

    const/4 v1, 0x1

    .restart local v1    # "isEndedByOtherOrSelf":Z
    goto :goto_2

    .end local v1    # "isEndedByOtherOrSelf":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isEndedByOtherOrSelf":Z
    goto :goto_2

    .line 135
    .restart local v3    # "isOtpLockActive":Z
    :cond_6
    sget-object v5, Lcom/android/incallui/SomcInCallUiUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "context was null, could not check if OTP is active."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v3    # "isOtpLockActive":Z
    :cond_7
    move v5, v7

    .line 139
    goto :goto_4

    :cond_8
    move v5, v6

    .line 138
    goto :goto_4
.end method

.method public static formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 160
    if-nez p0, :cond_0

    .line 161
    return-object v1

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "\u202a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string/jumbo v1, "\u202c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPrimaryColor(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "primaryColor":I
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 259
    .local v2, "typedValue":Landroid/util/TypedValue;
    iget v3, v2, Landroid/util/TypedValue;->data:I

    .line 260
    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x1010433

    aput v5, v4, v6

    .line 259
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 261
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v6, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 262
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 264
    return v0
.end method

.method static isCdmaPhone()Z
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    .line 57
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->somcGetBoolCommand(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isHoldSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isImsCall()Z
    .locals 3

    .prologue
    .line 202
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    .line 203
    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->somcGetBoolCommand(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isImsMultipartyCallSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isRcsVideoShareEnabled()Z
    .locals 2

    .prologue
    .line 247
    const-string/jumbo v0, "ro.somc.rcs_tapi"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSipPhone()Z
    .locals 3

    .prologue
    .line 148
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    .line 149
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->somcGetBoolCommand(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTablet()Z
    .locals 3

    .prologue
    .line 176
    const-string/jumbo v1, "ro.build.characteristics"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "characteristics":Ljava/lang/String;
    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isUpgradedToVideoOrSharedToVideo(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 187
    if-nez p0, :cond_0

    .line 188
    return v2

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v0

    .line 191
    .local v0, "sessionModificationState":I
    if-eq v0, v1, :cond_1

    .line 192
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 191
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 192
    goto :goto_0
.end method

.method public static isVolteCall(Landroid/content/Context;Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 214
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 215
    :cond_0
    return v1

    .line 219
    :cond_1
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 220
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->isVolteAvailableForSubscriber(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/SomcInCallUiUtils;->isImsCall()Z

    move-result v1

    :cond_2
    return v1
.end method

.method public static setRoundedDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 68
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 69
    :cond_0
    return-void

    .line 71
    :cond_1
    const/4 v3, 0x0

    .line 72
    .local v3, "srcBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 73
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 74
    .local v0, "height":I
    instance-of v5, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_4

    .line 75
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 83
    .end local v3    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 85
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 84
    invoke-static {v5, v3}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    .line 86
    .local v1, "newDrawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 87
    invoke-virtual {v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->getIntrinsicWidth()I

    move-result v5

    .line 88
    invoke-virtual {v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->getIntrinsicHeight()I

    move-result v6

    .line 87
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 89
    .local v2, "shortSide":I
    int-to-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 90
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .end local v1    # "newDrawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .end local v2    # "shortSide":I
    :cond_3
    return-void

    .line 78
    .restart local v3    # "srcBitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    if-lez v4, :cond_2

    if-lez v0, :cond_2

    .line 79
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 80
    .local v3, "srcBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public static useRcsJoynBrand()Z
    .locals 2

    .prologue
    .line 238
    const-string/jumbo v0, "ro.somc.rcs_branded"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
