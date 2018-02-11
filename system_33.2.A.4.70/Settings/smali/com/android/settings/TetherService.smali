.class public Lcom/android/settings/TetherService;
.super Landroid/app/Service;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherService$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mCurrentTethers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTypeIndex:I

.field private mEnableWifiAfterCheck:Z

.field private mInProvisionCheck:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/TetherService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/TetherService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/TetherService;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/TetherService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/TetherService;->mEnableWifiAfterCheck:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/TetherService;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/TetherService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherService;->mEnableWifiAfterCheck:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/TetherService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherService;->mInProvisionCheck:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/TetherService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TetherService;->disableBtTethering()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/TetherService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TetherService;->disableUsbTethering()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/TetherService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TetherService;->disableWifiTethering()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/TetherService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TetherService;->enableWifiTetheringIfNeeded()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/TetherService;I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/TetherService;->startProvisioning(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string/jumbo v0, "TetherService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/TetherService;->DEBUG:Z

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 258
    new-instance v0, Lcom/android/settings/TetherService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherService$1;-><init>(Lcom/android/settings/TetherService;)V

    iput-object v0, p0, Lcom/android/settings/TetherService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    return-void
.end method

.method private cancelAlarmIfNecessary()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 247
    iget-object v3, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    sget-boolean v3, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "TetherService"

    const-string/jumbo v4, "Tethering still active, not cancelling alarm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    return-void

    .line 251
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/TetherService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 253
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    const-string/jumbo v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 254
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 255
    sget-boolean v3, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "TetherService"

    const-string/jumbo v4, "Tethering no longer active, canceling recheck"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_2
    return-void
.end method

.method public static cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/TetherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "extraRemTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 240
    return-void
.end method

.method private disableBtTethering()V
    .locals 3

    .prologue
    .line 186
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 187
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 188
    new-instance v1, Lcom/android/settings/TetherService$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/TetherService$2;-><init>(Lcom/android/settings/TetherService;Landroid/bluetooth/BluetoothAdapter;)V

    .line 197
    const/4 v2, 0x5

    .line 188
    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 185
    :cond_0
    return-void
.end method

.method private disableUsbTethering()V
    .locals 2

    .prologue
    .line 181
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 182
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 179
    return-void
.end method

.method private disableWifiTethering()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/settingslib/TetherUtil;->setWifiTethering(ZLandroid/content/Context;)Z

    .line 175
    return-void
.end method

.method private enableWifiTetheringIfNeeded()V
    .locals 1

    .prologue
    .line 170
    invoke-static {p0}, Lcom/android/settingslib/TetherUtil;->isWifiTetherEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/settingslib/TetherUtil;->setWifiTethering(ZLandroid/content/Context;)Z

    .line 169
    :cond_0
    return-void
.end method

.method private scheduleAlarm()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 221
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/TetherService;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "extraRunProvision"

    const/4 v9, 0x1

    invoke-virtual {v7, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    invoke-static {p0, v10, v7, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 225
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 226
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {p0}, Lcom/android/settings/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 227
    const v9, 0x10e000f

    .line 226
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 228
    .local v8, "period":I
    const v1, 0x36ee80

    mul-int/2addr v1, v8

    int-to-long v4, v1

    .line 229
    .local v4, "periodMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    add-long v2, v10, v4

    .line 230
    .local v2, "firstTime":J
    sget-boolean v1, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "TetherService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Scheduling alarm at interval "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 220
    return-void
.end method

.method public static scheduleRecheckAlarm(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/TetherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "extraAddTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    const-string/jumbo v1, "extraSetAlarm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 213
    return-void
.end method

.method private startProvisioning(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/settings/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 203
    const v3, 0x104001a

    .line 202
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "provisionAction":Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "TetherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending provisioning broadcast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 205
    iget-object v4, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "TETHER_TYPE"

    iget-object v2, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 208
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/settings/TetherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/TetherService;->mInProvisionCheck:Z

    .line 201
    return-void
.end method

.method private stringToTethers(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "tethersStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    .line 149
    :cond_0
    const-string/jumbo v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "tethersSplit":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 151
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    return-object v1
.end method

.method private tethersToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "tethers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    .local v1, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 159
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 160
    if-eqz v2, :cond_0

    .line 161
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 163
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 71
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 72
    sget-boolean v2, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "TetherService"

    const-string/jumbo v3, "Creating WifiProvisionService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 74
    const v3, 0x104001b

    .line 73
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "provisionResponse":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/TetherService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v4, "android.permission.CONNECTIVITY_INTERNAL"

    const/4 v5, 0x0

    .line 75
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/settings/TetherService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    const-string/jumbo v2, "tetherPrefs"

    invoke-virtual {p0, v2, v6}, Lcom/android/settings/TetherService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "currentTethers"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/TetherService;->stringToTethers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    .line 79
    iput v6, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    .line 70
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 133
    iget-boolean v1, p0, Lcom/android/settings/TetherService;->mInProvisionCheck:Z

    if-eqz v1, :cond_0

    .line 134
    const-string/jumbo v1, "TetherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TetherService getting destroyed while mid-provisioning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    const-string/jumbo v1, "tetherPrefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/TetherService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "currentTethers"

    iget-object v3, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/settings/TetherService;->tethersToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    sget-boolean v1, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "TetherService"

    const-string/jumbo v2, "Destroying WifiProvisionService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 132
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    const-string/jumbo v2, "extraAddTetherType"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const-string/jumbo v2, "extraAddTetherType"

    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 87
    .local v1, "type":I
    iget-object v2, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    sget-boolean v2, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "TetherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding tether "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v1    # "type":I
    :cond_1
    const-string/jumbo v2, "extraRemTetherType"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    const-string/jumbo v2, "extraRemTetherType"

    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 95
    .restart local v1    # "type":I
    sget-boolean v2, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "TetherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Removing tether "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    iget-object v2, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 97
    .local v0, "index":I
    if-ltz v0, :cond_3

    .line 98
    iget-object v2, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 101
    iget v2, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    if-gt v0, v2, :cond_3

    iget v2, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    if-lez v2, :cond_3

    .line 102
    iget v2, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    .line 105
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/TetherService;->cancelAlarmIfNecessary()V

    .line 110
    .end local v0    # "index":I
    .end local v1    # "type":I
    :cond_4
    const-string/jumbo v2, "extraSetAlarm"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 111
    iget-object v2, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 112
    invoke-direct {p0}, Lcom/android/settings/TetherService;->scheduleAlarm()V

    .line 115
    :cond_5
    const-string/jumbo v2, "extraEnableWifiTether"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 116
    iput-boolean v6, p0, Lcom/android/settings/TetherService;->mEnableWifiAfterCheck:Z

    .line 119
    :cond_6
    const-string/jumbo v2, "extraRunProvision"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 120
    iget v2, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    invoke-direct {p0, v2}, Lcom/android/settings/TetherService;->startProvisioning(I)V

    .line 128
    :cond_7
    return v6

    .line 121
    :cond_8
    iget-boolean v2, p0, Lcom/android/settings/TetherService;->mInProvisionCheck:Z

    if-nez v2, :cond_7

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/TetherService;->stopSelf()V

    .line 124
    const/4 v2, 0x2

    return v2
.end method
