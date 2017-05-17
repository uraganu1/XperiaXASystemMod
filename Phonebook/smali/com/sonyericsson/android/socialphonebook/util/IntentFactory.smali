.class public final Lcom/sonyericsson/android/socialphonebook/util/IntentFactory;
.super Ljava/lang/Object;
.source "IntentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSetCustomRingtoneIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentRingtoneString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 61
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    const-string/jumbo v3, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    const-string/jumbo v3, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, "ringtoneUri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 71
    .local v0, "currentRingtone":Landroid/media/Ringtone;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 74
    .local v2, "ringtoneUri":Landroid/net/Uri;
    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 76
    .end local v0    # "currentRingtone":Landroid/media/Ringtone;
    .end local v2    # "ringtoneUri":Landroid/net/Uri;
    :cond_0
    if-nez v0, :cond_1

    .line 78
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 82
    :cond_1
    const-string/jumbo v3, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 84
    return-object v1
.end method

.method public static getAccountsAndSyncSettingsIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "authorities"

    .line 48
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "com.android.contacts"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    return-object v0
.end method

.method public static getExplicitServiceIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 120
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 121
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 122
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 121
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 124
    :cond_0
    return-object v1
.end method

.method public static getViewContactIntentById(J)Landroid/content/Intent;
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "uri":Landroid/net/Uri;
    const-wide/16 v2, -0x1

    cmp-long v1, p0, v2

    if-nez v1, :cond_0

    .line 97
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 102
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/IntentFactory;->getViewContactIntentByUri(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 99
    .local v0, "uri":Landroid/net/Uri;
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public static getViewContactIntentByUri(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public static isActivityForIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 149
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    .line 148
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 150
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isServiceForIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 136
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    .line 135
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 137
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
