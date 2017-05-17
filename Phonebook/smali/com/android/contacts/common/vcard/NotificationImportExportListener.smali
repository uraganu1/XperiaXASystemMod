.class public Lcom/android/contacts/common/vcard/NotificationImportExportListener;
.super Ljava/lang/Object;
.source "NotificationImportExportListener.java"

# interfaces
.implements Lcom/android/contacts/common/vcard/VCardImportExportListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final DEFAULT_NOTIFICATION_TAG:Ljava/lang/String; = "VCardServiceProgress"

.field public static final FAILURE_NOTIFICATION_TAG:Ljava/lang/String; = "VCardServiceFailure"

.field private static mProgressNotificationBuilders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Notification$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 62
    sput-object v0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mProgressNotificationBuilders:Landroid/util/SparseArray;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 74
    const-string/jumbo v0, "notification"

    .line 73
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method private static constructCancelNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jobId"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 270
    sget-object v0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mProgressNotificationBuilders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 271
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 272
    const v1, 0x1080078

    .line 271
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 274
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private static constructFinishNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)Landroid/app/Notification;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "jobId"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "type"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 292
    sget-object v0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mProgressNotificationBuilders:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 293
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 296
    if-ne p5, v3, :cond_0

    const v0, 0x1080082

    .line 293
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 301
    if-eqz p4, :cond_1

    .end local p4    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-static {p0, v2, p4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 297
    .restart local p4    # "intent":Landroid/content/Intent;
    :cond_0
    const v0, 0x1080089

    goto :goto_0

    .line 302
    :cond_1
    new-instance p4, Landroid/content/Intent;

    .end local p4    # "intent":Landroid/content/Intent;
    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    goto :goto_1
.end method

.method public static constructImportFailureNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 314
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 315
    const v1, 0x1080078

    .line 314
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 316
    const v1, 0x7f090180

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 318
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 314
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private static constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "tickerText"    # Ljava/lang/String;
    .param p4, "jobId"    # I
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "totalCount"    # I
    .param p7, "currentCount"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 234
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/contacts/common/vcard/CancelActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v6, "invalidscheme"

    invoke-virtual {v3, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v6, "invalidauthority"

    invoke-virtual {v3, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 236
    const-string/jumbo v6, "job_id"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 235
    invoke-virtual {v3, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 237
    const-string/jumbo v6, "display_name"

    .line 235
    invoke-virtual {v3, v6, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 238
    const-string/jumbo v6, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 235
    invoke-virtual {v3, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 239
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 240
    sget-object v3, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mProgressNotificationBuilders:Landroid/util/SparseArray;

    invoke-virtual {v3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Builder;

    .line 241
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-nez v0, :cond_0

    .line 242
    new-instance v0, Landroid/app/Notification$Builder;

    .end local v0    # "builder":Landroid/app/Notification$Builder;
    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 243
    .restart local v0    # "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 244
    sget-object v3, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mProgressNotificationBuilders:Landroid/util/SparseArray;

    invoke-virtual {v3, p4, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 246
    :cond_0
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 247
    const/4 v3, -0x1

    if-ne p6, v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v0, p6, p7, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 250
    if-ne p1, v4, :cond_3

    const v3, 0x1080081

    .line 247
    :goto_1
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 252
    invoke-static {p0, p4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 247
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 253
    if-lez p6, :cond_1

    .line 254
    new-array v3, v4, [Ljava/lang/Object;

    .line 255
    mul-int/lit8 v4, p7, 0x64

    div-int/2addr v4, p6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 254
    const v4, 0x7f09017f

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 257
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    return-object v3

    :cond_2
    move v3, v5

    .line 247
    goto :goto_0

    .line 251
    :cond_3
    const v3, 0x1080088

    goto :goto_1
.end method

.method private doCancelExportNotification(Lcom/android/contacts/common/vcard/ExportRequest;I)V
    .locals 4
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2, "jobId"    # I

    .prologue
    .line 355
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f090172

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "description":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 357
    iget-object v3, p1, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-static {v2, p2, v0, v3}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 358
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v3, "VCardServiceProgress"

    invoke-virtual {v2, v3, p2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 354
    return-void
.end method

.method private doExportProgressNotification(ILandroid/net/Uri;II)V
    .locals 9
    .param p1, "jobId"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "totalCount"    # I
    .param p4, "currentCount"    # I

    .prologue
    .line 345
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 347
    .local v5, "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v1, 0x7f0902a1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 349
    const/4 v1, 0x2

    move-object v3, v2

    move v4, p1

    move v6, p3

    move v7, p4

    .line 348
    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 351
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "VCardServiceProgress"

    invoke-virtual {v0, v1, p1, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 344
    return-void
.end method

.method private doFinishExportNotification(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "jobId"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 363
    new-instance v4, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const-class v1, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    .local v4, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 365
    const/4 v5, 0x2

    move-object v1, p2

    move v2, p1

    move-object v3, p3

    .line 364
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructFinishNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)Landroid/app/Notification;

    move-result-object v6

    .line 366
    .local v6, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "VCardServiceProgress"

    invoke-virtual {v0, v1, p1, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 362
    return-void
.end method

.method private showCreatedContact(Landroid/net/Uri;)V
    .locals 10
    .param p1, "createdUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 141
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 142
    .local v4, "rawContactId":J
    iget-object v6, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->queryForContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v0

    .line 144
    .local v0, "contactId":J
    const-wide/16 v8, -0x1

    cmp-long v6, v0, v8

    if-eqz v6, :cond_0

    .line 145
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 147
    .local v2, "contactUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 148
    iget-object v8, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    move-object v6, v7

    .line 149
    check-cast v6, Landroid/graphics/Rect;

    const/4 v9, 0x4

    .line 148
    invoke-static {v8, v6, v2, v9, v7}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 152
    .local v3, "showContactIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v6, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 140
    .end local v2    # "contactUri":Landroid/net/Uri;
    .end local v3    # "showContactIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 80
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 81
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 82
    return v2
.end method

.method public onCancelRequest(Lcom/android/contacts/common/vcard/CancelRequest;I)V
    .locals 5
    .param p1, "request"    # Lcom/android/contacts/common/vcard/CancelRequest;
    .param p2, "type"    # I

    .prologue
    .line 193
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 194
    const v3, 0x7f090179

    .line 193
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "description":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    iget v3, p1, Lcom/android/contacts/common/vcard/CancelRequest;->jobId:I

    .line 197
    iget-object v4, p1, Lcom/android/contacts/common/vcard/CancelRequest;->displayName:Ljava/lang/String;

    .line 196
    invoke-static {v2, v3, v0, v4}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 198
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v3, "VCardServiceProgress"

    iget v4, p1, Lcom/android/contacts/common/vcard/CancelRequest;->jobId:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 192
    return-void

    .line 194
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 195
    const v3, 0x7f090172

    .line 194
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "description":Ljava/lang/String;
    goto :goto_0
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 323
    return-void
.end method

.method public onExportCanceled(Lcom/android/contacts/common/vcard/ExportRequest;I)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2, "jobId"    # I

    .prologue
    .line 329
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->doCancelExportNotification(Lcom/android/contacts/common/vcard/ExportRequest;I)V

    .line 328
    return-void
.end method

.method public onExportFailed(Lcom/android/contacts/common/vcard/ExportRequest;Ljava/lang/String;)V
    .locals 2
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 187
    return-void
.end method

.method public onExportFinished(Lcom/android/contacts/common/vcard/ExportRequest;ILjava/lang/String;)V
    .locals 1
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2, "jobId"    # I
    .param p3, "errorReason"    # Ljava/lang/String;

    .prologue
    .line 334
    iget-object v0, p1, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->doFinishExportNotification(ILjava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public onExportParsed(Lcom/android/contacts/common/vcard/ExportRequest;ILandroid/net/Uri;II)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2, "jobId"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "currentCount"    # I
    .param p5, "totalCount"    # I

    .prologue
    .line 340
    invoke-direct {p0, p2, p3, p5, p4}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->doExportProgressNotification(ILandroid/net/Uri;II)V

    .line 339
    return-void
.end method

.method public onExportProcessed(Lcom/android/contacts/common/vcard/ExportRequest;I)V
    .locals 9
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2, "jobId"    # I

    .prologue
    const/4 v7, 0x0

    .line 177
    iget-object v0, p1, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 179
    aput-object v5, v1, v7

    .line 178
    const v3, 0x7f09017a

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 181
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 182
    const/4 v1, 0x2

    const/4 v6, -0x1

    move-object v3, v2

    move v4, p2

    .line 181
    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 183
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "VCardServiceProgress"

    invoke-virtual {v0, v1, p2, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 176
    return-void
.end method

.method public onImportCanceled(Lcom/android/contacts/common/vcard/ImportRequest;I)V
    .locals 4
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I

    .prologue
    .line 169
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f090179

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "description":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 171
    iget-object v3, p1, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    .line 170
    invoke-static {v2, p2, v0, v3}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 172
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v3, "VCardServiceProgress"

    invoke-virtual {v2, v3, p2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 168
    return-void
.end method

.method public onImportFailed(Lcom/android/contacts/common/vcard/ImportRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    .line 164
    iget-object v1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v2, 0x7f090178

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    return-void
.end method

.method public onImportFinished(Lcom/android/contacts/common/vcard/ImportRequest;ILandroid/net/Uri;Z)V
    .locals 7
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "createdUri"    # Landroid/net/Uri;
    .param p4, "showFromNfc"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v2, 0x7f090177

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "description":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const-class v2, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-direct {v4, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v4, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 133
    iget-object v3, p1, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    const/4 v5, 0x1

    move v2, p2

    .line 132
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructFinishNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)Landroid/app/Notification;

    move-result-object v6

    .line 134
    .local v6, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v2, "VCardServiceProgress"

    invoke-virtual {v0, v2, p2, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 135
    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 136
    invoke-direct {p0, p3}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->showCreatedContact(Landroid/net/Uri;)V

    .line 129
    :cond_0
    return-void
.end method

.method public onImportParsed(Lcom/android/contacts/common/vcard/ImportRequest;ILcom/sonymobile/android/vcard/VCardEntry;II)V
    .locals 10
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "entry"    # Lcom/sonymobile/android/vcard/VCardEntry;
    .param p4, "currentCount"    # I
    .param p5, "totalCount"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 113
    invoke-virtual {p3}, Lcom/sonymobile/android/vcard/VCardEntry;->isIgnorable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 117
    .local v9, "totalCountString":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 118
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v9, v4, v1

    invoke-virtual {p3}, Lcom/sonymobile/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 117
    const v5, 0x7f090176

    invoke-virtual {v0, v5, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "tickerText":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    new-array v4, v1, [Ljava/lang/Object;

    .line 120
    invoke-virtual {p3}, Lcom/sonymobile/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 119
    const v5, 0x7f090175

    invoke-virtual {v0, v5, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    iget-object v5, p1, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    move v4, p2

    move v6, p5

    move v7, p4

    .line 121
    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 124
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "VCardServiceProgress"

    invoke-virtual {v0, v1, p2, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 112
    return-void
.end method

.method public onImportProcessed(Lcom/android/contacts/common/vcard/ImportRequest;II)V
    .locals 9
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "sequence"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 90
    iget-object v0, p1, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 91
    iget-object v5, p1, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    .line 92
    .local v5, "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v5, v3, v7

    const v4, 0x7f090174

    invoke-virtual {v0, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "message":Ljava/lang/String;
    :goto_0
    if-nez p3, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 106
    const/4 v6, -0x1

    move-object v3, v2

    move v4, p2

    .line 105
    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 107
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "VCardServiceProgress"

    invoke-virtual {v0, v1, p2, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 86
    return-void

    .line 94
    .end local v2    # "message":Ljava/lang/String;
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v8    # "notification":Landroid/app/Notification;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f090182

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 95
    .restart local v5    # "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 96
    const v3, 0x7f090173

    .line 95
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_0
.end method
