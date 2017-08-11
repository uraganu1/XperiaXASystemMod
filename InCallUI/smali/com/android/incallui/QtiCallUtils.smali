.class public Lcom/android/incallui/QtiCallUtils;
.super Ljava/lang/Object;
.source "QtiCallUtils.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "QtiCallUtils"

    sput-object v0, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayToast(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static displayToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 119
    return-void
.end method

.method public static getCallSessionResourceId(I)I
    .locals 1
    .param p0, "event"    # I

    .prologue
    .line 102
    packed-switch p0, :pswitch_data_0

    .line 112
    :pswitch_0
    const v0, 0x7f0b0252

    return v0

    .line 104
    :pswitch_1
    const v0, 0x7f0b024f

    return v0

    .line 106
    :pswitch_2
    const v0, 0x7f0b024e

    return v0

    .line 108
    :pswitch_3
    const v0, 0x7f0b0250

    return v0

    .line 110
    :pswitch_4
    const v0, 0x7f0b0251

    return v0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getIncomingCallAnswerOptions(Landroid/content/Context;Z)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "withSms"    # Z

    .prologue
    .line 233
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->useExt(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    .line 235
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 237
    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0x3e9

    :goto_1
    return v0

    .line 238
    :cond_2
    const/16 v0, 0x3e8

    goto :goto_1
.end method

.method public static getSessionModificationOptions(Landroid/content/Context;II)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentVideoState"    # I
    .param p2, "modifyToVideoState"    # I

    .prologue
    const/16 v1, 0x3eb

    .line 248
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->useExt(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    const/4 v0, 0x4

    return v0

    .line 252
    :cond_0
    invoke-static {p1, p2}, Lcom/android/incallui/QtiCallUtils;->showVideoUpgradeOptions(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    return v1

    .line 254
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0, p2}, Lcom/android/incallui/QtiCallUtils;->isEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    const/16 v0, 0x3ec

    return v0

    .line 256
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/android/incallui/QtiCallUtils;->isEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    const/16 v0, 0x3ed

    return v0

    .line 258
    :cond_3
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/android/incallui/QtiCallUtils;->isEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    const/16 v0, 0x3ee

    return v0

    .line 261
    :cond_4
    return v1
.end method

.method public static getVideoQualityResourceId(I)I
    .locals 1
    .param p0, "videoQuality"    # I

    .prologue
    .line 86
    packed-switch p0, :pswitch_data_0

    .line 94
    const v0, 0x7f0b024d

    return v0

    .line 88
    :pswitch_0
    const v0, 0x7f0b024a

    return v0

    .line 90
    :pswitch_1
    const v0, 0x7f0b024b

    return v0

    .line 92
    :pswitch_2
    const v0, 0x7f0b024c

    return v0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static hasVideoCapabilities(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 320
    if-eqz p0, :cond_1

    .line 321
    const/16 v1, 0x200

    invoke-virtual {p0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    const/16 v1, 0x400

    invoke-virtual {p0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    .line 321
    if-nez v1, :cond_2

    .line 323
    :cond_0
    const/16 v1, 0x100

    invoke-virtual {p0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    .line 320
    :cond_1
    :goto_0
    return v0

    .line 321
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasVoiceCapabilities(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public static isEnabled(II)Z
    .locals 1
    .param p0, "mask"    # I
    .param p1, "value"    # I

    .prologue
    .line 71
    and-int v0, p0, p1

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static showVideoUpgradeOptions(II)Z
    .locals 1
    .param p0, "currentVideoState"    # I
    .param p1, "modifyToVideoState"    # I

    .prologue
    const/4 v0, 0x0

    .line 268
    if-nez p0, :cond_0

    .line 269
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/android/incallui/QtiCallUtils;->isEnabled(II)Z

    move-result v0

    .line 268
    :cond_0
    return v0
.end method

.method public static useExt(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    if-nez p0, :cond_0

    .line 224
    const-string/jumbo v0, "Context is null..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
