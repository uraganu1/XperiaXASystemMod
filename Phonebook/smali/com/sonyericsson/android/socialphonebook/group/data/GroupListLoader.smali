.class public final Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;
.super Landroid/content/CursorLoader;
.source "GroupListLoader.java"


# static fields
.field public static final ACCOUNT_NAME:I = 0x0

.field public static final ACCOUNT_TYPE:I = 0x1

.field private static final COLUMNS:[Ljava/lang/String;

.field public static final DATA_SET:I = 0x2

.field public static final GROUP_ID:I = 0x3

.field public static final GROUP_IS_READ_ONLY:I = 0x6

.field private static final GROUP_LIST_URI:Landroid/net/Uri;

.field public static final MEMBER_COUNT:I = 0x5

.field public static final PACKAGE_ID:I = 0x8

.field private static final TAG:Ljava/lang/String;

.field public static final TITLE:I = 0x4

.field public static final TITLE_RES:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-class v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;->TAG:Ljava/lang/String;

    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 44
    const-string/jumbo v1, "account_name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "account_type"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "data_set"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "_id"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "title"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "summ_count"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "group_is_read_only"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "title_res"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "res_package"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "summ_phones"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 43
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;->COLUMNS:[Ljava/lang/String;

    .line 66
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;->GROUP_LIST_URI:Landroid/net/Uri;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;->GROUP_LIST_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;->COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "account_type != \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "\' AND "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "account_name"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 71
    const-string/jumbo v1, " != \'"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 71
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 71
    const-string/jumbo v1, "\' AND "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "auto_add"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "=0 AND "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    const-string/jumbo v1, "favorites"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    const-string/jumbo v1, "=0 AND "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    const-string/jumbo v1, "group_visible"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    const-string/jumbo v1, "!=0 AND "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "deleted"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "=0 AND "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "title"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "<>?"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 75
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "com.sonymobile.ice.group"

    const/4 v1, 0x0

    aput-object v0, v5, v1

    .line 77
    const-string/jumbo v6, "account_type, account_name, data_set, title COLLATE LOCALIZED ASC"

    move-object v0, p0

    move-object v1, p1

    .line 69
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private loadPhoneGroup()Landroid/database/Cursor;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    return-object v11

    .line 96
    :cond_0
    const/4 v6, 0x0

    .line 98
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;->GROUP_LIST_URI:Landroid/net/Uri;

    .line 99
    .local v1, "groupUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 101
    .local v7, "groupBuilder":Landroid/net/Uri$Builder;
    const-string/jumbo v0, "account_name"

    .line 102
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {v7, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 103
    const-string/jumbo v2, "account_type"

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 104
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 107
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;->COLUMNS:[Ljava/lang/String;

    .line 108
    const-string/jumbo v3, "account_type NOT NULL AND account_name NOT NULL AND auto_add=0 AND favorites=0 AND group_visible!=0 AND deleted=0"

    .line 112
    const-string/jumbo v5, "account_type, account_name, data_set, title COLLATE LOCALIZED ASC"

    .line 111
    const/4 v4, 0x0

    .line 105
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 115
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 116
    new-instance v9, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v9, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 117
    .local v9, "matrix":Landroid/database/MatrixCursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;->COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    new-array v10, v0, [Ljava/lang/Object;

    .line 120
    .local v10, "row":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;->COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_1

    .line 121
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v8

    .line 120
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {v9, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 128
    .end local v1    # "groupUri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "groupBuilder":Landroid/net/Uri$Builder;
    .end local v8    # "i":I
    .end local v9    # "matrix":Landroid/database/MatrixCursor;
    .end local v10    # "row":[Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 129
    if-eqz v6, :cond_2

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_2
    throw v0

    .line 129
    .restart local v1    # "groupUri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "groupBuilder":Landroid/net/Uri$Builder;
    .restart local v9    # "matrix":Landroid/database/MatrixCursor;
    :cond_3
    if-eqz v6, :cond_4

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_4
    return-object v9

    .line 129
    .end local v9    # "matrix":Landroid/database/MatrixCursor;
    :cond_5
    if-eqz v6, :cond_6

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_6
    return-object v11
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 83
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/database/Cursor;

    .line 85
    .local v0, "cursors":[Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListLoader;->loadPhoneGroup()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 86
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 87
    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v1
.end method
