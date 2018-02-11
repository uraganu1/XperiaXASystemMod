.class public Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;
.super Ljava/lang/Object;
.source "AppUsagePackageInfo.java"


# static fields
.field private static dateFormatter:Ljava/text/SimpleDateFormat;


# instance fields
.field private mAppName:Ljava/lang/CharSequence;

.field private mCpuUsage:J

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLastUsed:J

.field private mNetworkData:J

.field private mPackageName:Ljava/lang/String;

.field private mTimeInstalled:J

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static createBatteryUsagePackageInfo(Landroid/content/pm/PackageManager;ILjava/lang/String;JJ)Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;
    .locals 9
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "uid"    # I
    .param p2, "lastUsed"    # Ljava/lang/String;
    .param p3, "cpu"    # J
    .param p5, "networkData"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 46
    const/4 v2, 0x0

    .line 48
    .local v2, "info":Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "packages":[Ljava/lang/String;
    if-nez v4, :cond_0

    .line 51
    return-object v7

    .line 55
    :cond_0
    aget-object v3, v4, v6

    .line 57
    .local v3, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 62
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 63
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1

    .line 64
    return-object v7

    .line 58
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v7

    .line 67
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    new-instance v2, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    .end local v2    # "info":Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;
    invoke-direct {v2}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;-><init>()V

    .line 68
    .local v2, "info":Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;
    iput-object v3, v2, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mPackageName:Ljava/lang/String;

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v2, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mAppName:Ljava/lang/CharSequence;

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v2, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 71
    iget-wide v6, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v6, v2, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mTimeInstalled:J

    .line 72
    invoke-direct {v2, p2}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->setLastUsedTime(Ljava/lang/String;)V

    .line 73
    iput-wide p3, v2, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mCpuUsage:J

    .line 74
    iput-wide p5, v2, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mNetworkData:J

    .line 75
    iput p1, v2, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mUid:I

    .line 77
    return-object v2
.end method

.method private setLastUsedTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 118
    :try_start_0
    sget-object v2, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 119
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mLastUsed:J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "d":Ljava/util/Date;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/text/ParseException;
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mLastUsed:J

    goto :goto_0
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mAppName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCpuUsage()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mCpuUsage:J

    return-wide v0
.end method

.method public getInstalledTime()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mTimeInstalled:J

    return-wide v0
.end method

.method public getLastUsedTime()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mLastUsed:J

    return-wide v0
.end method

.method public getNetworkData()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mNetworkData:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mUid:I

    return v0
.end method
