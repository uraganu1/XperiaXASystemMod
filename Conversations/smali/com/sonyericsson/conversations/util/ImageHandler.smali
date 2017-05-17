.class public Lcom/sonyericsson/conversations/util/ImageHandler;
.super Ljava/lang/Object;
.source "ImageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/util/ImageHandler$CircleTransformation;,
        Lcom/sonyericsson/conversations/util/ImageHandler$RoundedCornersTransformation;,
        Lcom/sonyericsson/conversations/util/ImageHandler$VideoAwareImageDecoder;,
        Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;,
        Lcom/sonyericsson/conversations/util/ImageHandler$StretchedTransformation;,
        Lcom/sonyericsson/conversations/util/ImageHandler$1;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues:[I

.field private static final DEBUG:Z

.field private static sAppContext:Landroid/content/Context;

.field private static sCircleTransformation:Lcom/sonyericsson/conversations/util/ImageHandler$CircleTransformation;

.field private static sContactBadgeHeight:I

.field private static sContactBadgeWidth:I

.field private static sContactInformationChangeListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;

.field private static sDefaultDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static sImageDownloader:Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;

.field private static sLoadContactPictureOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static sLoadWearableContactPictureOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static sNotificationIconHeight:I

.field private static sNotificationIconWidth:I

.field private static sRoundedCornersTransformation:Lcom/sonyericsson/conversations/util/ImageHandler$RoundedCornersTransformation;

.field private static sStretchedTransformation:Lcom/sonyericsson/conversations/util/ImageHandler$StretchedTransformation;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/sonyericsson/conversations/util/ImageHandler;->sAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/util/ImageHandler;->-com_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/util/ImageHandler;->-com_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->values()[Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ALIEN:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ANIMATED_IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ANIMATED_STICKER:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->AUDIO:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->CONTACT:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->LOCATION:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->LOCATION_IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->STICKER:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->UNKNOWN:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->VCALENDAR:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->VIDEO:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    sput-object v0, Lcom/sonyericsson/conversations/util/ImageHandler;->-com_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1

    :catch_b
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -wrap0(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scaleType"    # Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .param p2, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .param p3, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/util/ImageHandler;->scale(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()V
    .locals 0

    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->init()V

    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/String;)V
    .locals 0
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ImageHandler;->removeGroupIconFromCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Ljava/util/Collection;)V
    .locals 0
    .param p0, "contactsAddress"    # Ljava/util/Collection;

    .prologue
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ImageHandler;->removeImageFromCache(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/conversations/model/Participant;)V
    .locals 0
    .param p0, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ImageHandler;->removeParticipantImageFromCache(Lcom/sonyericsson/conversations/model/Participant;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    sput-boolean v0, Lcom/sonyericsson/conversations/util/ImageHandler;->DEBUG:Z

    .line 188
    new-instance v0, Lcom/sonyericsson/conversations/util/ImageHandler$1;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/util/ImageHandler$1;-><init>()V

    .line 187
    sput-object v0, Lcom/sonyericsson/conversations/util/ImageHandler;->sContactInformationChangeListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanup()V
    .locals 2

    .prologue
    .line 224
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    .line 225
    sget-object v1, Lcom/sonyericsson/conversations/util/ImageHandler;->sContactInformationChangeListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;

    .line 224
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->removeContactInformationChangeListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;)V

    .line 223
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/sonyericsson/conversations/util/ImageHandler;->sImageDownloader:Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;

    if-nez v0, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearDiscCache()V

    .line 236
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearMemoryCache()V

    .line 231
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z

    .line 568
    return-void
.end method

.method private static createContactBadgeUri(Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;
    .locals 1
    .param p0, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 478
    const-string/jumbo v0, "contact-picture"

    .line 477
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/util/ImageHandler;->createParticipantImageUri(Lcom/sonyericsson/conversations/model/Participant;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createContactLoadOptions(Lcom/sonyericsson/conversations/model/Participant;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 3
    .param p0, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 469
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ImageHandler;->getDrawableOnLoading(Lcom/sonyericsson/conversations/model/Participant;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 470
    .local v0, "drawableOnLoading":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v2, Lcom/sonyericsson/conversations/util/ImageHandler;->sLoadContactPictureOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader(Ljava/lang/Object;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    return-object v1
.end method

.method private static createGroupConversationUri(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 509
    .local p0, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    .local v1, "key":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "contact-group-picture"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string/jumbo v4, "://"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const/16 v0, 0x2c

    .line 513
    .local v0, "SEPARATOR":C
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "participant$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/model/Participant;

    .line 517
    .local v2, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 520
    .end local v2    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static createGroupLoadOptions(Ljava/util/List;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Lcom/nostra13/universalimageloader/core/DisplayImageOptions;"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v1, Lcom/sonyericsson/conversations/util/ImageHandler;->sLoadContactPictureOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader(Ljava/lang/Object;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    return-object v0
.end method

.method private static createImageDownloader(Landroid/content/Context;Lcom/sonyericsson/conversations/contact/ContactManager;)Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;
    .locals 9
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "contactManager"    # Lcom/sonyericsson/conversations/contact/ContactManager;

    .prologue
    const/16 v8, 0x190

    .line 249
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 250
    .local v7, "windowSize":Landroid/graphics/Point;
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 254
    const v2, 0x7f0c0068

    .line 253
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 255
    .local v3, "badgeWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 256
    const v2, 0x7f0c0069

    .line 255
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 257
    .local v4, "badgeHeight":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 258
    const v2, 0x7f0c006c

    .line 257
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 259
    .local v5, "groupBadgeStrokeSize":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 260
    const v2, 0x7f0a001e

    .line 259
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 262
    .local v6, "groupBadgeAlpha":I
    new-instance v0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/contact/ContactManager;IIII)V

    .line 265
    .local v0, "contactAwareImageDownloader":Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;
    invoke-virtual {v0, v8, v8}, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->setDefaultWearableBackgroundSize(II)V

    .line 267
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->init()Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;

    move-result-object v1

    return-object v1
.end method

.method private static createParticipantImageUri(Lcom/sonyericsson/conversations/model/Participant;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "participant"    # Lcom/sonyericsson/conversations/model/Participant;
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 493
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 494
    .local v1, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 495
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getPersonName()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_0

    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 498
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 497
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static createWearableBackgroundUri(Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;
    .locals 1
    .param p0, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 489
    const-string/jumbo v0, "contact-wearable-picture"

    .line 488
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/util/ImageHandler;->createParticipantImageUri(Lcom/sonyericsson/conversations/model/Participant;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDrawableOnLoading(Lcom/sonyericsson/conversations/model/Participant;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 365
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget-object v1, Lcom/sonyericsson/conversations/util/ImageHandler;->sImageDownloader:Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->getDefaultContactPictureColor(Lcom/sonyericsson/conversations/model/Participant;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 366
    .local v0, "drawableOnLoading":Landroid/graphics/drawable/ColorDrawable;
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 367
    return-object v0
.end method

.method private static getFormattedPathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 344
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "uri":Ljava/lang/String;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-ne v1, v2, :cond_0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    :cond_0
    return-object v0
.end method

.method private static getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1

    .prologue
    .line 573
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->init()V

    .line 579
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationContactImage(Lcom/sonyericsson/conversations/model/Participant;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 390
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ImageHandler;->createContactBadgeUri(Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "uri":Ljava/lang/String;
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 392
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ImageHandler;->createContactLoadOptions(Lcom/sonyericsson/conversations/model/Participant;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 391
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 393
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sCircleTransformation:Lcom/sonyericsson/conversations/util/ImageHandler$CircleTransformation;

    .line 391
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->postProcessor(Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 395
    .local v0, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    .line 396
    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    sget v4, Lcom/sonyericsson/conversations/util/ImageHandler;->sNotificationIconWidth:I

    sget v5, Lcom/sonyericsson/conversations/util/ImageHandler;->sNotificationIconHeight:I

    invoke-direct {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    .line 395
    invoke-virtual {v2, v1, v3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getNotificationGroupConversationImage(Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ImageHandler;->createGroupConversationUri(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "uri":Ljava/lang/String;
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 408
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ImageHandler;->createGroupLoadOptions(Ljava/util/List;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 407
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 409
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sCircleTransformation:Lcom/sonyericsson/conversations/util/ImageHandler$CircleTransformation;

    .line 407
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->postProcessor(Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 411
    .local v0, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    .line 412
    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    sget v4, Lcom/sonyericsson/conversations/util/ImageHandler;->sNotificationIconWidth:I

    sget v5, Lcom/sonyericsson/conversations/util/ImageHandler;->sNotificationIconHeight:I

    invoke-direct {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    .line 411
    invoke-virtual {v2, v1, v3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getNotificationImageThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "fileUri"    # Landroid/net/Uri;

    .prologue
    .line 440
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ImageHandler;->getFormattedPathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "uri":Ljava/lang/String;
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 442
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sDefaultDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 441
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 443
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 441
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 445
    .local v0, "messageThumbnailDisplayOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getNotificationVideoThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "videoUri"    # Landroid/net/Uri;

    .prologue
    .line 456
    new-instance v1, Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;-><init>(Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;)V

    .line 457
    .local v1, "videoThumbnailOptions":Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;
    invoke-static {v1, p0}, Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;->-set0(Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;Landroid/net/Uri;)Landroid/net/Uri;

    .line 459
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 460
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sDefaultDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 459
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader(Ljava/lang/Object;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 462
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 459
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 465
    .local v0, "videoDisplayOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getWearableContactImage(Lcom/sonyericsson/conversations/model/Participant;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    const/16 v4, 0x190

    .line 424
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ImageHandler;->createWearableBackgroundUri(Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "uri":Ljava/lang/String;
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 426
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sLoadWearableContactPictureOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 425
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader(Ljava/lang/Object;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 428
    .local v0, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    .line 429
    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v3, v4, v4}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    .line 428
    invoke-virtual {v2, v1, v3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static init()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 165
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->isInited()Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 174
    .local v1, "defaultOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    new-instance v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sAppContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    const/16 v3, 0xd

    .line 174
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSizePercentage(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    .line 176
    const/high16 v3, 0x3200000

    .line 174
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    .line 177
    const/4 v3, 0x3

    .line 174
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    .line 178
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 174
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    .line 180
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sImageDownloader:Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;

    .line 174
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageDownloader(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    .line 181
    new-instance v3, Lcom/sonyericsson/conversations/util/ImageHandler$VideoAwareImageDecoder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sonyericsson/conversations/util/ImageHandler$VideoAwareImageDecoder;-><init>(Lcom/sonyericsson/conversations/util/ImageHandler$VideoAwareImageDecoder;)V

    .line 174
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageDecoder(Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 183
    .local v0, "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 164
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/sonyericsson/conversations/contact/ContactManager;)V
    .locals 9
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "contactManager"    # Lcom/sonyericsson/conversations/contact/ContactManager;

    .prologue
    const v8, 0x7f020050

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 100
    sput-object p0, Lcom/sonyericsson/conversations/util/ImageHandler;->sAppContext:Landroid/content/Context;

    .line 102
    new-instance v3, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 103
    const v4, 0x7f020142

    .line 102
    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    sput-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sDefaultDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 111
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->obtainDefaultContactDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 112
    .local v0, "defaultContactDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v3, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v3, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    sput-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sLoadContactPictureOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 121
    new-instance v3, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v3, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    sput-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sLoadWearableContactPictureOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 127
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sAppContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sonyericsson/conversations/util/ImageHandler;->createImageDownloader(Landroid/content/Context;Lcom/sonyericsson/conversations/contact/ContactManager;)Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;

    move-result-object v3

    sput-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sImageDownloader:Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;

    .line 129
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 130
    const v4, 0x7f0c0066

    .line 129
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 131
    .local v2, "maxThumbnailWidth":I
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 132
    const v4, 0x7f0c0067

    .line 131
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 133
    .local v1, "maxThumbnailHeight":I
    new-instance v3, Lcom/sonyericsson/conversations/util/ImageHandler$StretchedTransformation;

    invoke-direct {v3, v2, v1, v6}, Lcom/sonyericsson/conversations/util/ImageHandler$StretchedTransformation;-><init>(IILcom/sonyericsson/conversations/util/ImageHandler$StretchedTransformation;)V

    sput-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sStretchedTransformation:Lcom/sonyericsson/conversations/util/ImageHandler$StretchedTransformation;

    .line 135
    new-instance v3, Lcom/sonyericsson/conversations/util/ImageHandler$CircleTransformation;

    invoke-direct {v3, v6}, Lcom/sonyericsson/conversations/util/ImageHandler$CircleTransformation;-><init>(Lcom/sonyericsson/conversations/util/ImageHandler$CircleTransformation;)V

    sput-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sCircleTransformation:Lcom/sonyericsson/conversations/util/ImageHandler$CircleTransformation;

    .line 136
    new-instance v3, Lcom/sonyericsson/conversations/util/ImageHandler$RoundedCornersTransformation;

    invoke-direct {v3, v6}, Lcom/sonyericsson/conversations/util/ImageHandler$RoundedCornersTransformation;-><init>(Lcom/sonyericsson/conversations/util/ImageHandler$RoundedCornersTransformation;)V

    sput-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sRoundedCornersTransformation:Lcom/sonyericsson/conversations/util/ImageHandler$RoundedCornersTransformation;

    .line 138
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 139
    const v4, 0x1050005

    .line 138
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sNotificationIconWidth:I

    .line 140
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 141
    const v4, 0x1050006

    .line 140
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sNotificationIconHeight:I

    .line 143
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 144
    const v4, 0x7f0c0068

    .line 143
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sContactBadgeWidth:I

    .line 145
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 146
    const v4, 0x7f0c0069

    .line 145
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sContactBadgeHeight:I

    .line 149
    invoke-static {}, Lcom/nostra13/universalimageloader/utils/L;->disableLogging()V

    .line 151
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v3

    .line 152
    sget-object v4, Lcom/sonyericsson/conversations/util/ImageHandler;->sContactInformationChangeListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;

    .line 151
    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/util/ContactLookup;->addContactInformationChangeListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactInformationChangeListener;)V

    .line 154
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/sonyericsson/conversations/util/ImageHandler$2;

    invoke-direct {v4}, Lcom/sonyericsson/conversations/util/ImageHandler$2;-><init>()V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 99
    return-void
.end method

.method public static loadBadgeContactImage(Lcom/sonyericsson/conversations/model/Participant;Landroid/widget/ImageView;)V
    .locals 3
    .param p0, "participant"    # Lcom/sonyericsson/conversations/model/Participant;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 354
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-nez v2, :cond_1

    .line 355
    :cond_0
    sget v2, Lcom/sonyericsson/conversations/util/ImageHandler;->sContactBadgeWidth:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 356
    sget v2, Lcom/sonyericsson/conversations/util/ImageHandler;->sContactBadgeHeight:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 358
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ImageHandler;->createContactBadgeUri(Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "uri":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ImageHandler;->createContactLoadOptions(Lcom/sonyericsson/conversations/model/Participant;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 360
    .local v0, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v1, p1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 352
    return-void
.end method

.method public static loadGalleryImage(Lcom/bumptech/glide/RequestManager;Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "requestManager"    # Lcom/bumptech/glide/RequestManager;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 338
    const v1, 0x7f020005

    .line 335
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->fallback(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 339
    const v1, 0x7f02011c

    .line 335
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 334
    return-void
.end method

.method public static loadGifImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "imageUri"    # Ljava/lang/String;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 311
    sget-object v0, Lcom/sonyericsson/conversations/util/ImageHandler;->sAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 316
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 311
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 319
    const v1, 0x7f020142

    .line 311
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 310
    return-void
.end method

.method public static loadGroupConversationBadgeImage(Ljava/util/List;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ImageHandler;->createGroupConversationUri(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "uri":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ImageHandler;->createGroupLoadOptions(Ljava/util/List;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 380
    .local v0, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v1, p1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 377
    return-void
.end method

.method public static loadImageThumbnail(Landroid/net/Uri;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 4
    .param p0, "imageUri"    # Landroid/net/Uri;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-static {p2}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isGifImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/sonyericsson/conversations/util/ImageHandler;->loadGifImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 270
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ImageHandler;->getFormattedPathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "uri":Ljava/lang/String;
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 276
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sDefaultDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 275
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 277
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sRoundedCornersTransformation:Lcom/sonyericsson/conversations/util/ImageHandler$RoundedCornersTransformation;

    .line 275
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor(Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 278
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 275
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 280
    .local v0, "messageThumbnailDisplayOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v1, p1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0
.end method

.method public static loadPileViewThumbnail(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;)V
    .locals 3
    .param p0, "imageUri"    # Landroid/net/Uri;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "type"    # Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    .prologue
    .line 287
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->-getcom_sonyericsson_conversations_ui_pileview_PileItem$TypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 297
    sget-object v1, Lcom/sonyericsson/conversations/util/ImageHandler;->sAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/BitmapTypeRequest;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    .line 305
    .local v0, "requestBuilder":Lcom/bumptech/glide/GenericRequestBuilder;
    :goto_0
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 304
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/GenericRequestBuilder;->dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 285
    return-void

    .line 290
    .end local v0    # "requestBuilder":Lcom/bumptech/glide/GenericRequestBuilder;
    :pswitch_0
    sget-object v1, Lcom/sonyericsson/conversations/util/ImageHandler;->sAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .restart local v0    # "requestBuilder":Lcom/bumptech/glide/GenericRequestBuilder;
    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static loadPreviewImageThumbnailBlurred(Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 5
    .param p0, "thumbnailUri"    # Landroid/net/Uri;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const v4, 0x7f020048

    .line 524
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 525
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sDefaultDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 524
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 528
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sStretchedTransformation:Lcom/sonyericsson/conversations/util/ImageHandler$StretchedTransformation;

    .line 524
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor(Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 529
    const/4 v3, 0x0

    .line 524
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 531
    .local v0, "blurredDisplayOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ImageHandler;->getFormattedPathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v1, p1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 523
    return-void
.end method

.method public static loadSticker(Lcom/bumptech/glide/RequestManager;Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "requestManager"    # Lcom/bumptech/glide/RequestManager;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 328
    const v1, 0x7f0200a2

    .line 325
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->fallback(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 329
    const v1, 0x106000d

    .line 325
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 324
    return-void
.end method

.method public static loadVideoThumbnail(Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 5
    .param p0, "videoUri"    # Landroid/net/Uri;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const v4, 0x7f020051

    .line 552
    new-instance v1, Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;-><init>(Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;)V

    .line 553
    .local v1, "videoThumbnailOptions":Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;
    invoke-static {v1, p0}, Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;->-set0(Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;Landroid/net/Uri;)Landroid/net/Uri;

    .line 555
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 556
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sDefaultDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 555
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 557
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sRoundedCornersTransformation:Lcom/sonyericsson/conversations/util/ImageHandler$RoundedCornersTransformation;

    .line 555
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor(Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader(Ljava/lang/Object;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 561
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 555
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 564
    .local v0, "videoDisplayOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 551
    return-void
.end method

.method public static loadVideoThumbnailUseLoading(Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 5
    .param p0, "videoUri"    # Landroid/net/Uri;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const v4, 0x7f020066

    .line 536
    new-instance v1, Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;-><init>(Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;)V

    .line 537
    .local v1, "videoThumbnailOptions":Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;
    invoke-static {v1, p0}, Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;->-set0(Lcom/sonyericsson/conversations/util/ImageHandler$VideoThumbnailOptions;Landroid/net/Uri;)Landroid/net/Uri;

    .line 539
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 540
    sget-object v3, Lcom/sonyericsson/conversations/util/ImageHandler;->sDefaultDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 539
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader(Ljava/lang/Object;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 545
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 539
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 548
    .local v0, "videoDisplayOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 535
    return-void
.end method

.method private static obtainDefaultContactDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 583
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getThemeDefaultContactBadge()Landroid/widget/QuickContactBadge;

    move-result-object v0

    .line 584
    .local v0, "defaultContactBadge":Landroid/widget/QuickContactBadge;
    invoke-virtual {v0}, Landroid/widget/QuickContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private static removeGroupIconFromCache(Ljava/lang/String;)V
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    move-result-object v0

    .line 215
    .local v0, "cache":Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;, "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->keys()Ljava/util/Collection;

    move-result-object v3

    .line 216
    .local v3, "imageCacheKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "imageCacheKey$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 217
    .local v1, "imageCacheKey":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    .end local v1    # "imageCacheKey":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static removeImageFromCache(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "contactsAddress":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/sonyericsson/conversations/util/ImageHandler$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/util/ImageHandler$3;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/ImageHandler$3;->start()V

    .line 200
    return-void
.end method

.method private static removeParticipantImageFromCache(Lcom/sonyericsson/conversations/model/Participant;)V
    .locals 3
    .param p0, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 240
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ImageHandler;->createContactBadgeUri(Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "badgeUri":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/ImageHandler;->createWearableBackgroundUri(Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "wearBgUri":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nostra13/universalimageloader/core/assist/MemoryCacheUtil;->removeFromCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;)V

    .line 244
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/core/assist/MemoryCacheUtil;->removeFromCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;)V

    .line 239
    return-void
.end method

.method private static scale(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scaleType"    # Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .param p2, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .param p3, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 671
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 673
    .local v5, "m":Landroid/graphics/Matrix;
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne p1, v0, :cond_1

    .line 674
    :cond_0
    new-instance v9, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v9, v0, v2, v1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(III)V

    .line 675
    .local v9, "srcSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne p1, v0, :cond_3

    move v0, v6

    :goto_0
    invoke-static {v9, p3, p2, v0}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->computeImageScale(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F

    move-result v8

    .line 676
    .local v8, "scale":F
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v8, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 681
    .end local v8    # "scale":F
    .end local v9    # "srcSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    .line 680
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 682
    .local v7, "finalBitmap":Landroid/graphics/Bitmap;
    if-eq v7, p0, :cond_2

    .line 683
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 685
    :cond_2
    return-object v7

    .end local v7    # "finalBitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "srcSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    :cond_3
    move v0, v1

    .line 675
    goto :goto_0
.end method
