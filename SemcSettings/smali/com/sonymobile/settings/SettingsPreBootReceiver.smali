.class public Lcom/sonymobile/settings/SettingsPreBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsPreBootReceiver.java"


# static fields
.field private static final EXCLUDED_SYSTEM_BAR_ICONS:Ljava/lang/String; = "excluded_system_bar_icons"

.field private static final STRING_LOCATION_WITH_DIVIDER:Ljava/lang/String; = "location;"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isLocationRemoved([Ljava/lang/String;)Z
    .locals 5
    .param p1, "systemIcons"    # [Ljava/lang/String;

    .prologue
    .line 56
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 57
    .local v3, "systemIcon":Ljava/lang/String;
    const-string v4, "location"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    const/4 v4, 0x0

    .line 61
    .end local v3    # "systemIcon":Ljava/lang/String;
    :goto_1
    return v4

    .line 56
    .restart local v3    # "systemIcon":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v3    # "systemIcon":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x2

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "systemIcons":[Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/sonymobile/settings/SettingsPreBootReceiver;->isLocationRemoved([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "excluded_system_bar_icons"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "excludedSystemIcons":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, "location;"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    const-string v4, "location;"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "excluded_system_bar_icons"

    invoke-static {v4, v5, v0, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 48
    .end local v0    # "excludedSystemIcons":Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-class v4, Lcom/sonymobile/settings/SettingsPreBootReceiver;

    invoke-direct {v2, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v2, "receiver":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 51
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 53
    return-void
.end method
