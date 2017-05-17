.class public Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;
.super Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
.source "LetterTileDrawableEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx$IconEntry;
    }
.end annotation


# static fields
.field private static BITMAP_ICONS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx$IconEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static DEFAULT_SIM_AVATAR:Landroid/graphics/Bitmap;

.field private static DEFAULT_SIM_GREEN_AVATAR:Landroid/graphics/Bitmap;

.field private static DEFAULT_SIM_GREEN_SDN_AVATAR:Landroid/graphics/Bitmap;

.field private static DEFAULT_SIM_ORANGE_AVATAR:Landroid/graphics/Bitmap;

.field private static DEFAULT_SIM_ORANGE_SDN_AVATAR:Landroid/graphics/Bitmap;

.field private static DEFAULT_SIM_PURPLE_AVATAR:Landroid/graphics/Bitmap;

.field private static DEFAULT_SIM_PURPLE_SDN_AVATAR:Landroid/graphics/Bitmap;

.field private static DEFAULT_SIM_SDN_AVATAR:Landroid/graphics/Bitmap;

.field private static DEFAULT_SIM_SDN_AVATAR_LOCKED:Landroid/graphics/Bitmap;

.field private static DEFAULT_SIM_YELLOW_AVATAR:Landroid/graphics/Bitmap;

.field private static DEFAULT_SIM_YELLOW_SDN_AVATAR:Landroid/graphics/Bitmap;

.field private static SDN_LOCKED_RATIO:F

.field private static SIM_ALPHA:I

.field private static SIM_AVATAR_HEIGHT_RATIO:F

.field private static SIM_AVATAR_WIDTH_RATIO:F

.field private static final TAG:Ljava/lang/String;

.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field private mBackgroundColor:I

.field private mSdnPhotoId:J

.field private mSimPaint:Landroid/graphics/Paint;

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x3ea3d70a    # 0.32f

    .line 56
    const-class v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->TAG:Ljava/lang/String;

    .line 62
    sput v1, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->SIM_AVATAR_HEIGHT_RATIO:F

    .line 63
    sput v1, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->SIM_AVATAR_WIDTH_RATIO:F

    .line 64
    const v0, 0x3e99999a    # 0.3f

    sput v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->SDN_LOCKED_RATIO:F

    .line 69
    const/16 v0, 0xf0

    sput v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->SIM_ALPHA:I

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->sPaint:Landroid/graphics/Paint;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->BITMAP_ICONS:Ljava/util/HashMap;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-direct {p0, p1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;-><init>(Landroid/content/res/Resources;)V

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mSdnPhotoId:J

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mSubId:I

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mSimPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mSimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object v0, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mSimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 95
    const/high16 v0, 0x7f070000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mBackgroundColor:I

    .line 96
    sget-object v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->DEFAULT_SIM_AVATAR:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 98
    const v0, 0x7f0200f7

    .line 97
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->DEFAULT_SIM_AVATAR:Landroid/graphics/Bitmap;

    .line 100
    const v0, 0x7f020104

    .line 99
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->DEFAULT_SIM_YELLOW_AVATAR:Landroid/graphics/Bitmap;

    .line 102
    const v0, 0x7f0200fd

    .line 101
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->DEFAULT_SIM_ORANGE_AVATAR:Landroid/graphics/Bitmap;

    .line 104
    const v0, 0x7f0200fa

    .line 103
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->DEFAULT_SIM_GREEN_AVATAR:Landroid/graphics/Bitmap;

    .line 106
    const v0, 0x7f020100

    .line 105
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->DEFAULT_SIM_PURPLE_AVATAR:Landroid/graphics/Bitmap;

    .line 109
    const v0, 0x7f0200f8

    .line 108
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->DEFAULT_SIM_SDN_AVATAR:Landroid/graphics/Bitmap;

    .line 111
    const v0, 0x7f020105

    .line 110
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->DEFAULT_SIM_YELLOW_SDN_AVATAR:Landroid/graphics/Bitmap;

    .line 113
    const v0, 0x7f0200fe

    .line 112
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->DEFAULT_SIM_ORANGE_SDN_AVATAR:Landroid/graphics/Bitmap;

    .line 115
    const v0, 0x7f0200fb

    .line 114
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->DEFAULT_SIM_GREEN_SDN_AVATAR:Landroid/graphics/Bitmap;

    .line 117
    const v0, 0x7f020101

    .line 116
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->DEFAULT_SIM_PURPLE_SDN_AVATAR:Landroid/graphics/Bitmap;

    .line 119
    const v0, 0x7f020102

    .line 118
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->DEFAULT_SIM_SDN_AVATAR_LOCKED:Landroid/graphics/Bitmap;

    .line 121
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getCtExtension()Lcom/mediatek/contacts/ext/ICtExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mediatek/contacts/ext/ICtExtension;->loadSimCardIconBitmap(Landroid/content/res/Resources;)V

    .line 89
    :cond_0
    return-void
.end method

.method private drawSdnAvatar(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 217
    .local v0, "destRect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mScale:F

    sget v4, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->SDN_LOCKED_RATIO:F

    mul-float/2addr v3, v4

    .line 218
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    .line 217
    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 219
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mScale:F

    sget v5, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->SDN_LOCKED_RATIO:F

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 220
    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mScale:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sget v6, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->SDN_LOCKED_RATIO:F

    mul-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 217
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 222
    iget-object v1, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mSimPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p4, p1, v2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 213
    return-void
.end method

.method private drawSimAvatar(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 200
    .local v0, "destRect":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mScale:F

    sget v4, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->SIM_AVATAR_WIDTH_RATIO:F

    mul-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 201
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v4, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mScale:F

    sget v5, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->SIM_AVATAR_HEIGHT_RATIO:F

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 202
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 200
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 203
    sget-object v2, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->sPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    sget-object v2, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->sPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 205
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const v3, 0x3f99999a    # 1.2f

    mul-float v1, v2, v3

    .line 206
    .local v1, "radius":F
    sget-object v2, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object v2, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "radius: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 209
    iget-object v2, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mSimPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p4, p1, v3, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 197
    return-void
.end method

.method private getIconBitmapUsingSubId(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 157
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 158
    .local v2, "soltId":I
    sget-object v3, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->BITMAP_ICONS:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx$IconEntry;

    .line 159
    .local v1, "iconEntry":Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx$IconEntry;
    const/4 v0, 0x0

    .line 160
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 161
    iget-object v0, v1, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx$IconEntry;->iconBitmap:Landroid/graphics/Bitmap;

    .line 163
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 182
    iget v1, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mSubId:I

    invoke-static {v1}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->checkSubscriber(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget v1, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mSubId:I

    invoke-virtual {p0, v1}, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->getIconBitmapCache(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->drawSimAvatar(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V

    .line 189
    :cond_0
    iget-wide v2, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mSdnPhotoId:J

    const-wide/16 v4, -0xe

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 190
    sget-object v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->DEFAULT_SIM_SDN_AVATAR_LOCKED:Landroid/graphics/Bitmap;

    .line 191
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->drawSdnAvatar(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V

    .line 180
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public getIconBitmapCache(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 170
    .local v2, "soltId":I
    sget-object v3, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->BITMAP_ICONS:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx$IconEntry;

    .line 171
    .local v1, "iconEntry":Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx$IconEntry;
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx$IconEntry;->iconTint:I

    invoke-static {v3, p1}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->iconTintChange(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    :cond_0
    sget-object v3, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "icon tint changed need to re-get sim icons bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->initSimIconBitmaps()V

    .line 175
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->getIconBitmapUsingSubId(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public initSimIconBitmaps()V
    .locals 7

    .prologue
    .line 144
    sget-object v5, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->BITMAP_ICONS:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 145
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->getActiveSubscriptionIdList()[I

    move-result-object v4

    .line 146
    .local v4, "subIds":[I
    array-length v2, v4

    .line 147
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 148
    new-instance v1, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx$IconEntry;

    invoke-direct {v1, p0}, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx$IconEntry;-><init>(Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;)V

    .line 149
    .local v1, "icon":Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx$IconEntry;
    aget v5, v4, v0

    invoke-static {v5}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->getIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v1, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx$IconEntry;->iconBitmap:Landroid/graphics/Bitmap;

    .line 150
    aget v5, v4, v0

    invoke-static {v5}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->getColorUsingSubId(I)I

    move-result v5

    iput v5, v1, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx$IconEntry;->iconTint:I

    .line 151
    aget v5, v4, v0

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    .line 152
    .local v3, "soltId":I
    sget-object v5, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->BITMAP_ICONS:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "icon":Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx$IconEntry;
    .end local v3    # "soltId":I
    :cond_0
    return-void
.end method

.method public setSIMProperty(Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 127
    iget v0, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->subId:I

    if-lez v0, :cond_0

    .line 128
    iget v0, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->subId:I

    iput v0, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mSubId:I

    .line 129
    iget-wide v0, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->photoId:J

    iput-wide v0, p0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->mSdnPhotoId:J

    .line 131
    :cond_0
    sget-object v0, Lcom/mediatek/contacts/simcontact/LetterTileDrawableEx;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setSIMProperty]request subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->subId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",request photoId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    iget-wide v2, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->photoId:J

    .line 131
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method
