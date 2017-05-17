.class public abstract Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;
.super Ljava/lang/Object;
.source "CallerIdContact.java"


# static fields
.field protected static final CITYID_AOSP_VERSION:Ljava/lang/String; = "2.4.1"

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected mCityIdDisplayName:Ljava/lang/String;

.field protected mCityName:Ljava/lang/String;

.field protected mCompany:Ljava/lang/String;

.field protected mCountryName:Ljava/lang/String;

.field protected mFirstName:Ljava/lang/String;

.field protected mLastName:Ljava/lang/String;

.field protected mLocationName:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mNameIdDisplayName:Ljava/lang/String;

.field protected mOperatorName:Ljava/lang/String;

.field protected mStateAbrv:Ljava/lang/String;

.field protected mStateName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mCityName:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mStateName:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mStateAbrv:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mCountryName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mCityIdDisplayName:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mLocationName:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mOperatorName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mName:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mFirstName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mLastName:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mCompany:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mNameIdDisplayName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private static createCallerIdContact(Landroid/content/pm/PackageManager;)Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;
    .locals 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 91
    if-eqz p0, :cond_1

    .line 92
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;-><init>()V

    return-object v0

    .line 94
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;-><init>()V

    return-object v0

    .line 101
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CityID is NOT available"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-object v2
.end method

.method public static doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "callType"    # I

    .prologue
    const/4 v3, 0x0

    .line 49
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "City ID AOSP Version: 2.4.1"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    :cond_0
    return-object v3

    .line 55
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->createCallerIdContact(Landroid/content/pm/PackageManager;)Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;

    move-result-object v0

    .line 56
    .local v0, "cidContact":Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;
    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->implLookup(Landroid/content/ContentResolver;Ljava/lang/CharSequence;I)V

    .line 60
    :cond_2
    return-object v0
.end method

.method public static isCallerIdSupported(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 71
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_1

    .line 73
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/ChinaCallerIdContact;->getProviderName()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    return v3

    .line 76
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CequintCallerIdContact;->getProviderName()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 78
    return v3

    .line 81
    :cond_1
    return v2
.end method


# virtual methods
.method public abstract computeCityIdDisplayName(ILandroid/text/TextPaint;)Ljava/lang/String;
.end method

.method public abstract createNameIdDisplayName()Ljava/lang/String;
.end method

.method protected abstract implLookup(Landroid/content/ContentResolver;Ljava/lang/CharSequence;I)V
.end method

.method protected logLoadedValues()V
    .locals 3

    .prologue
    .line 138
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "City        : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "State       : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mStateName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ST          : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Country     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mCountryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Name        : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "First name  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mFirstName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Last name   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mLastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Company     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->mCompany:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method
