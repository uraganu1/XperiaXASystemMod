.class public final Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;
.super Ljava/lang/Object;
.source "ContactsStatusMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;,
        Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ServiceInfo;,
        Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;,
        Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;,
        Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;,
        Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;
    }
.end annotation


# static fields
.field private static final CHANGE_CALLBACK_DELAY:I = 0xdac

.field private static final QUERY_DELAY_MSEC:J = 0x3e8L

.field private static final RAWCONTACT_PROJECTION:[Ljava/lang/String;

.field private static final STATUS_ICON_SIZE:I = 0x10

.field private static final STATUS_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ContactsStatusMgr"

.field private static sRawContctsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "[",
            "Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;",
            ">;"
        }
    .end annotation
.end field

.field private static sRawStatusCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStatusIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActive:Z

.field private final mContext:Landroid/content/Context;

.field private final mDestroyableList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/util/Destroyable;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mMissedUpdate:Z

.field private mObserver:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->RAWCONTACT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->STATUS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mActive:Z

    return v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mDestroyableList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mMissedUpdate:Z

    return p1
.end method

.method static synthetic -set1(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    sput-object p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->sRawContctsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic -set2(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    sput-object p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->sRawStatusCache:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aHanlder"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->doRefresh(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->sStatusIconCache:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->sRawContctsMap:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->sRawStatusCache:Ljava/util/HashMap;

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 84
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v3

    .line 86
    const-string/jumbo v1, "account_type"

    aput-object v1, v0, v4

    .line 87
    const-string/jumbo v1, "account_name"

    aput-object v1, v0, v5

    .line 88
    const-string/jumbo v1, "sourceid"

    aput-object v1, v0, v6

    .line 83
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->RAWCONTACT_PROJECTION:[Ljava/lang/String;

    .line 91
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 92
    const-string/jumbo v1, "raw_contact_id"

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "status"

    aput-object v1, v0, v3

    .line 94
    const-string/jumbo v1, "status_ts"

    aput-object v1, v0, v4

    .line 95
    const-string/jumbo v1, "status_res_package"

    aput-object v1, v0, v5

    .line 96
    const-string/jumbo v1, "status_icon"

    aput-object v1, v0, v6

    .line 97
    const-string/jumbo v1, "status_label"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 91
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->STATUS_PROJECTION:[Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mHandler:Landroid/os/Handler;

    .line 125
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mContext:Landroid/content/Context;

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mDestroyableList:Ljava/util/LinkedList;

    .line 124
    return-void
.end method

.method private doRefresh(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aHanlder"    # Ljava/lang/Runnable;

    .prologue
    .line 454
    const-string/jumbo v1, "ContactsStatusMgr"

    const-string/jumbo v2, "doRefreshStatus"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;-><init>(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;Landroid/content/Context;)V

    .line 456
    .local v0, "statusCollector":Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mDestroyableList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 457
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$2;-><init>(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->refresh(Ljava/lang/Runnable;)V

    .line 453
    return-void
.end method

.method public static getAccountSmallIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aAccountType"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 194
    const-string/jumbo v6, "ContactsStatusMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAccountIcon "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    if-nez p1, :cond_0

    .line 196
    return-object v9

    .line 199
    :cond_0
    const/4 v3, 0x0

    .line 201
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v6, "account"

    .line 200
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 202
    .local v0, "am":Landroid/accounts/AccountManager;
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 203
    .local v2, "auths":[Landroid/accounts/AuthenticatorDescription;
    if-eqz v2, :cond_1

    .line 204
    const/4 v6, 0x0

    array-length v7, v2

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v1, v2, v6

    .line 205
    .local v1, "auth":Landroid/accounts/AuthenticatorDescription;
    iget-object v8, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 206
    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 207
    .local v5, "pkg":Ljava/lang/String;
    iget v4, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 209
    .local v4, "iconId":I
    int-to-long v6, v4

    .line 208
    invoke-static {p0, v5, v6, v7}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->getCachedStatusIcon(Landroid/content/Context;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 214
    .end local v1    # "auth":Landroid/accounts/AuthenticatorDescription;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "iconId":I
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_1
    return-object v3

    .line 204
    .restart local v1    # "auth":Landroid/accounts/AuthenticatorDescription;
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private static getCachedStatusIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aResourceUri"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 233
    if-nez p1, :cond_0

    .line 234
    const-string/jumbo v4, "ContactsStatusMgr"

    const-string/jumbo v5, "no resource URI"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-object v6

    .line 238
    :cond_0
    const/4 v2, 0x0

    .line 240
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->sStatusIconCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 241
    :try_start_0
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->sStatusIconCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .local v0, "cachedIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    monitor-exit v5

    .line 243
    return-object v0

    .line 246
    :cond_1
    const/4 v3, 0x0

    .line 248
    .local v3, "rimage":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_2

    .line 249
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->getResourceImage(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 255
    .end local v3    # "rimage":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 258
    const/16 v4, 0x10

    const/16 v6, 0x10

    .line 256
    :try_start_2
    invoke-static {p0, v3, v4, v6}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->getScaledDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 259
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->sStatusIconCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    monitor-exit v5

    .line 262
    return-object v2

    .line 251
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "rimage":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v4, "ContactsStatusMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get image from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 253
    const-string/jumbo v7, " failed with "

    .line 252
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 240
    .end local v0    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "rimage":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static getCachedStatusIcon(Landroid/content/Context;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aPkg"    # Ljava/lang/String;
    .param p2, "aId"    # J

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 221
    const-string/jumbo v1, "/drawable/"

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->getCachedStatusIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getContactAccount(Landroid/content/Context;JLandroid/widget/TextView;Landroid/widget/ImageView;)Z
    .locals 7
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aContactId"    # J
    .param p3, "aAccountView"    # Landroid/widget/TextView;
    .param p4, "aIconView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 163
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->sRawContctsMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;

    .line 164
    .local v2, "rawContactIds":[Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;
    if-eqz v2, :cond_0

    .line 165
    if-nez p3, :cond_1

    .line 167
    :cond_0
    return v5

    .line 166
    :cond_1
    if-eqz p4, :cond_0

    .line 168
    array-length v3, v2

    if-le v3, v6, :cond_2

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 171
    const v4, 0x7f09025b

    .line 170
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    const/16 v3, 0x8

    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    return v6

    .line 176
    :cond_2
    aget-object v3, v2, v5

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;->-get1(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "accountType":Ljava/lang/String;
    aget-object v3, v2, v5

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;->-get0(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {p0, v1, v0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->isLocalAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 180
    const v3, 0x7f0900c4

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(I)V

    .line 181
    const v3, 0x7f0200d3

    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    :goto_0
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    invoke-virtual {p4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    return v6

    .line 183
    :cond_3
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-static {p0, v1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->getAccountSmallIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 184
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static getContactStatus(Landroid/content/Context;JLandroid/widget/TextView;Landroid/widget/ImageView;)Z
    .locals 17
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aContactId"    # J
    .param p3, "aStatusView"    # Landroid/widget/TextView;
    .param p4, "aIconView"    # Landroid/widget/ImageView;

    .prologue
    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, "hit":Z
    sget-object v10, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->sRawContctsMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;

    .line 135
    .local v8, "rawContactIds":[Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;
    if-eqz v8, :cond_2

    .line 136
    const-wide/16 v4, 0x0

    .line 137
    .local v4, "latest":J
    const/4 v6, 0x0

    .line 138
    .local v6, "latestStatus":Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;
    const/4 v3, 0x0

    .line 139
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    array-length v11, v8

    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "latestStatus":Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;
    :goto_0
    if-ge v10, v11, :cond_1

    aget-object v7, v8, v10

    .line 140
    .local v7, "rawContact":Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;
    sget-object v12, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->sRawStatusCache:Ljava/util/HashMap;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;->-get2(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;

    .line 141
    .local v9, "status":Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;
    if-eqz v9, :cond_0

    .line 142
    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;->getTimestamp()J

    move-result-wide v12

    cmp-long v12, v12, v4

    if-lez v12, :cond_0

    .line 143
    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;->getTimestamp()J

    move-result-wide v4

    .line 144
    move-object v6, v9

    .line 146
    .local v6, "latestStatus":Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;
    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;->getIconUri()Ljava/lang/String;

    move-result-object v12

    .line 145
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->getCachedStatusIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 147
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    .line 139
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "latestStatus":Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 151
    .end local v7    # "rawContact":Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;
    .end local v9    # "status":Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;
    :cond_1
    if-eqz v6, :cond_2

    .line 152
    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;->getStatus()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    .end local v4    # "latest":J
    :cond_2
    return v2
.end method

.method private static getResourceImage(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x0

    .line 379
    const/4 v7, 0x0

    .line 380
    .local v7, "ret":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    .line 382
    .local v8, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 383
    const/4 v6, 0x0

    .line 386
    .local v6, "resources":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 391
    .end local v6    # "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v6, :cond_0

    .line 392
    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 393
    .local v4, "resourceName":Ljava/lang/String;
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 394
    .local v5, "resourceType":Ljava/lang/String;
    invoke-virtual {v6, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 395
    .local v2, "id":I
    if-eqz v2, :cond_1

    .line 397
    :try_start_1
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 406
    .end local v2    # "id":I
    .end local v4    # "resourceName":Ljava/lang/String;
    .end local v5    # "resourceType":Ljava/lang/String;
    .end local v7    # "ret":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    return-object v7

    .line 387
    .restart local v6    # "resources":Landroid/content/res/Resources;
    .restart local v7    # "ret":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v9, "ContactsStatusMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not found."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "resources":Landroid/content/res/Resources;
    .restart local v2    # "id":I
    .restart local v4    # "resourceName":Ljava/lang/String;
    .restart local v5    # "resourceType":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 399
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v9, "ContactsStatusMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not found."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 402
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    const-string/jumbo v9, "ContactsStatusMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not found."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getResourceText(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x0

    .line 340
    const/4 v7, 0x0

    .line 341
    .local v7, "ret":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    .line 343
    .local v8, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 344
    const/4 v6, 0x0

    .line 347
    .local v6, "resources":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 352
    .end local v6    # "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v6, :cond_0

    .line 353
    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 354
    .local v4, "resourceName":Ljava/lang/String;
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 355
    .local v5, "resourceType":Ljava/lang/String;
    invoke-virtual {v6, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 356
    .local v2, "id":I
    if-eqz v2, :cond_1

    .line 358
    :try_start_1
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 367
    .end local v2    # "id":I
    .end local v4    # "resourceName":Ljava/lang/String;
    .end local v5    # "resourceType":Ljava/lang/String;
    .end local v7    # "ret":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v7

    .line 348
    .restart local v6    # "resources":Landroid/content/res/Resources;
    .restart local v7    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v9, "ContactsStatusMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not found."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "resources":Landroid/content/res/Resources;
    .restart local v2    # "id":I
    .restart local v4    # "resourceName":Ljava/lang/String;
    .restart local v5    # "resourceType":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 360
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v9, "ContactsStatusMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not found."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 363
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    const-string/jumbo v9, "ContactsStatusMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not found."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 308
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 311
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mDestroyableList:Ljava/util/LinkedList;

    monitor-enter v3

    .line 312
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mDestroyableList:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/Destroyable;

    .line 313
    .local v0, "s":Lcom/sonyericsson/android/socialphonebook/util/Destroyable;
    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/util/Destroyable;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 311
    .end local v0    # "s":Lcom/sonyericsson/android/socialphonebook/util/Destroyable;
    .end local v1    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 315
    .restart local v1    # "s$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mDestroyableList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 307
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mActive:Z

    .line 319
    return-void
.end method

.method public refresh(Ljava/lang/Runnable;Z)V
    .locals 7
    .param p1, "aCallback"    # Ljava/lang/Runnable;
    .param p2, "aImmediate"    # Z

    .prologue
    const/4 v6, 0x0

    .line 268
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mObserver:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;

    if-nez v2, :cond_0

    .line 269
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->startObservering(Ljava/lang/Runnable;)V

    .line 271
    :cond_0
    if-eqz p2, :cond_2

    .line 272
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->doRefresh(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 280
    :goto_0
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->sStatusIconCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "d$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 281
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_1

    .line 274
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "d$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$1;

    invoke-direct {v3, p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$1;-><init>(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;Ljava/lang/Runnable;)V

    .line 278
    const-wide/16 v4, 0x3e8

    .line 274
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 285
    .restart local v1    # "d$iterator":Ljava/util/Iterator;
    :cond_3
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->sStatusIconCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 267
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mActive:Z

    .line 325
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mMissedUpdate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mObserver:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mObserver:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;->onChange(Z)V

    .line 327
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mMissedUpdate:Z

    .line 323
    :cond_0
    return-void
.end method

.method public startObservering(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "aCallback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x1

    .line 289
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mActive:Z

    .line 290
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 291
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mObserver:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mObserver:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 294
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;-><init>(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mObserver:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;

    .line 296
    sget-object v1, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mObserver:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;

    .line 295
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 288
    return-void
.end method

.method public stopObservering()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 301
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mObserver:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mObserver:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 303
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->mObserver:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusObserver;

    .line 299
    :cond_0
    return-void
.end method
