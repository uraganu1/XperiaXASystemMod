.class public final Lcom/sonyericsson/android/socialphonebook/list/ContactQuery;
.super Ljava/lang/Object;
.source "ContactQuery.java"


# static fields
.field public static final CONTACT_CONTACT_STATUS:I = 0x3

.field public static final CONTACT_DISPLAY_NAME:I = 0x1

.field public static final CONTACT_HAS_PHONE_NUMBER:I = 0x8

.field public static final CONTACT_ID:I = 0x0

.field public static final CONTACT_IS_USER_PROFILE:I = 0x7

.field public static final CONTACT_LOOKUP_KEY:I = 0x6

.field public static final CONTACT_PHOTO_ID:I = 0x4

.field public static final CONTACT_PHOTO_URI:I = 0x5

.field public static final CONTACT_PRESENCE_STATUS:I = 0x2

.field public static final CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field public static final CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

.field public static final CONTACT_SORT_ALTERNATIVE:I = 0xb

.field public static final CONTACT_SORT_PRIMARY:I = 0xa

.field public static final CONTACT_STARED:I = 0x9

.field public static final CONTACT_STATUS_RES_PACKAGE:I = 0xc

.field public static final VISIBLE_CONTACTS_ONLY:Ljava/lang/String; = "in_visible_group = 1 "


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 23
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 24
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v4

    .line 25
    const-string/jumbo v1, "contact_presence"

    aput-object v1, v0, v5

    .line 26
    const-string/jumbo v1, "contact_status"

    aput-object v1, v0, v6

    .line 27
    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v7

    .line 28
    const-string/jumbo v1, "photo_thumb_uri"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 29
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 30
    const-string/jumbo v1, "is_user_profile"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 31
    const-string/jumbo v1, "has_phone_number"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 32
    const-string/jumbo v1, "starred"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 33
    const-string/jumbo v1, "sort_key"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 34
    const-string/jumbo v1, "sort_key_alt"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 35
    const-string/jumbo v1, "contact_status_res_package"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 22
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    .line 38
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 39
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 40
    const-string/jumbo v1, "display_name_alt"

    aput-object v1, v0, v4

    .line 41
    const-string/jumbo v1, "contact_presence"

    aput-object v1, v0, v5

    .line 42
    const-string/jumbo v1, "contact_status"

    aput-object v1, v0, v6

    .line 43
    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v7

    .line 44
    const-string/jumbo v1, "photo_thumb_uri"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "is_user_profile"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "has_phone_number"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "starred"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "sort_key"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "sort_key_alt"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "contact_status_res_package"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 38
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactQuery;->CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
