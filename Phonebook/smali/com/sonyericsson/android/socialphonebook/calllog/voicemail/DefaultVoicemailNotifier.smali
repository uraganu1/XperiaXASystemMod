.class public Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;
.super Ljava/lang/Object;
.source "DefaultVoicemailNotifier.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCallsQuery;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNewCallsQuery;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NameLookupQuery;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNameLookupQuery;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x1

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "DefaultVoicemailNotifier"

.field private static final TAG:Ljava/lang/String; = "DefaultVoicemailNotifier"

.field private static sInstance:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNameLookupQuery:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NameLookupQuery;

.field private final mNewCallsQuery:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCallsQuery;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    .line 91
    const-string/jumbo v2, "notification"

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 93
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 94
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNewCallsQuery;

    invoke-direct {v1, v0, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNewCallsQuery;-><init>(Landroid/content/ContentResolver;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNewCallsQuery;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mNewCallsQuery:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCallsQuery;

    .line 95
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNameLookupQuery;

    invoke-direct {v1, v0, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNameLookupQuery;-><init>(Landroid/content/ContentResolver;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$DefaultNameLookupQuery;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mNameLookupQuery:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NameLookupQuery;

    .line 96
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mResources:Landroid/content/res/Resources;

    .line 87
    return-void
.end method

.method private buildNotification([Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;Ljava/util/Map;)Landroid/app/Notification$Builder;
    .locals 10
    .param p1, "newCalls"    # [Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;
    .param p2, "callers"    # Ljava/lang/String;
    .param p3, "callToNotify"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Notification$Builder;"
        }
    .end annotation

    .prologue
    .local p4, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 181
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mResources:Landroid/content/res/Resources;

    .line 182
    array-length v6, p1

    .line 181
    new-array v7, v9, [Ljava/lang/Object;

    .line 182
    array-length v8, p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 181
    const v8, 0x7f0f0008

    invoke-virtual {v4, v8, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "title":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    const v6, 0x7f020085

    .line 183
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 186
    if-eqz p3, :cond_1

    const/4 v4, -0x1

    .line 183
    :goto_0
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 187
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->createMarkNewVoicemailsAsOldIntent()Landroid/app/PendingIntent;

    move-result-object v6

    .line 183
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 190
    .local v2, "notificationBuilder":Landroid/app/Notification$Builder;
    aget-object v1, p1, v5

    .line 196
    .local v1, "newCall":Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;
    array-length v4, p1

    if-ne v4, v9, :cond_2

    iget-object v4, v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mVoicemailUri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    sget-object v6, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 198
    .local v0, "contentIntent":Landroid/content/Intent;
    iget-object v4, v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 199
    const-string/jumbo v4, "number"

    .line 200
    iget-object v6, v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mNumber:Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string/jumbo v4, "protocol"

    .line 202
    const-string/jumbo v6, "tel:"

    .line 201
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string/jumbo v4, "voicemailuri"

    .line 204
    iget-object v6, v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 212
    if-eqz p3, :cond_0

    .line 213
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    new-array v6, v9, [Ljava/lang/Object;

    .line 214
    iget-object v7, p3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mNumber:Ljava/lang/String;

    invoke-interface {p4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v5

    const v5, 0x7f090120

    .line 213
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 216
    :cond_0
    return-object v2

    .end local v0    # "contentIntent":Landroid/content/Intent;
    .end local v1    # "newCall":Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;
    .end local v2    # "notificationBuilder":Landroid/app/Notification$Builder;
    :cond_1
    move v4, v5

    .line 186
    goto :goto_0

    .line 206
    .restart local v1    # "newCall":Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;
    .restart local v2    # "notificationBuilder":Landroid/app/Notification$Builder;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "contentIntent":Landroid/content/Intent;
    goto :goto_1
.end method

.method private createMarkNewVoicemailsAsOldIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 222
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.contacts.calllog.ACTION_MARK_NEW_VOICEMAILS_AS_OLD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getDisplayNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "numberPresentation"    # I

    .prologue
    .line 233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const-string/jumbo v0, ""

    return-object v0

    .line 236
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getNumberPresentationMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    .line 240
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isVoiceMailNumberOrUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getVoicemailDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 243
    :cond_2
    return-object p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailNotifier;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;

    monitor-enter v1

    .line 80
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->sInstance:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->sInstance:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;

    .line 84
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->sInstance:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isLatestCall(Landroid/net/Uri;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;)Z
    .locals 6
    .param p1, "voicemailUri"    # Landroid/net/Uri;
    .param p2, "newCall"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 167
    if-eqz p1, :cond_0

    iget-object v0, p2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mVoicemailUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 168
    :cond_0
    return v4

    .line 170
    :cond_1
    iget-object v0, p2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    return v5

    .line 172
    :cond_2
    iget-object v0, p2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mCallsUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 173
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iget-object v2, p2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mCallsUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 174
    return v5

    .line 176
    :cond_3
    return v4
.end method


# virtual methods
.method public clearNotification()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "DefaultVoicemailNotifier"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 100
    return-void
.end method

.method public updateNotification(Landroid/net/Uri;)V
    .locals 14
    .param p1, "newVoicemailUri"    # Landroid/net/Uri;

    .prologue
    const/4 v13, 0x1

    const/4 v8, 0x0

    .line 113
    const-string/jumbo v7, "DefaultVoicemailNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "The new Uri is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mNewCallsQuery:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCallsQuery;

    invoke-interface {v7}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCallsQuery;->query()[Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;

    move-result-object v5

    .line 116
    .local v5, "newCalls":[Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;
    if-eqz v5, :cond_0

    array-length v7, v5

    if-nez v7, :cond_1

    .line 117
    :cond_0
    const-string/jumbo v7, "DefaultVoicemailNotifier"

    const-string/jumbo v8, "No voicemails to notify about: clear the notification."

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->clearNotification()V

    .line 119
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x0

    .line 126
    .local v0, "callers":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 129
    .local v3, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 132
    .local v1, "latestCall":Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;
    array-length v9, v5

    move v7, v8

    .end local v0    # "callers":Ljava/lang/String;
    .end local v1    # "latestCall":Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;
    :goto_0
    if-ge v7, v9, :cond_7

    aget-object v4, v5, v7

    .line 134
    .local v4, "newCall":Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;
    iget-object v10, v4, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mNumber:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 135
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 137
    iget v10, v4, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mNumberPresentation:I

    if-ne v10, v13, :cond_2

    .line 138
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mNameLookupQuery:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NameLookupQuery;

    iget-object v11, v4, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mNumber:Ljava/lang/String;

    invoke-interface {v10, v11}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NameLookupQuery;->query(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 142
    iget-object v10, v4, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mNumber:Ljava/lang/String;

    iget v11, v4, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mNumberPresentation:I

    invoke-direct {p0, v10, v11}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->getDisplayNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 144
    iget-object v2, v4, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mNumber:Ljava/lang/String;

    .line 147
    :cond_3
    iget-object v10, v4, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mNumber:Ljava/lang/String;

    invoke-interface {v3, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 150
    move-object v0, v2

    .line 157
    :cond_4
    :goto_1
    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->isLatestCall(Landroid/net/Uri;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 158
    move-object v1, v4

    .line 132
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 152
    :cond_6
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mResources:Landroid/content/res/Resources;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    .line 153
    aput-object v0, v11, v8

    aput-object v2, v11, v13

    .line 152
    const v12, 0x7f0902fc

    invoke-virtual {v10, v12, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "callers":Ljava/lang/String;
    goto :goto_1

    .line 161
    .end local v0    # "callers":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "newCall":Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;
    :cond_7
    invoke-direct {p0, v5, v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->buildNotification([Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;Ljava/util/Map;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 163
    .local v6, "notificationBuilder":Landroid/app/Notification$Builder;
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v8, "DefaultVoicemailNotifier"

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v7, v8, v13, v9}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 112
    return-void
.end method
