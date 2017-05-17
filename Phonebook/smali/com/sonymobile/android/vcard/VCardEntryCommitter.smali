.class public Lcom/sonymobile/android/vcard/VCardEntryCommitter;
.super Ljava/lang/Object;
.source "VCardEntryCommitter.java"

# interfaces
.implements Lcom/sonymobile/android/vcard/VCardEntryHandler;


# static fields
.field public static LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mCounter:I

.field private final mCreatedUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeToCommit:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "vCard"

    .line 45
    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    .line 55
    return-void
.end method

.method private pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "com.android.contacts"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 93
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v0, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 96
    sget-object v2, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "%s: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-object v0

    :catch_1
    move-exception v1

    .line 99
    sget-object v2, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "%s: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-object v0
.end method


# virtual methods
.method public getCreatedUris()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onEnd()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 63
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 67
    :goto_0
    invoke-static {}, Lcom/sonymobile/android/vcard/VCardConfig;->showPerformanceLog()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    :goto_1
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_1
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "time to commit entries: %d ms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mTimeToCommit:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onEntryCreated(Lcom/sonymobile/android/vcard/VCardEntry;)V
    .locals 6

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 75
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Lcom/sonymobile/android/vcard/VCardEntry;->constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    .line 76
    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mCounter:I

    .line 77
    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mCounter:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 82
    :goto_0
    iget-wide v2, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mTimeToCommit:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mTimeToCommit:J

    .line 83
    return-void

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 79
    iput v2, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mCounter:I

    const/4 v2, 0x0

    .line 80
    iput-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method
