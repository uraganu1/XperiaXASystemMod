.class public final Lcom/squareup/leakcanary/internal/LeakCanaryInternals;
.super Ljava/lang/Object;
.source "LeakCanaryInternals.java"


# static fields
.field private static final fileIoExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "File-IO"

    .line 52
    invoke-static {v0}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->fileIoExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static classSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x2e

    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .local v0, "separator":I
    const/4 v1, -0x1

    .line 61
    if-eq v0, v1, :cond_0

    .line 64
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 62
    :cond_0
    return-object p0
.end method

.method public static newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "threadName"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v0, Lcom/squareup/leakcanary/internal/LeakCanarySingleThreadFactory;

    invoke-direct {v0, p0}, Lcom/squareup/leakcanary/internal/LeakCanarySingleThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static showNotification(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v8, 0x1

    const-string/jumbo v5, "notification"

    .line 134
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 138
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 152
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/squareup/leakcanary/R$drawable;->leak_canary_notification:I

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 159
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1

    .line 162
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .local v3, "notification":Landroid/app/Notification;
    :goto_0
    const v5, -0x21504111

    .line 165
    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 166
    return-void

    .line 139
    .end local v3    # "notification":Landroid/app/Notification;
    :cond_0
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 140
    .restart local v3    # "notification":Landroid/app/Notification;
    sget v5, Lcom/squareup/leakcanary/R$drawable;->leak_canary_notification:I

    iput v5, v3, Landroid/app/Notification;->icon:I

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/app/Notification;->when:J

    .line 142
    iget v5, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v3, Landroid/app/Notification;->flags:I

    :try_start_0
    const-class v5, Landroid/app/Notification;

    const-string/jumbo v6, "setLatestEventInfo"

    const/4 v7, 0x4

    .line 144
    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/CharSequence;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/CharSequence;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-class v9, Landroid/app/PendingIntent;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x4

    .line 147
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 160
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "notification":Landroid/app/Notification;
    .restart local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .restart local v3    # "notification":Landroid/app/Notification;
    goto :goto_0
.end method
