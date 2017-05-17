.class public Lcom/sonyericsson/conversations/ui/ContactPickerResultUtil;
.super Ljava/lang/Object;
.source "ContactPickerResultUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSmsAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "freetextStr"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "result":Z
    if-eqz p0, :cond_0

    .line 118
    const-string/jumbo v1, ".*[a-zA-Z]+.*"

    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const/4 v0, 0x0

    .line 124
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    .line 121
    .restart local v0    # "result":Z
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method static extractAddresses(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "addressesFromContactPicker"    # Ljava/util/ArrayList;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v3, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 39
    return-object v3

    .line 41
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "addressFromContactPicker$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 42
    .local v1, "addressFromContactPicker":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 43
    .local v0, "address":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 44
    instance-of v6, v1, Landroid/net/Uri;

    if-eqz v6, :cond_3

    move-object v5, v1

    .line 45
    check-cast v5, Landroid/net/Uri;

    .line 46
    .local v5, "uri":Landroid/net/Uri;
    invoke-static {v5, p1}, Lcom/sonyericsson/conversations/ui/ContactPickerResultUtil;->extractUriAdress(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .end local v0    # "address":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_1
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    .restart local v0    # "address":Ljava/lang/String;
    :cond_3
    instance-of v6, v1, Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    move-object v4, v1

    .line 49
    check-cast v4, Ljava/lang/CharSequence;

    .line 50
    .local v4, "freetext":Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/ContactPickerResultUtil;->extractFreetextAddress(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    goto :goto_1

    .line 57
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "addressFromContactPicker":Ljava/lang/Object;
    .end local v4    # "freetext":Ljava/lang/CharSequence;
    :cond_4
    return-object v3
.end method

.method private static extractFreetextAddress(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "freetext"    # Ljava/lang/CharSequence;

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "address":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "freetextStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ContactPickerResultUtil;->checkSmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    .line 100
    if-eqz v2, :cond_1

    .line 102
    :cond_0
    move-object v0, v1

    .line 105
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "freetextStr":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static extractUriAdress(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 68
    const/4 v6, 0x0

    .line 69
    .local v6, "address":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 70
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 72
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string/jumbo v0, "mimetype"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, "mimeType":Ljava/lang/String;
    const-string/jumbo v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const-string/jumbo v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 84
    .end local v6    # "address":Ljava/lang/String;
    .end local v8    # "mimeType":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_1
    return-object v6

    .line 77
    .restart local v6    # "address":Ljava/lang/String;
    .restart local v8    # "mimeType":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v0, "vnd.android.cursor.item/phone_v2"

    .line 76
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string/jumbo v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .local v6, "address":Ljava/lang/String;
    goto :goto_0

    .line 83
    .end local v8    # "mimeType":Ljava/lang/String;
    .local v6, "address":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 84
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 83
    throw v0
.end method
