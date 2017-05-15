.class public Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;
.super Landroid/app/Fragment;
.source "AppUsageDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;,
        Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$1;
    }
.end annotation


# instance fields
.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageName:Ljava/lang/String;

.field private mRestrictButton:Landroid/widget/Button;


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->enableForceStop(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->forceStopPackage()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->uninstallPackage()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 243
    new-instance v0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$1;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    return-void
.end method

.method private checkForceStop()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 217
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 218
    .local v10, "uid":I
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 219
    const-string/jumbo v2, "device_policy"

    .line 218
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 220
    .local v9, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0, v6}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->enableForceStop(Z)V

    .line 216
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->isPackageStopped()Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    invoke-direct {p0, v5}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->enableForceStop(Z)V

    goto :goto_0

    .line 231
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 232
    const-string/jumbo v2, "package"

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->mPackageName:Ljava/lang/String;

    .line 231
    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    .line 234
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->mPackageName:Ljava/lang/String;

    aput-object v4, v2, v6

    .line 233
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string/jumbo v0, "android.intent.extra.UID"

    invoke-virtual {v1, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 239
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    .line 238
    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private enableForceStop(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->mRestrictButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 162
    return-void
.end method

.method private forceStopPackage()V
    .locals 4

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 204
    const-string/jumbo v3, "activity"

    .line 203
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 205
    .local v0, "activityManager":Landroid/app/ActivityManager;
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->updatePackageInfo()V

    .line 207
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->checkForceStop()V

    .line 209
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->isPackageStopped()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.SUPER_STAMINA_FORCE_STOP_APP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 202
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private getBytesAsString(J)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # J

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDateString(J)Ljava/lang/String;
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDayString(J)Ljava/lang/String;
    .locals 9
    .param p1, "date"    # J

    .prologue
    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 168
    .local v2, "now":J
    sub-long v4, v2, p1

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    long-to-int v0, v4

    .line 169
    .local v0, "days":I
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 170
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 169
    const v5, 0x7f110012

    invoke-virtual {v1, v5, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isPackageStopped()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 115
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setIntentAndFinish()V
    .locals 4

    .prologue
    .line 251
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "UPDATE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 254
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 250
    return-void
.end method

.method private setUpData(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 120
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v7, "package_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->mPackageName:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->updatePackageInfo()V

    .line 124
    new-array v7, v9, [Ljava/lang/Object;

    .line 125
    const-string/jumbo v10, "app_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    .line 124
    const v10, 0x7f0b0c09

    invoke-virtual {v1, v10, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "str":Ljava/lang/String;
    const v7, 0x7f1301f6

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 127
    .local v5, "tv":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const-string/jumbo v7, "last_used_time"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 130
    .local v2, "detailsValue":J
    const v7, 0x7f13020c

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "tv":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 131
    .restart local v5    # "tv":Landroid/widget/TextView;
    invoke-direct {p0, v2, v3}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->getDayString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const-string/jumbo v7, "installed_time"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 134
    const v7, 0x7f13020e

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "tv":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 135
    .restart local v5    # "tv":Landroid/widget/TextView;
    invoke-direct {p0, v2, v3}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->getDateString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const-string/jumbo v7, "data_traffic"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 138
    const v7, 0x7f130210

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "tv":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 139
    .restart local v5    # "tv":Landroid/widget/TextView;
    invoke-direct {p0, v2, v3}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->getBytesAsString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const v7, 0x7f1301f8

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 142
    .local v6, "uninstallButton":Landroid/widget/Button;
    new-instance v7, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$2;

    invoke-direct {v7, p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$2;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v7, 0x7f13020a

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->mRestrictButton:Landroid/widget/Button;

    .line 150
    iget-object v10, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->mRestrictButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->isPackageStopped()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v8

    :goto_0
    invoke-virtual {v10, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 151
    iget-object v7, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->mRestrictButton:Landroid/widget/Button;

    new-instance v8, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$3;

    invoke-direct {v8, p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$3;-><init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void

    :cond_0
    move v7, v9

    .line 150
    goto :goto_0
.end method

.method private uninstallPackage()V
    .locals 4

    .prologue
    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 183
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 184
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 181
    return-void
.end method

.method private updatePackageInfo()V
    .locals 4

    .prologue
    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->setIntentAndFinish()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 190
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 191
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->setIntentAndFinish()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 92
    const v1, 0x7f040105

    const/4 v2, 0x0

    .line 91
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->setUpData(Landroid/view/View;)V

    .line 97
    instance-of v1, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 101
    :cond_0
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 85
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->updatePackageInfo()V

    .line 86
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->checkForceStop()V

    .line 83
    return-void
.end method
