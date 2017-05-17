.class public Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_util_ImageUtil$NotificationIconLocationSwitchesValues:[I

.field private static final TAG:Ljava/lang/String;

.field private static sDensity:F

.field private static sIconSize:Ljava/lang/Integer;


# direct methods
.method private static synthetic -getcom_sonyericsson_android_socialphonebook_util_ImageUtil$NotificationIconLocationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->-com_sonyericsson_android_socialphonebook_util_ImageUtil$NotificationIconLocationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->-com_sonyericsson_android_socialphonebook_util_ImageUtil$NotificationIconLocationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->values()[Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->BOTTOM_END:Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->BOTTOM_START:Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->TOP_END:Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->TOP_START:Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->-com_sonyericsson_android_socialphonebook_util_ImageUtil$NotificationIconLocationSwitchesValues:[I

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
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->sDensity:F

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->sIconSize:Ljava/lang/Integer;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCustomActionIconWithMessage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "customMessage"    # Ljava/lang/String;
    .param p3, "notificationIconLocation"    # Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 167
    const v6, 0x7f0d0156

    .line 166
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 169
    .local v4, "sizeInPixel":I
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 170
    const v6, 0x7f0400bc

    .line 169
    invoke-virtual {v5, v6, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 173
    .local v1, "iconWithNotificationLayout":Landroid/widget/RelativeLayout;
    const v5, 0x7f0e01eb

    .line 172
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 174
    .local v2, "phoneIcon":Landroid/widget/ImageView;
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    invoke-static {p0, p3, v1}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->getNotificationTextView(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;Landroid/widget/RelativeLayout;)Landroid/widget/TextView;

    move-result-object v0

    .line 178
    .local v0, "customMessageText":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    :cond_0
    invoke-static {v1, v4, v4}, Lcom/android/contacts/common/util/BitmapUtil;->createBitmapFromLayout(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 185
    .local v3, "resultedBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v5
.end method

.method public static createRoundedAvatarFromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "contactId"    # J

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    invoke-static {p0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v1

    .line 137
    sget-object v2, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 135
    invoke-virtual {v1, v2, p2, p3}, Lcom/android/contacts/photomanager/ContactPhotoManager;->generateDefaultContactAvatar(Lcom/android/contacts/photomanager/DefaultImageRequest;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 141
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static createRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 87
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->method(Ljava/lang/String;)V

    .line 88
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 89
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static createRoundedBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 93
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->TAG:Ljava/lang/String;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->method(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 98
    .local v4, "resources":Landroid/content/res/Resources;
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->sIconSize:Ljava/lang/Integer;

    if-nez v7, :cond_0

    .line 99
    const v7, 0x7f0d00bc

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->sIconSize:Ljava/lang/Integer;

    .line 101
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->sIconSize:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_0

    .line 103
    const-string/jumbo v7, "activity"

    .line 102
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 104
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->sIconSize:Ljava/lang/Integer;

    .line 109
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    :cond_0
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->sIconSize:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->sIconSize:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 110
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Rect;

    sget-object v7, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->sIconSize:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->sIconSize:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v3, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    .local v3, "dst":Landroid/graphics/Rect;
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 115
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    invoke-static {v4, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v6

    .line 120
    .local v6, "roundedDrawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 121
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->sIconSize:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 122
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->sIconSize:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->sIconSize:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 123
    .local v5, "roundedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    invoke-virtual {v6, v3}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 125
    invoke-virtual {v6, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 126
    invoke-virtual {v2, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    return-object v5
.end method

.method public static getDensity(Landroid/content/Context;)F
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->method(Ljava/lang/String;)V

    .line 73
    sget v2, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->sDensity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 74
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 75
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 76
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 77
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->sDensity:F

    .line 79
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Metrics density:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " xdi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ypi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 80
    iget v4, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_0
    sget v2, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->sDensity:F

    return v2
.end method

.method private static getNotificationTextView(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;Landroid/widget/RelativeLayout;)Landroid/widget/TextView;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationIconLocation"    # Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;
    .param p2, "iconWithNotificationLayout"    # Landroid/widget/RelativeLayout;

    .prologue
    const v7, 0x7f0e01ef

    const v6, 0x7f0e01ee

    const v5, 0x7f0e01ed

    const v4, 0x7f0e01ec

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "customMessageText":Landroid/widget/TextView;
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isLayoutDirectionLTR(Landroid/content/Context;)Z

    move-result v1

    .line 202
    .local v1, "leftToRight":Z
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->-getcom_sonyericsson_android_socialphonebook_util_ImageUtil$NotificationIconLocationSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 241
    .end local v0    # "customMessageText":Landroid/widget/TextView;
    :goto_0
    return-object v0

    .line 204
    .restart local v0    # "customMessageText":Landroid/widget/TextView;
    :pswitch_0
    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "customMessageText":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .local v0, "customMessageText":Landroid/widget/TextView;
    goto :goto_0

    .line 208
    .local v0, "customMessageText":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "customMessageText":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .local v0, "customMessageText":Landroid/widget/TextView;
    goto :goto_0

    .line 213
    .local v0, "customMessageText":Landroid/widget/TextView;
    :pswitch_1
    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {p2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "customMessageText":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .local v0, "customMessageText":Landroid/widget/TextView;
    goto :goto_0

    .line 217
    .local v0, "customMessageText":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "customMessageText":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .local v0, "customMessageText":Landroid/widget/TextView;
    goto :goto_0

    .line 222
    .local v0, "customMessageText":Landroid/widget/TextView;
    :pswitch_2
    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {p2, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "customMessageText":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .local v0, "customMessageText":Landroid/widget/TextView;
    goto :goto_0

    .line 226
    .local v0, "customMessageText":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p2, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "customMessageText":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .local v0, "customMessageText":Landroid/widget/TextView;
    goto :goto_0

    .line 231
    .local v0, "customMessageText":Landroid/widget/TextView;
    :pswitch_3
    if-eqz v1, :cond_3

    .line 232
    invoke-virtual {p2, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "customMessageText":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .local v0, "customMessageText":Landroid/widget/TextView;
    goto :goto_0

    .line 235
    .local v0, "customMessageText":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p2, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "customMessageText":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .local v0, "customMessageText":Landroid/widget/TextView;
    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getScaledBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "widthInDp"    # I
    .param p3, "heightInDp"    # I

    .prologue
    .line 57
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->method(Ljava/lang/String;)V

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "scaledBmp":Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->getDensity(Landroid/content/Context;)F

    .line 61
    if-eqz p1, :cond_0

    .line 62
    int-to-float v3, p2

    sget v4, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->sDensity:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 63
    .local v2, "width":I
    int-to-float v3, p3

    sget v4, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->sDensity:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 64
    .local v0, "height":I
    const/4 v3, 0x1

    invoke-static {p1, v2, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 67
    .end local v0    # "height":I
    .end local v1    # "scaledBmp":Landroid/graphics/Bitmap;
    .end local v2    # "width":I
    :cond_0
    return-object v1
.end method

.method public static getScaledDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "widthInDp"    # I
    .param p3, "heightInDp"    # I

    .prologue
    .line 42
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->method(Ljava/lang/String;)V

    .line 44
    const/4 v3, 0x0

    .line 45
    .local v3, "scaledDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 46
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 47
    .local v1, "bmpDraw":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {p0, v0, p2, p3}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->getScaledBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 49
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "scaledDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 52
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "bmpDraw":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-object v3
.end method
