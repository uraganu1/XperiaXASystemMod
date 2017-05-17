.class public final Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaDataLoader;
.super Landroid/content/CursorLoader;
.source "GroupMetaDataLoader.java"


# static fields
.field public static final ACCOUNT_NAME:I = 0x0

.field public static final ACCOUNT_TYPE:I = 0x1

.field public static final AUTO_ADD:I = 0x5

.field private static final COLUMNS:[Ljava/lang/String;

.field public static final DATA_SET:I = 0x2

.field public static final DELETED:I = 0x8

.field public static final FAVORITES:I = 0x6

.field public static final GROUP_ID:I = 0x3

.field public static final IS_READ_ONLY:I = 0x7

.field public static final PACKAGE_ID:I = 0xa

.field public static final TITLE:I = 0x4

.field public static final TITLE_RES:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 35
    const-string/jumbo v1, "account_name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 36
    const-string/jumbo v1, "account_type"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "data_set"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "_id"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "title"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 40
    const-string/jumbo v1, "auto_add"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "favorites"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "group_is_read_only"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "deleted"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "title_res"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "res_package"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 34
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaDataLoader;->COLUMNS:[Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 61
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaDataLoader;->ensureIsGroupUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaDataLoader;->COLUMNS:[Ljava/lang/String;

    const-string/jumbo v4, "account_type NOT NULL AND account_name NOT NULL AND title<>? AND deleted = 0"

    .line 64
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const-string/jumbo v0, "com.sonymobile.ice.group"

    const/4 v1, 0x0

    aput-object v0, v5, v1

    .line 65
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 61
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private static ensureIsGroupUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 74
    if-nez p0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Uri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid group Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    return-object p0
.end method
