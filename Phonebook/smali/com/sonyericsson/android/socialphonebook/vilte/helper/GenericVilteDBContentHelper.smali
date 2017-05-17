.class public Lcom/sonyericsson/android/socialphonebook/vilte/helper/GenericVilteDBContentHelper;
.super Ljava/lang/Object;
.source "GenericVilteDBContentHelper.java"


# static fields
.field private static final VILTE_MIMETYPE:Ljava/lang/String; = "vnd.android.cursor.item/com.gsma.services.rcs.video-call"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVilteCapabilites:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/GenericVilteDBContentHelper;->mVilteCapabilites:Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/GenericVilteDBContentHelper;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private fetchVilteCapabilitiesFromDb()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 42
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "raw_contact_id"

    aput-object v0, v2, v1

    .line 44
    const-string/jumbo v0, "data1"

    aput-object v0, v2, v5

    .line 46
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "mimetype=?"

    .line 47
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "vnd.android.cursor.item/com.gsma.services.rcs.video-call"

    aput-object v0, v4, v1

    .line 50
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/GenericVilteDBContentHelper;->mVilteCapabilites:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 51
    const/4 v6, 0x0

    .local v6, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/GenericVilteDBContentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 52
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 53
    const/4 v5, 0x0

    .line 51
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 54
    .local v6, "cur":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const/4 v8, 0x0

    .line 56
    .local v8, "rawContactId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 58
    .local v7, "phoneNumber":Ljava/lang/String;
    const-string/jumbo v0, "raw_contact_id"

    .line 57
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "rawContactId":Ljava/lang/String;
    const-string/jumbo v0, "data1"

    .line 59
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, "phoneNumber":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/GenericVilteDBContentHelper;->mVilteCapabilites:Ljava/util/Map;

    .line 62
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 65
    .end local v6    # "cur":Landroid/database/Cursor;
    .end local v7    # "phoneNumber":Ljava/lang/String;
    .end local v8    # "rawContactId":Ljava/lang/String;
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_1
    if-eqz v6, :cond_0

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    if-eqz v1, :cond_4

    throw v1

    .restart local v6    # "cur":Landroid/database/Cursor;
    :cond_1
    if-eqz v6, :cond_2

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_3
    if-eqz v9, :cond_5

    throw v9

    :catch_1
    move-exception v9

    goto :goto_3

    .end local v6    # "cur":Landroid/database/Cursor;
    :catch_2
    move-exception v5

    if-nez v1, :cond_3

    move-object v1, v5

    goto :goto_2

    :cond_3
    if-eq v1, v5, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v0

    .line 41
    .restart local v6    # "cur":Landroid/database/Cursor;
    :cond_5
    return-void

    .line 65
    .end local v6    # "cur":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_1
.end method


# virtual methods
.method public getNumberCapability(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/GenericVilteDBContentHelper;->mVilteCapabilites:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/GenericVilteDBContentHelper;->fetchVilteCapabilitiesFromDb()V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/GenericVilteDBContentHelper;->mVilteCapabilites:Ljava/util/Map;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
