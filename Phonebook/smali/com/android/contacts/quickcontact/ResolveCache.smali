.class public Lcom/android/contacts/quickcontact/ResolveCache;
.super Ljava/lang/Object;
.source "ResolveCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/ResolveCache$Entry;,
        Lcom/android/contacts/quickcontact/ResolveCache$1;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/contacts/quickcontact/ResolveCache;

.field private static final sPreferResolve:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/quickcontact/ResolveCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lcom/android/contacts/quickcontact/ResolveCache;->flush()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 52
    const-string/jumbo v1, "com.android.email"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "com.sonymobile.email"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "com.google.android.email"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "com.android.phone"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "com.google.android.apps.maps"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "com.android.chrome"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "com.google.android.browser"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "com.android.browser"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 51
    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/ResolveCache;->sPreferResolve:Ljava/util/HashSet;

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/android/contacts/quickcontact/ResolveCache$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/ResolveCache$1;-><init>(Lcom/android/contacts/quickcontact/ResolveCache;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    .line 116
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 115
    return-void
.end method

.method private static declared-synchronized flush()V
    .locals 2

    .prologue
    const-class v0, Lcom/android/contacts/quickcontact/ResolveCache;

    monitor-enter v0

    .line 90
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 89
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v3, Lcom/android/contacts/quickcontact/ResolveCache;

    monitor-enter v3

    .line 74
    :try_start_0
    sget-object v2, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;

    if-nez v2, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    .local v0, "applicationContext":Landroid/content/Context;
    new-instance v2, Lcom/android/contacts/quickcontact/ResolveCache;

    invoke-direct {v2, v0}, Lcom/android/contacts/quickcontact/ResolveCache;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;

    .line 79
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 84
    sget-object v2, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;

    iget-object v2, v2, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    .end local v0    # "applicationContext":Landroid/content/Context;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    sget-object v2, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 213
    return-void
.end method

.method protected getBestResolve(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p2, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v9, 0x0

    .line 170
    iget-object v7, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 171
    const/high16 v8, 0x10000

    .line 170
    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 172
    .local v2, "foundResolve":Landroid/content/pm/ResolveInfo;
    iget v7, v2, Landroid/content/pm/ResolveInfo;->match:I

    .line 173
    const/high16 v8, 0xfff0000

    .line 172
    and-int/2addr v7, v8

    if-nez v7, :cond_0

    const/4 v1, 0x1

    .line 175
    .local v1, "foundDisambig":Z
    :goto_0
    if-nez v1, :cond_1

    .line 177
    return-object v2

    .line 172
    .end local v1    # "foundDisambig":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "foundDisambig":Z
    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x0

    .line 182
    .local v0, "firstSystem":Landroid/content/pm/ResolveInfo;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v0    # "firstSystem":Landroid/content/pm/ResolveInfo;
    .local v4, "info$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 183
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    .line 185
    .local v6, "isSystem":Z
    :goto_2
    sget-object v7, Lcom/android/contacts/quickcontact/ResolveCache;->sPreferResolve:Ljava/util/HashSet;

    .line 186
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 185
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 188
    .local v5, "isPrefer":Z
    if-eqz v5, :cond_4

    return-object v3

    .line 183
    .end local v5    # "isPrefer":Z
    .end local v6    # "isSystem":Z
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "isSystem":Z
    goto :goto_2

    .line 189
    .restart local v5    # "isPrefer":Z
    :cond_4
    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    move-object v0, v3

    .local v0, "firstSystem":Landroid/content/pm/ResolveInfo;
    goto :goto_1

    .line 193
    .end local v0    # "firstSystem":Landroid/content/pm/ResolveInfo;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v5    # "isPrefer":Z
    .end local v6    # "isSystem":Z
    :cond_5
    if-eqz v0, :cond_6

    :goto_3
    return-object v0

    :cond_6
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    move-object v0, v7

    goto :goto_3
.end method

.method protected getEntry(Ljava/lang/String;Landroid/content/Intent;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    .locals 8
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 125
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    .line 126
    .local v1, "entry":Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    if-eqz v1, :cond_0

    return-object v1

    .line 127
    :cond_0
    new-instance v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    .end local v1    # "entry":Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    invoke-direct {v1, v6}, Lcom/android/contacts/quickcontact/ResolveCache$Entry;-><init>(Lcom/android/contacts/quickcontact/ResolveCache$Entry;)V

    .line 129
    .restart local v1    # "entry":Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    const-string/jumbo v5, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 130
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isSipSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 134
    .end local p2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 135
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 136
    const/high16 v6, 0x10000

    .line 135
    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 139
    .local v3, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 140
    .local v0, "bestResolve":Landroid/content/pm/ResolveInfo;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 141
    .local v4, "size":I
    if-ne v4, v7, :cond_5

    .line 142
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bestResolve":Landroid/content/pm/ResolveInfo;
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 147
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 148
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 150
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iput-object v0, v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    .line 151
    iput-object v2, v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    .line 155
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "size":I
    :cond_3
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-object v1

    .line 131
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_4
    const/4 p2, 0x0

    .local p2, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 143
    .end local p2    # "intent":Landroid/content/Intent;
    .restart local v0    # "bestResolve":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "size":I
    :cond_5
    if-le v4, v7, :cond_2

    .line 144
    invoke-virtual {p0, p2, v3}, Lcom/android/contacts/quickcontact/ResolveCache;->getBestResolve(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .local v0, "bestResolve":Landroid/content/pm/ResolveInfo;
    goto :goto_1
.end method

.method public getIcon(Ljava/lang/String;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/quickcontact/ResolveCache;->getEntry(Ljava/lang/String;Landroid/content/Intent;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hasResolve(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/quickcontact/ResolveCache;->getEntry(Ljava/lang/String;Landroid/content/Intent;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
