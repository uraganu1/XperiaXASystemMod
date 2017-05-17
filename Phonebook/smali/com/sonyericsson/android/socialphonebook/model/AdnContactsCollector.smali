.class public final Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;
.super Ljava/lang/Object;
.source "AdnContactsCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;,
        Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;,
        Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;
    }
.end annotation


# static fields
.field private static final RAWCONTACT_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AdnContactsCollector"

.field private static sContact2RawContactsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mContactCollector:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mIsUpdateMissed:Z

.field private mSimContactsReceiver:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->RAWCONTACT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;)Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mContactCollector:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mIsActive:Z

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mIsUpdateMissed:Z

    return p1
.end method

.method static synthetic -set1(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    sput-object p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->sContact2RawContactsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aCallback"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->doRefresh(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->sContact2RawContactsMap:Ljava/util/HashMap;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "account_type"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "account_name"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "sourceid"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 59
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->RAWCONTACT_PROJECTION:[Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "aActivity"    # Landroid/app/Activity;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mHandler:Landroid/os/Handler;

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mContext:Landroid/content/Context;

    .line 67
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;-><init>(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mContactCollector:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;

    .line 68
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mCallback:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.sonyericsson.simcontacts.SIM_CONTACTS_READY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mCallback:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;-><init>(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mSimContactsReceiver:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;

    .line 72
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mSimContactsReceiver:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method private doRefresh(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 302
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;-><init>(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;Landroid/content/Context;)V

    .line 303
    .local v0, "contactCollector":Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->refresh(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method public static getContactSourceId(J)Ljava/lang/String;
    .locals 6
    .param p0, "aContactId"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 127
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->sContact2RawContactsMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 128
    .local v0, "rawContactIds":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 129
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;->-get1(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 131
    :cond_0
    return-object v4
.end method

.method public static getSimAccountName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "accountType"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string/jumbo v0, "com.sonyericsson.adncontacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string/jumbo v0, "SIM contacts"

    return-object v0

    .line 112
    :cond_0
    const-string/jumbo v0, "com.sonyericsson.adnsub1contacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const-string/jumbo v0, "SIM1 contacts"

    return-object v0

    .line 114
    :cond_1
    const-string/jumbo v0, "com.sonyericsson.adnsub2contacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    const-string/jumbo v0, "SIM2 contacts"

    return-object v0

    .line 117
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSimAccountType(J)Ljava/lang/String;
    .locals 6
    .param p0, "aContactId"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 96
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->sContact2RawContactsMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 97
    .local v0, "rawContacts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 98
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;->-get0(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 100
    :cond_0
    return-object v4
.end method

.method public static isSimAccountContact(J)Z
    .locals 4
    .param p0, "aContactId"    # J

    .prologue
    const/4 v3, 0x0

    .line 82
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->sContact2RawContactsMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 83
    .local v0, "rawContacts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 84
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;->-get0(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 86
    :cond_0
    return v3
.end method

.method public static declared-synchronized updateAdnContactsNow(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "contactId"    # J
    .param p2, "aRawContactId"    # J
    .param p4, "aAccountType"    # Ljava/lang/String;
    .param p5, "aAccountName"    # Ljava/lang/String;
    .param p6, "aSourceId"    # Ljava/lang/String;

    .prologue
    const-class v7, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    monitor-enter v7

    .line 147
    :try_start_0
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v1, "r":Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->sContact2RawContactsMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 150
    .local v0, "rawContacts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;>;"
    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "rawContacts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .restart local v0    # "rawContacts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;>;"
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->sContact2RawContactsMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 146
    return-void

    .end local v0    # "rawContacts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;>;"
    .end local v1    # "r":Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$RawContact;
    :catchall_0
    move-exception v2

    monitor-exit v7

    throw v2
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mSimContactsReceiver:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mSimContactsReceiver:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mSimContactsReceiver:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$SimContactsReadyReceiver;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mContactCollector:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mContactCollector:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;->destroy()V

    .line 176
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mContactCollector:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$ContactCollector;

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 180
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mHandler:Landroid/os/Handler;

    .line 169
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mIsActive:Z

    .line 184
    return-void
.end method

.method public refreshContacts()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector$1;-><init>(Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;)V

    .line 166
    const-wide/16 v2, 0x1f4

    .line 161
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mIsActive:Z

    .line 190
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mIsUpdateMissed:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mCallback:Ljava/lang/Runnable;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->doRefresh(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->mIsUpdateMissed:Z

    .line 188
    :cond_0
    return-void
.end method
