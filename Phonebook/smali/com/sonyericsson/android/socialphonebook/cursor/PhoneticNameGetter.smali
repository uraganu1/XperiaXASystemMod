.class Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter;
.super Ljava/lang/Object;
.source "PhoneticNameGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;
    }
.end annotation


# static fields
.field private static final CONTACT_ID_COLUMN_INDEX:I = 0x0

.field private static final PHONETIC_FAMILY_NAME_COLUMN_INDEX:I = 0x3

.field private static final PHONETIC_GIVEN_NAME_COLUMN_INDEX:I = 0x1

.field private static final PHONETIC_MIDDLE_NAME_COLUMN_INDEX:I = 0x2

.field private static final PHONETIC_NAME_ORDER:Ljava/lang/String; = "contact_id ASC "

.field private static final PHONETIC_NAME_PROJECTION:[Ljava/lang/String;

.field private static final PHONETIC_NAME_SELECTION:Ljava/lang/String; = "mimetype=\'vnd.android.cursor.item/name\' AND name_raw_contact_id=raw_contact_id AND (LENGTH(data7) > 0 OR LENGTH(data8) > 0 OR LENGTH(data9) > 0)"

.field private static final TAG:Ljava/lang/String; = "PhoneticNameGetter"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 35
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 36
    const-string/jumbo v1, "data7"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "data8"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "data9"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 34
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter;->PHONETIC_NAME_PROJECTION:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method private getPhoneticNameMap()Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 113
    const-wide/16 v8, 0x0

    .line 114
    .local v8, "time":J
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 118
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter;->PHONETIC_NAME_PROJECTION:[Ljava/lang/String;

    .line 119
    const-string/jumbo v3, "mimetype=\'vnd.android.cursor.item/name\' AND name_raw_contact_id=raw_contact_id AND (LENGTH(data7) > 0 OR LENGTH(data8) > 0 OR LENGTH(data9) > 0)"

    .line 120
    const-string/jumbo v5, "contact_id ASC "

    .line 117
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 121
    .local v6, "c":Landroid/database/Cursor;
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 122
    const-string/jumbo v0, "PhoneticNameGetter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phonetic name query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    .line 122
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 123
    const-string/jumbo v2, "ms"

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_1
    if-nez v6, :cond_2

    .line 126
    return-object v4

    .line 128
    :cond_2
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;

    invoke-direct {v0, v6}, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method


# virtual methods
.method public final getPhoneticName(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "aList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;>;"
    const/4 v2, 0x0

    .line 83
    .local v2, "map":Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter;->getPhoneticNameMap()Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;

    move-result-object v2

    .line 84
    .local v2, "map":Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;
    if-eqz v2, :cond_4

    .line 85
    const-wide/16 v4, 0x0

    .line 86
    .local v4, "time1":J
    sget-boolean v6, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v6, :cond_0

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 89
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;

    .line 90
    .local v0, "e":Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->getId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->getPhoneticName(J)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "phoneticName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;->setPhoneticName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 101
    .end local v0    # "e":Lcom/sonyericsson/android/socialphonebook/cursor/ContactEntry;
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "map":Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;
    .end local v3    # "phoneticName":Ljava/lang/String;
    .end local v4    # "time1":J
    :catchall_0
    move-exception v6

    .line 102
    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->-get0(Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 103
    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->-get0(Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_2
    throw v6

    .line 96
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    .restart local v2    # "map":Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;
    .restart local v4    # "time1":J
    :cond_3
    :try_start_1
    sget-boolean v6, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v6, :cond_4

    .line 97
    const-string/jumbo v6, "PhoneticNameGetter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set phonetic name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 97
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 98
    const-string/jumbo v8, "ms"

    .line 97
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v4    # "time1":J
    :cond_4
    if-eqz v2, :cond_5

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->-get0(Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 103
    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->-get0(Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_5
    return-void
.end method
