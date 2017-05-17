.class public final Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;
.super Landroid/content/CursorLoader;
.source "GroupMemberLoader.java"


# static fields
.field public static final CONTACT_CHAT_CAPABILITY_COLUMN_INDEX:I = 0x7

.field public static final CONTACT_DISPLAY_NAME_ALTERNATIVE_COLUMN_INDEX:I = 0x3

.field public static final CONTACT_DISPLAY_NAME_PRIMARY_COLUMN_INDEX:I = 0x2

.field public static final CONTACT_HAS_PHONE_COLUMN_INDEX:I = 0xd

.field public static final CONTACT_ID_COLUMN_INDEX:I = 0x0

.field public static final CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0xb

.field public static final CONTACT_PHONETIC_NAME_COLUMN_INDEX:I = 0xc

.field public static final CONTACT_PHOTO_ID_COLUMN_INDEX:I = 0x8

.field public static final CONTACT_PHOTO_THUMBNAIL_URI_COLUMN_INDEX:I = 0xa

.field public static final CONTACT_PHOTO_URI_COLUMN_INDEX:I = 0x9

.field public static final CONTACT_PRESENCE_STATUS_COLUMN_INDEX:I = 0x6

.field public static final CONTACT_SORT_KEY_PRIMARY_COLUMN_INDEX:I = 0x4

.field public static final CONTACT_STARRED_COLUMN_INDEX:I = 0x5

.field public static final CONTACT_STATUS_INDEX:I = 0xf

.field public static final DATA_ID_COLUMN_INDEX:I = 0xe

.field public static final RAW_CONTACT_ID_COLUMN_INDEX:I = 0x1


# instance fields
.field private final PROJECTION_DATA:[Ljava/lang/String;

.field private final mGroupId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupId"    # J

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 45
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    .line 47
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "raw_contact_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "display_name_alt"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "sort_key"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "starred"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "contact_presence"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "contact_chat_capability"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "photo_id"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "photo_uri"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "photo_thumb_uri"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "lookup"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "phonetic_name"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "has_phone_number"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "_id"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "contact_status"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "contact_status_icon"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "contact_status_res_package"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 45
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;->PROJECTION_DATA:[Ljava/lang/String;

    .line 89
    iput-wide p2, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;->mGroupId:J

    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;->createUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;->setUri(Landroid/net/Uri;)V

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;->PROJECTION_DATA:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;->setProjection([Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;->createSelection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;->setSelection(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;->createSelectionArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "sort_key"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;->setSortOrder(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private createSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mimetype=? AND data1=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createSelectionArgs()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "vnd.android.cursor.item/group_membership"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMemberLoader;->mGroupId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private createUri()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 98
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 99
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "directory"

    .line 100
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 101
    return-object v0
.end method
