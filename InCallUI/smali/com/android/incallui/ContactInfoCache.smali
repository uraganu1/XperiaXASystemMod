.class public Lcom/android/incallui/ContactInfoCache;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ContactInfoCache$FindInfoCallback;,
        Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;,
        Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;,
        Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;,
        Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;,
        Lcom/android/incallui/ContactInfoCache$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCache:Lcom/android/incallui/ContactInfoCache;


# instance fields
.field private mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mCallBackCancel:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallBacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallDetailChangeListener:Lcom/mediatek/incallui/CallDetailChangeHandler$CallDetailChangeListener;

.field private mConferencePhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private final mContactInfoUpdatedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDefaultContactPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private final mInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mOngoingQueryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/ContactInfoCache;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContactInfoUpdatedListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "callerInfo"    # Lcom/android/incallui/CallerInfo;
    .param p3, "isIncoming"    # Z
    .param p4, "didLocalLookup"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/ContactInfoCache;->findInfoQueryComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/ContactInfoCache;->handleIsEmergencyChanged(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/ContactInfoCache;->handlePhoneNumberChanged(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mOngoingQueryMap:Ljava/util/HashMap;

    .line 93
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    .line 94
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    .line 777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContactInfoUpdatedListener:Ljava/util/List;

    .line 802
    new-instance v0, Lcom/android/incallui/ContactInfoCache$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/ContactInfoCache$1;-><init>(Lcom/android/incallui/ContactInfoCache;)V

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallDetailChangeListener:Lcom/mediatek/incallui/CallDetailChangeHandler$CallDetailChangeListener;

    .line 986
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBackCancel:Ljava/util/HashMap;

    .line 111
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {p1}, Lcom/android/incalluibind/ObjectFactory;->newPhoneNumberService(Landroid/content/Context;)Lcom/android/incallui/service/PhoneNumberService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

    .line 116
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/SomcGawUtil;->initializeAsync(Landroid/content/Context;)V

    .line 119
    invoke-static {}, Lcom/mediatek/incallui/CallDetailChangeHandler;->getInstance()Lcom/mediatek/incallui/CallDetailChangeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mCallDetailChangeListener:Lcom/mediatek/incallui/CallDetailChangeHandler$CallDetailChangeListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/CallDetailChangeHandler;->addCallDetailChangeListener(Lcom/mediatek/incallui/CallDetailChangeHandler$CallDetailChangeListener;)V

    .line 110
    return-void
.end method

.method public static buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isIncoming"    # Z

    .prologue
    .line 129
    new-instance v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    .line 132
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {p0, p1}, Lcom/android/incallui/CallerInfoUtils;->buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/Call;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    .line 133
    .local v1, "info":Lcom/android/incallui/CallerInfo;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v2

    invoke-static {p0, v1, v0, v2, p2}, Lcom/android/incallui/ContactInfoCache;->populateCacheEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V

    .line 135
    return-object v0
.end method

.method private buildEntry(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;IZ)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/android/incallui/CallerInfo;
    .param p4, "presentation"    # I
    .param p5, "isIncoming"    # Z

    .prologue
    const/4 v6, 0x0

    .line 454
    const/4 v1, 0x0

    .line 456
    .local v1, "photo":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    .line 457
    .local v0, "cce":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {p1, p3, v0, p4, p5}, Lcom/android/incallui/ContactInfoCache;->populateCacheEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V

    .line 460
    iget v2, p3, Lcom/android/incallui/CallerInfo;->photoResource:I

    if-eqz v2, :cond_1

    .line 461
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p3, Lcom/android/incallui/CallerInfo;->photoResource:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 480
    .end local v1    # "photo":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-wide v2, p3, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 481
    :cond_0
    sget-object v2, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "lookup key is null or contact ID is 0. Don\'t create a lookup uri."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    iput-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    .line 487
    :goto_1
    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 488
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    .line 490
    return-object v0

    .line 462
    .restart local v1    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-boolean v2, p3, Lcom/android/incallui/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v2, :cond_3

    .line 463
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 464
    iget-object v1, p3, Lcom/android/incallui/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .local v1, "photo":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 466
    .local v1, "photo":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/ContactInfoCache;->getDefaultContactPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "photo":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 468
    .local v1, "photo":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    if-nez v2, :cond_5

    .line 469
    const/4 v2, 0x1

    if-ne p4, v2, :cond_4

    .line 470
    invoke-direct {p0, p1}, Lcom/android/incallui/ContactInfoCache;->getBitmapDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .local v1, "photo":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 474
    .local v1, "photo":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/ContactInfoCache;->getDefaultContactPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "photo":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 477
    .local v1, "photo":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    goto :goto_0

    .line 484
    .end local v1    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-wide v2, p3, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    iget-object v4, p3, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private clearCallbacks(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 648
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mOngoingQueryMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 650
    return-void

    .line 653
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mOngoingQueryMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 654
    .local v0, "counter":I
    add-int/lit8 v0, v0, -0x1

    .line 656
    if-lez v0, :cond_1

    .line 657
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mOngoingQueryMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    return-void

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mOngoingQueryMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    return-void
.end method

.method private findInfoQueryComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V
    .locals 14
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "callerInfo"    # Lcom/android/incallui/CallerInfo;
    .param p3, "isIncoming"    # Z
    .param p4, "didLocalLookup"    # Z

    .prologue
    .line 263
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "callId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v5

    .line 265
    .local v5, "presentationMode":I
    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    .line 265
    if-eqz v1, :cond_1

    .line 267
    :cond_0
    const/4 v5, 0x1

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 273
    .local v12, "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v12, :cond_2

    iget-object v1, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 274
    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/android/incallui/CallerInfo;->contactExists:Z

    .line 273
    if-eqz v1, :cond_3

    .line 275
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object/from16 v4, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/incallui/ContactInfoCache;->buildEntry(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;IZ)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v12

    .line 276
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_3
    invoke-direct {p0, v3, v12}, Lcom/android/incallui/ContactInfoCache;->sendInfoNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 281
    if-eqz p4, :cond_4

    .line 285
    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

    if-eqz v1, :cond_5

    .line 286
    sget-object v1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Contact lookup. Local contacts miss, checking remote"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v13, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;

    invoke-direct {v13, p0, v3}, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;-><init>(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;)V

    .line 288
    .local v13, "listener":Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

    iget-object v2, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move/from16 v0, p3

    invoke-interface {v1, v2, v13, v13, v0}, Lcom/android/incallui/service/PhoneNumberService;->getPhoneNumberInfo(Ljava/lang/String;Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;Z)V

    .line 262
    .end local v13    # "listener":Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;
    :cond_4
    :goto_0
    return-void

    .line 290
    :cond_5
    iget-object v1, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    if-eqz v1, :cond_6

    .line 291
    sget-object v1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Contact lookup. Local contact found, starting image load"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    iget-object v2, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    .line 294
    const/4 v4, 0x0

    invoke-static {v4, v1, v2, p0, v3}, Lcom/android/incallui/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 297
    :cond_6
    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_8

    .line 298
    sget-object v1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Contact lookup done. Local contact found, no image."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 307
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_8
    sget-object v1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Contact lookup done. Local contact not found and no remote lookup service available."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 311
    :cond_9
    iget-object v7, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 310
    const/4 v6, 0x0

    move-object v10, p0

    move-object v11, v3

    invoke-static/range {v6 .. v11}, Lcom/android/incallui/ContactsAsyncHelper;->startObtainGawAsync(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getBitmapDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 714
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v4, :cond_0

    .line 715
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 717
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 719
    .local v1, "color":I
    const v4, 0x7f0800d2

    .line 718
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 720
    .local v2, "imageSize":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 721
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 722
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 724
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "color":I
    .end local v2    # "imageSize":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v4
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/incallui/ContactInfoCache;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/incallui/ContactInfoCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    .line 107
    :cond_0
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPresentationString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "presentation"    # I

    .prologue
    .line 668
    const v1, 0x7f0b02e7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 670
    const v1, 0x7f0b02e8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 674
    :cond_0
    :goto_0
    return-object v0

    .line 671
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 672
    const v1, 0x7f0b02e9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleIsEmergencyChanged(Lcom/android/incallui/Call;)V
    .locals 10
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v7, 0x0

    .line 818
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleIsEmergencyChanged()... call = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isVolteMarkedEcc()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 821
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    .line 822
    .local v2, "callId":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 823
    .local v0, "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    iget-object v6, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 825
    .local v1, "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 827
    invoke-direct {p0, v2}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V

    .line 829
    :cond_0
    new-instance v6, Lcom/android/incallui/CallerInfo;

    invoke-direct {v6}, Lcom/android/incallui/CallerInfo;-><init>()V

    iget-object v8, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Lcom/android/incallui/CallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/incallui/CallerInfo;

    move-result-object v3

    .line 830
    .local v3, "callerInfo":Lcom/android/incallui/CallerInfo;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-direct {p0, p1, v3, v6, v7}, Lcom/android/incallui/ContactInfoCache;->findInfoQueryComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V

    .line 832
    iget-object v6, p0, Lcom/android/incallui/ContactInfoCache;->mContactInfoUpdatedListener:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;

    .line 833
    .local v4, "listener":Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;
    invoke-virtual {v4, v2}, Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;->onContactInfoUpdated(Ljava/lang/String;)V

    goto :goto_1

    .end local v4    # "listener":Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;
    .end local v5    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    move v6, v7

    .line 830
    goto :goto_0

    .line 817
    .end local v0    # "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v1    # "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    .end local v2    # "callId":Ljava/lang/String;
    .end local v3    # "callerInfo":Lcom/android/incallui/CallerInfo;
    :cond_2
    return-void
.end method

.method private handlePhoneNumberChanged(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 844
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handlePhoneNumberChanged()... call = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isVolteMarkedEcc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    new-instance v1, Lcom/android/incallui/ContactInfoCache$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/ContactInfoCache$3;-><init>(Lcom/android/incallui/ContactInfoCache;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/incallui/ContactInfoCache;->updateInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static populateCacheEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/incallui/CallerInfo;
    .param p2, "cce"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "presentation"    # I
    .param p4, "isIncoming"    # Z

    .prologue
    const/4 v7, 0x1

    .line 498
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const/4 v1, 0x0

    .line 500
    .local v1, "displayName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 501
    .local v2, "displayNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .line 502
    .local v0, "displayLocation":Ljava/lang/String;
    const/4 v4, 0x0

    .line 503
    .local v4, "label":Ljava/lang/String;
    const/4 v3, 0x0

    .line 527
    .local v3, "isSipCall":Z
    iget-object v5, p1, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 529
    .local v5, "number":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 530
    const-string/jumbo v6, "sip:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 531
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 534
    :cond_0
    invoke-static {}, Lcom/android/incallui/SomcInCallUiUtils;->isSipPhone()Z

    move-result v3

    .line 536
    .local v3, "isSipCall":Z
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 542
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 545
    invoke-static {p0, p3}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "displayName":Ljava/lang/String;
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  ==> no name *or* number! displayName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    .end local v0    # "displayLocation":Ljava/lang/String;
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "displayNumber":Ljava/lang/String;
    .end local v4    # "label":Ljava/lang/String;
    :goto_0
    iput-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 605
    iput-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 606
    iput-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    .line 607
    iput-object v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 608
    iput-boolean v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    .line 497
    return-void

    .line 547
    .restart local v0    # "displayLocation":Ljava/lang/String;
    .local v1, "displayName":Ljava/lang/String;
    .restart local v2    # "displayNumber":Ljava/lang/String;
    .restart local v4    # "label":Ljava/lang/String;
    :cond_1
    if-eq p3, v7, :cond_2

    .line 551
    invoke-static {p0, p3}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "displayName":Ljava/lang/String;
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  ==> presentation not allowed! displayName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 553
    .local v1, "displayName":Ljava/lang/String;
    :cond_2
    iget v6, p1, Lcom/android/incallui/CallerInfo;->namePresentation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 554
    const v6, 0x7f0b02e2

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, "displayName":Ljava/lang/String;
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  ==> name presentation is restricted! displayName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 557
    .local v1, "displayName":Ljava/lang/String;
    :cond_3
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 559
    iget-object v1, p1, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    .line 560
    .local v1, "displayName":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v6, p1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 561
    move-object v2, v5

    .line 562
    .local v2, "displayNumber":Ljava/lang/String;
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  ==> cnapName available: displayName \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 563
    const-string/jumbo v8, "\', displayNumber \'"

    .line 562
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 563
    const-string/jumbo v8, "\'"

    .line 562
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 569
    .local v1, "displayName":Ljava/lang/String;
    .local v2, "displayNumber":Ljava/lang/String;
    :cond_4
    move-object v2, v5

    .line 573
    .local v2, "displayNumber":Ljava/lang/String;
    if-eqz p4, :cond_5

    .line 577
    iget-object v0, p1, Lcom/android/incallui/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 578
    .local v0, "displayLocation":Ljava/lang/String;
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Geodescrption: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/incallui/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    .end local v0    # "displayLocation":Ljava/lang/String;
    :cond_5
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  ==>  no name; falling back to number: displayNumber \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 582
    invoke-static {v2}, Lcom/android/incallui/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 581
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 583
    const-string/jumbo v8, "\', displayLocation \'"

    .line 581
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 583
    const-string/jumbo v8, "\'"

    .line 581
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 588
    .local v0, "displayLocation":Ljava/lang/String;
    .local v2, "displayNumber":Ljava/lang/String;
    :cond_6
    if-eq p3, v7, :cond_7

    .line 592
    invoke-static {p0, p3}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "displayName":Ljava/lang/String;
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 596
    .local v1, "displayName":Ljava/lang/String;
    :cond_7
    iget-object v1, p1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 597
    .local v1, "displayName":Ljava/lang/String;
    move-object v2, v5

    .line 598
    .local v2, "displayNumber":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/incallui/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 599
    .local v4, "label":Ljava/lang/String;
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  ==>  name is present in CallerInfo: displayName \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 600
    const-string/jumbo v8, "\', displayNumber \'"

    .line 599
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 600
    const-string/jumbo v8, "\'"

    .line 599
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private recycleBitmap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 441
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 443
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 445
    const/4 v0, 0x0

    .line 447
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iput-object v2, p0, Lcom/android/incallui/ContactInfoCache;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 440
    :cond_1
    return-void
.end method

.method private sendImageNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 639
    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 640
    .local v2, "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    if-eqz v2, :cond_0

    iget-object v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 641
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callBack$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .line 642
    .local v0, "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    .line 638
    .end local v0    # "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    .end local v1    # "callBack$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private sendInfoNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 630
    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 631
    .local v2, "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    if-eqz v2, :cond_0

    .line 632
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callBack$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .line 633
    .local v0, "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    .line 629
    .end local v0    # "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    .end local v1    # "callBack$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private updateInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isIncoming"    # Z
    .param p3, "callback"    # Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 872
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-ne v4, v6, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 873
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    .line 876
    .local v2, "callId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 877
    .local v0, "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 879
    .local v1, "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    if-nez v0, :cond_1

    .line 881
    invoke-interface {p3, v2, v7}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 882
    return-void

    .line 872
    .end local v0    # "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v1    # "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    .end local v2    # "callId":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 885
    .restart local v0    # "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .restart local v1    # "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    .restart local v2    # "callId":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_3

    .line 887
    if-eqz v1, :cond_2

    .line 889
    invoke-direct {p0, v2}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V

    .line 890
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mCallBackCancel:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    :cond_2
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .end local v1    # "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 894
    .restart local v1    # "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 895
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;

    invoke-direct {v5, p0, p2}, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;-><init>(Lcom/android/incallui/ContactInfoCache;Z)V

    .line 896
    invoke-static {v4, p1, v5}, Lcom/android/incallui/CallerInfoUtils;->getCallerInfoForCall(Landroid/content/Context;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/incallui/CallerInfo;

    move-result-object v3

    .line 871
    :cond_3
    return-void
.end method

.method private updateOngoingQueryMap(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mOngoingQueryMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mOngoingQueryMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 321
    .local v0, "counter":I
    add-int/lit8 v0, v0, 0x1

    .line 322
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mOngoingQueryMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .end local v0    # "counter":I
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mOngoingQueryMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addContactInfoUpdatedListener(Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContactInfoUpdatedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContactInfoUpdatedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_0
    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/android/incallui/ContactInfoCache;->recycleBitmap()V

    .line 432
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 433
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 434
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mOngoingQueryMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 430
    return-void
.end method

.method public findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isIncoming"    # Z
    .param p3, "callback"    # Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .prologue
    const/4 v5, 0x0

    .line 219
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 220
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "callId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 224
    .local v0, "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 227
    .local v1, "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    if-eqz v0, :cond_2

    .line 228
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Contact lookup. In memory cache hit; lookup "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 229
    if-nez v1, :cond_1

    const-string/jumbo v4, "complete"

    .line 228
    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-interface {p3, v2, v0}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 232
    if-nez v1, :cond_2

    .line 233
    return-void

    .end local v0    # "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v1    # "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    .end local v2    # "callId":Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 219
    goto :goto_0

    .line 229
    .restart local v0    # "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .restart local v1    # "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    .restart local v2    # "callId":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "still running"

    goto :goto_1

    .line 238
    :cond_2
    if-eqz v1, :cond_3

    .line 239
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    return-void

    .line 242
    :cond_3
    sget-object v4, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Contact lookup. In memory cache miss; searching provider."

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 245
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-direct {p0, v2}, Lcom/android/incallui/ContactInfoCache;->updateOngoingQueryMap(Ljava/lang/String;)V

    .line 256
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;

    invoke-direct {v6, p0, p2}, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;-><init>(Lcom/android/incallui/ContactInfoCache;Z)V

    .line 255
    invoke-static {v4, p1, v6}, Lcom/android/incallui/CallerInfoUtils;->getCallerInfoForCall(Landroid/content/Context;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/incallui/CallerInfo;

    move-result-object v3

    .line 258
    .local v3, "callerInfo":Lcom/android/incallui/CallerInfo;
    invoke-direct {p0, p1, v3, p2, v5}, Lcom/android/incallui/ContactInfoCache;->findInfoQueryComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V

    .line 218
    return-void
.end method

.method public generateArtworkForContact(Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 623
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    .line 622
    const/4 v0, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/ContactsAsyncHelper;->startObtainGawAsync(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 621
    return-void
.end method

.method public getConferenceDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mConferencePhotoDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 695
    const v1, 0x7f020020

    .line 694
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mConferencePhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mConferencePhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDefaultContactPhotoDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mDefaultContactPhotoDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 684
    const v1, 0x7f020022

    .line 683
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mDefaultContactPhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mDefaultContactPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object v0
.end method

.method public maybeInsertCnapInformationIntoCache(Landroid/content/Context;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;
    .param p3, "info"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 143
    iget-object v1, p3, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 147
    .local v0, "applicationContext":Landroid/content/Context;
    sget-object v1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Found contact with CNAP name - inserting into cache"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v1, Lcom/android/incallui/ContactInfoCache$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/ContactInfoCache$2;-><init>(Lcom/android/incallui/ContactInfoCache;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p3, "photoIcon"    # Landroid/graphics/Bitmap;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 397
    const-string/jumbo v2, "Image load complete with context: "

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p4

    .line 401
    check-cast v0, Ljava/lang/String;

    .line 402
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 404
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-nez v1, :cond_0

    .line 405
    const-string/jumbo v2, "Image Load received for empty search entry."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-direct {p0, v0}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V

    .line 407
    return-void

    .line 409
    :cond_0
    const-string/jumbo v2, "setting photo for entry: "

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    if-eqz p2, :cond_1

    .line 413
    const-string/jumbo v2, "direct drawable: "

    invoke-static {p0, v2, p2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    iput-object p2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 423
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/ContactInfoCache;->sendImageNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 424
    invoke-direct {p0, v0}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V

    .line 396
    return-void

    .line 415
    :cond_1
    if-eqz p3, :cond_2

    .line 416
    const-string/jumbo v2, "photo icon: "

    invoke-static {p0, v2, p3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 417
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 419
    :cond_2
    const-string/jumbo v2, "unknown photo"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/android/incallui/ContactInfoCache;->getDefaultContactPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public removeContactInfoUpdatedListener(Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContactInfoUpdatedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContactInfoUpdatedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 793
    :cond_0
    return-void
.end method

.method public removeInfo(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 199
    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 200
    .local v0, "tempEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-nez v0, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 204
    .local v1, "tempNumber":Ljava/lang/String;
    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_1
    return-void
.end method
