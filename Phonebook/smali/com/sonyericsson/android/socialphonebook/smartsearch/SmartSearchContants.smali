.class public Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchContants;
.super Ljava/lang/Object;
.source "SmartSearchContants.java"


# static fields
.field public static final ACCOUNT_TYPE_ADN:I = 0x0

.field public static final ACCOUNT_TYPE_ADN_SUB1:I = 0x2

.field public static final ACCOUNT_TYPE_ADN_SUB2:I = 0x3

.field public static final ACCOUNT_TYPE_OTHERS:I = 0x1

.field public static final CONTACT_DATA_ACCOUNT_TYPE_COLUMN_INDEX:I = 0x7

.field public static final CONTACT_DATA_CONTACT_ID_COLUMN_INDEX:I = 0x5

.field public static final CONTACT_DATA_CONTACT_PRESENCE_CONLUMN_INDEX:I = 0x8

.field public static final CONTACT_DATA_DISPLAY_NAME_COLUMN_INDEX:I = 0x4

.field public static final CONTACT_DATA_ID_COLUMN_INDEX:I = 0x0

.field static final CONTACT_DATA_JP_PROJECTION:[Ljava/lang/String;

.field public static final CONTACT_DATA_LOOKUP_KEY_CONLUMN_INDEX:I = 0x9

.field public static final CONTACT_DATA_PHONETIC_NAME_CONLUMN_INDEX:I = 0xc

.field public static final CONTACT_DATA_PHONE_LABEL_COLUMN_INDEX:I = 0x2

.field public static final CONTACT_DATA_PHONE_NUMBER_COLUMN_INDEX:I = 0x3

.field public static final CONTACT_DATA_PHONE_TYPE_COLUMN_INDEX:I = 0x1

.field public static final CONTACT_DATA_PHOTO_ID_COLUMN_INDEX:I = 0x6

.field static final CONTACT_DATA_PROJECTION:[Ljava/lang/String;

.field public static final CONTACT_DATA_TIMES_CONTACTED_COLUMN_INDEX:I = 0xa

.field public static final CONTACT_DATA_TIMES_USED_COLUMN_INDEX:I = 0xb

.field public static final DIGITS_TYPE_CJK_BOPOMOFO:I = 0x8

.field public static final DIGITS_TYPE_CJK_JAPANESE:I = 0x20

.field public static final DIGITS_TYPE_CJK_KOREA:I = 0x10

.field public static final DIGITS_TYPE_CJK_PINYIN:I = 0x2

.field public static final DIGITS_TYPE_CJK_STROKE:I = 0x4

.field public static final DIGITS_TYPE_CYRILLIC:I = 0x40

.field public static final DIGITS_TYPE_CYRILLIC_MACEDONIAN:I = 0x80

.field public static final DIGITS_TYPE_HEBREW:I = 0x100

.field public static final DIGITS_TYPE_LATIN:I = 0x1

.field public static final NANE_CONVERT_SERVICE_ACTION:Ljava/lang/String; = "com.sonyericsson.android.smartsearch.NameConvertService.START"

.field public static final RESULT_TYPE_COLUMN_INDEX:I = 0xd

.field public static final RESULT_TYPE_CONTACT_MATCH_NAME:I = 0x0

.field public static final RESULT_TYPE_CONTACT_MATCH_NUMBER:I = 0x1

.field public static final RESULT_TYPE_UNSAVED_CALL_LOG:I = 0x2

.field public static final UNSAVED_CALL_LOG_DATE_COLUMN_INDEX:I = 0x2

.field public static final UNSAVED_CALL_LOG_DURATION_COLUMN_INDEX:I = 0x3

.field public static final UNSAVED_CALL_LOG_ID_COLUMN_INDEX:I = 0x0

.field public static final UNSAVED_CALL_LOG_NUMBER_COLUMN_INDEX:I = 0x1

.field static final UNSAVED_CALL_LOG_PROJECTION:[Ljava/lang/String;

.field public static final UNSAVED_CALL_LOG_TYPE_COLUMN_INDEX:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 18
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 19
    const-string/jumbo v1, "number"

    aput-object v1, v0, v4

    .line 20
    const-string/jumbo v1, "date"

    aput-object v1, v0, v5

    .line 21
    const-string/jumbo v1, "duration"

    aput-object v1, v0, v6

    .line 22
    const-string/jumbo v1, "type"

    aput-object v1, v0, v7

    .line 17
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchContants;->UNSAVED_CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 41
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 42
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 43
    const-string/jumbo v1, "data2"

    aput-object v1, v0, v4

    .line 44
    const-string/jumbo v1, "data3"

    aput-object v1, v0, v5

    .line 45
    const-string/jumbo v1, "data1"

    aput-object v1, v0, v6

    .line 46
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v7

    .line 47
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "account_type"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "contact_presence"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "lookup"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "times_contacted"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "times_used"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 41
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchContants;->CONTACT_DATA_PROJECTION:[Ljava/lang/String;

    .line 56
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 57
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 58
    const-string/jumbo v1, "data2"

    aput-object v1, v0, v4

    .line 59
    const-string/jumbo v1, "data3"

    aput-object v1, v0, v5

    .line 60
    const-string/jumbo v1, "data1"

    aput-object v1, v0, v6

    .line 61
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v7

    .line 62
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "account_type"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "contact_presence"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "lookup"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "times_contacted"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "times_used"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "phonetic_name"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 56
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchContants;->CONTACT_DATA_JP_PROJECTION:[Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
