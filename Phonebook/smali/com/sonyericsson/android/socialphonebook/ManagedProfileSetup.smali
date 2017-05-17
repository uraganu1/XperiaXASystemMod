.class public Lcom/sonyericsson/android/socialphonebook/ManagedProfileSetup;
.super Landroid/content/BroadcastReceiver;
.source "ManagedProfileSetup.java"


# static fields
.field private static final DIALER_COMPONENT:Ljava/lang/String; = "com.sonyericsson.android.socialphonebook.DialerEntryActivity"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ManagedProfileSetup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ManagedProfileSetup;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isManagedProfile(Landroid/os/UserManager;)Z
    .locals 2
    .param p1, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 63
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "broadcast"    # Landroid/content/Intent;

    .prologue
    .line 47
    const-string/jumbo v3, "user"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 49
    .local v2, "um":Landroid/os/UserManager;
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ManagedProfileSetup;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ManagedProfileSetup;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 53
    const-string/jumbo v5, " for managed profile. Disabling Dialer in the managed profile."

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 56
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sonyericsson.android.socialphonebook.DialerEntryActivity"

    invoke-direct {v0, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    .local v0, "dialer":Landroid/content/ComponentName;
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 57
    invoke-virtual {v1, v0, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 46
    return-void
.end method
