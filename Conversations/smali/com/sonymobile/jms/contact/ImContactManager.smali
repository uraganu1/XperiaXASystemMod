.class public final Lcom/sonymobile/jms/contact/ImContactManager;
.super Ljava/lang/Object;
.source "ImContactManager.java"

# interfaces
.implements Lcom/sonymobile/jms/contact/ImContactApi;
.implements Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;


# instance fields
.field private mAppCtx:Landroid/content/Context;

.field private mCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

.field private mContactsApi:Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;

.field private mDisplayNameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/sonymobile/jms/setting/ImSettingManager;Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "imSettingManager"    # Lcom/sonymobile/jms/setting/ImSettingManager;
    .param p3, "contactsApi"    # Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;
    .param p4, "capabilityApi"    # Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mAppCtx:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    .line 49
    iput-object p3, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mContactsApi:Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;

    .line 50
    iput-object p4, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mDisplayNameCache:Ljava/util/Map;

    .line 52
    iget-object v0, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v0, p0}, Lcom/sonymobile/jms/setting/ImSettingManager;->addSettingChangedListener(Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;)V

    .line 55
    iget-object v0, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mAppCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->initialize(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonymobile/jms/contact/ImContactManager;->createCacheRcsDisplayNamesTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/jms/contact/ImContactManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/jms/contact/ImContactManager;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sonymobile/jms/contact/ImContactManager;->cacheDisplayNameForOthers()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/jms/contact/ImContactManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/jms/contact/ImContactManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sonymobile/jms/contact/ImContactManager;->cacheDisplayNameForSelf()V

    return-void
.end method

.method private cacheDisplayName(Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;)V
    .locals 1
    .param p1, "imContactNumber"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p2, "displayName"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mDisplayNameCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mDisplayNameCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private cacheDisplayNameForOthers()V
    .locals 5

    .prologue
    .line 78
    iget-object v4, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mContactsApi:Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;->getRcsContacts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    return-void

    .line 78
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 79
    .local v3, "rcsPhoneNumber":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sonymobile/jms/contact/ImContactManager;->createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v2

    .line 80
    .local v2, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    iget-object v4, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mContactsApi:Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;

    invoke-virtual {v4, v3}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;->getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsContactDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "displayName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/sonymobile/jms/contact/ImContactManager;->cacheDisplayName(Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cacheDisplayNameForSelf()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/sonymobile/jms/contact/ImContactManager;->getMyImContactNumber()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    .line 92
    .local v1, "myImContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    iget-object v2, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v2}, Lcom/sonymobile/jms/setting/ImSettingManager;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "displayName":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/sonymobile/jms/contact/ImContactManager;->cacheDisplayName(Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private createCacheRcsDisplayNamesTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/sonymobile/jms/contact/ImContactManager$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/jms/contact/ImContactManager$1;-><init>(Lcom/sonymobile/jms/contact/ImContactManager;)V

    return-object v0
.end method

.method private getRcsPhotoIcon(Lcom/sonymobile/jms/contact/ImContactNumber;[BI)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "imContactNumber"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p2, "rcsPhotoIconData"    # [B
    .param p3, "resampleFactor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/contact/UnableToGetImContactPhotoException;
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 140
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    iput p3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    .line 141
    array-length v3, p2

    invoke-static {p2, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .end local v0    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sonymobile/jms/contact/UnableToGetImContactPhotoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to decode rcs photo icon for ImContactNumber \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/jms/contact/UnableToGetImContactPhotoException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getRcsPhotoIconResampleFactor(Lcom/sonymobile/jms/contact/ImContactNumber;Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;II)I
    .locals 10
    .param p1, "imContactNumber"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p2, "rcsPhotoIcon"    # Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I

    .prologue
    .line 115
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getWidth()I

    move-result v6

    int-to-double v6, v6

    int-to-double v8, p3

    div-double v4, v6, v8

    .line 116
    .local v4, "widthResampleFactor":D
    invoke-virtual {p2}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getHeight()I

    move-result v6

    int-to-double v6, v6

    int-to-double v8, p4

    div-double v0, v6, v8

    .line 124
    .local v0, "heightResampleFactor":D
    cmpl-double v6, v4, v0

    if-lez v6, :cond_0

    move-wide v2, v4

    .line 126
    .local v2, "resampleFactor":D
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    return v6

    .end local v2    # "resampleFactor":D
    :cond_0
    move-wide v2, v0

    .line 124
    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v0, p0}, Lcom/sonymobile/jms/setting/ImSettingManager;->removeSettingChangedListener(Lcom/sonymobile/jms/setting/SettingCache$SettingChangedListener;)V

    .line 61
    iput-object v1, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    .line 62
    iget-object v0, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mDisplayNameCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    iput-object v1, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mDisplayNameCache:Ljava/util/Map;

    .line 64
    iput-object v1, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mContactsApi:Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;

    .line 65
    iput-object v1, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    .line 66
    iput-object v1, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mAppCtx:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;
    .locals 4
    .param p1, "validUriOrNumber"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "normalizedNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    new-instance v1, Lcom/sonymobile/jms/contact/ImContactNumber;

    invoke-direct {v1, v0}, Lcom/sonymobile/jms/contact/ImContactNumber;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 162
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' is no valid ImContactNumber uri/number!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getImContactDisplayName(Lcom/sonymobile/jms/contact/ImContactNumber;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Lcom/sonymobile/jms/contact/ImContactNumber;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mDisplayNameCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getImContactPhoto(Lcom/sonymobile/jms/contact/ImContactNumber;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "imContactNumber"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/contact/ImContactNotFoundException;,
            Lcom/sonymobile/jms/contact/UnableToGetImContactPhotoException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string/jumbo v5, "ImContactNumber \'"

    .line 225
    invoke-static {v5}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' maxWidth "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    const-string/jumbo v6, "\' maxHeight "

    invoke-virtual {v5, v6}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 227
    iget-object v5, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mContactsApi:Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;

    invoke-virtual {p1}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;->getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v1

    .line 228
    .local v1, "rcsContactInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v3

    .line 233
    .local v3, "rcsPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    if-eqz v3, :cond_1

    .line 237
    invoke-virtual {v3}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getPhotoIcon()Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    move-result-object v2

    .line 238
    .local v2, "rcsPhotoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    if-eqz v2, :cond_2

    .line 242
    invoke-virtual {v2}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getContent()[B

    move-result-object v0

    .line 243
    .local v0, "photoIconData":[B
    if-eqz v0, :cond_3

    .line 247
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/sonymobile/jms/contact/ImContactManager;->getRcsPhotoIconResampleFactor(Lcom/sonymobile/jms/contact/ImContactNumber;Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;II)I

    move-result v4

    .line 249
    .local v4, "resampleFactor":I
    invoke-direct {p0, p1, v0, v4}, Lcom/sonymobile/jms/contact/ImContactManager;->getRcsPhotoIcon(Lcom/sonymobile/jms/contact/ImContactNumber;[BI)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5

    .line 229
    .end local v0    # "photoIconData":[B
    .end local v2    # "rcsPhotoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    .end local v3    # "rcsPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    .end local v4    # "resampleFactor":I
    :cond_0
    new-instance v5, Lcom/sonymobile/jms/contact/ImContactNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No contact matching number \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' can be found in stack!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sonymobile/jms/contact/ImContactNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 235
    .restart local v3    # "rcsPresenceInfo":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    :cond_1
    return-object v7

    .line 240
    .restart local v2    # "rcsPhotoIcon":Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    :cond_2
    return-object v7

    .line 245
    .restart local v0    # "photoIconData":[B
    :cond_3
    return-object v7
.end method

.method public getMyImContactNumber()Lcom/sonymobile/jms/contact/ImContactNumber;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v1, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mImSettingManager:Lcom/sonymobile/jms/setting/ImSettingManager;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingManager;->getUserProfileImsUserName()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "myRcsNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {p0, v0}, Lcom/sonymobile/jms/contact/ImContactManager;->createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    return-object v1

    .line 192
    :cond_0
    new-instance v1, Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;

    const-string/jumbo v2, "You do not have a rcs phone number! No rcs capable sim or not successfully provisioned yet?"

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isImContact(Lcom/sonymobile/jms/contact/ImContactNumber;)Z
    .locals 3
    .param p1, "imContactNumber"    # Lcom/sonymobile/jms/contact/ImContactNumber;

    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mCapabilityApi:Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;

    invoke-virtual {p1}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/service/api/client/capability/CapabilityApi;->isRcsContact(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    const-string/jumbo v1, "Failed to determine if given phone number \'"

    .line 173
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' is RCS contact"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 175
    const/4 v1, 0x0

    return v1
.end method

.method public isMe(Lcom/sonymobile/jms/contact/ImContactNumber;)Z
    .locals 2
    .param p1, "number"    # Lcom/sonymobile/jms/contact/ImContactNumber;

    .prologue
    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/jms/contact/ImContactManager;->getMyImContactNumber()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/contact/ImContactNumber;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    const/4 v1, 0x0

    return v1
.end method

.method public isValidUriOrNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "untrustedUriOrNumber"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "phoneNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mContactsApi:Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;

    invoke-virtual {v1, v0}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;->isRcsValidNumber(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public onImsProvisioningChange()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mAppCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->initialize(Landroid/content/Context;)V

    .line 258
    return-void
.end method

.method public onSettingChanged(Lcom/sonymobile/jms/setting/ImSettingManager$Setting;Ljava/lang/Object;)V
    .locals 2
    .param p1, "setting"    # Lcom/sonymobile/jms/setting/ImSettingManager$Setting;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 274
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingManager$Setting;->DISPLAY_NAME:Lcom/sonymobile/jms/setting/ImSettingManager$Setting;

    if-ne v1, p1, :cond_1

    .line 277
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "displayName":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/jms/contact/ImContactManager;->getMyImContactNumber()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sonymobile/jms/contact/ImContactManager;->cacheDisplayName(Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 275
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_1
    return-void

    .line 289
    .restart local v0    # "displayName":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public storeDisplayName(Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;)V
    .locals 1
    .param p1, "imContactNumber"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p2, "displayName"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sonymobile/jms/contact/ImContactManager;->mDisplayNameCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    return-void
.end method
