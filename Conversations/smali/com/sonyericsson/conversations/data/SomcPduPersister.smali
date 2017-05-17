.class public Lcom/sonyericsson/conversations/data/SomcPduPersister;
.super Ljava/lang/Object;
.source "SomcPduPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;
    }
.end annotation


# static fields
.field private static final ADDRESS_FIELDS:[I

.field private static final CHARSET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

.field private static final CHARSET_COLUMN_NAME_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODED_STRING_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

.field private static final ENCODED_STRING_COLUMN_NAME_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

.field private static final LONG_COLUMN_NAME_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_BOX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

.field private static final OCTET_COLUMN_NAME_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PART_PROJECTION:[Ljava/lang/String;

.field private static final PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field private static final SomcProviderContentUri:Landroid/net/Uri;

.field private static final SomcProviderNotificationUri:Landroid/net/Uri;

.field private static final TEXT_STRING_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

.field private static final TEXT_STRING_COLUMN_NAME_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnableTransactionSupport:Z

.field private static sGenericPduGetPduHeadersMethod:Ljava/lang/reflect/Method;

.field private static sPduHeadersGetEncodedStringValueMethod:Ljava/lang/reflect/Method;

.field private static sPduHeadersGetEncodedStringValuesMethod:Ljava/lang/reflect/Method;

.field private static sPduHeadersGetLongIntegerMethod:Ljava/lang/reflect/Method;

.field private static sPduHeadersGetOctetMethod:Ljava/lang/reflect/Method;

.field private static sPduHeadersGetTextStringMethod:Ljava/lang/reflect/Method;

.field private static sPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;


# instance fields
.field private mBriefPartCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mPduPersister:Lcom/google/android/mms/pdu/PduPersister;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x9a

    const/16 v7, 0x96

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 104
    sput-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;

    .line 109
    const/16 v0, 0x81

    const/16 v1, 0x82

    const/16 v2, 0x89

    const/16 v3, 0x97

    .line 108
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ADDRESS_FIELDS:[I

    .line 112
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    .line 113
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "msg_box"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "thread_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "retr_txt"

    aput-object v1, v0, v5

    const-string/jumbo v1, "sub"

    aput-object v1, v0, v6

    .line 114
    const-string/jumbo v1, "ct_l"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "ct_t"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "m_cls"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "m_id"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 115
    const-string/jumbo v1, "resp_txt"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "tr_id"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "ct_cls"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "d_rpt"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 116
    const-string/jumbo v1, "m_type"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "v"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "pri"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "rr"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "read_status"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 117
    const-string/jumbo v1, "rpt_a"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "retr_st"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "st"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "date"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "d_tm"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 118
    const-string/jumbo v1, "exp"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "m_size"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "sub_cs"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "retr_txt_cs"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 112
    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    .line 173
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 174
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "chset"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "cd"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "cid"

    aput-object v1, v0, v5

    .line 175
    const-string/jumbo v1, "cl"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ct"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "fn"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "name"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "text"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "_data"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 173
    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PART_PROJECTION:[Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    .line 223
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->CHARSET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    .line 229
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->CHARSET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x19

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 230
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->CHARSET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x1a

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 232
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->CHARSET_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    .line 233
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->CHARSET_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "sub_cs"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->CHARSET_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "retr_txt_cs"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    .line 238
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 239
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 241
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    .line 242
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "retr_txt"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "sub"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    .line 247
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x83

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 248
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x84

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 249
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x8a

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 250
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x8b

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 251
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x93

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 252
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x98

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 254
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    .line 255
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "ct_l"

    const/16 v2, 0x83

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "ct_t"

    const/16 v2, 0x84

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "m_cls"

    const/16 v2, 0x8a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "m_id"

    const/16 v2, 0x8b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "resp_txt"

    const/16 v2, 0x93

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "tr_id"

    const/16 v2, 0x98

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    .line 264
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xba

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 265
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x86

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 266
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x8c

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 267
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x8d

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 268
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x8f

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 269
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x90

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 270
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x9b

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 271
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x91

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 272
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x99

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 273
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x95

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 275
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    .line 276
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "ct_cls"

    const/16 v2, 0xba

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "d_rpt"

    const/16 v2, 0x86

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "m_type"

    const/16 v2, 0x8c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "v"

    const/16 v2, 0x8d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "pri"

    const/16 v2, 0x8f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "rr"

    const/16 v2, 0x90

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "read_status"

    const/16 v2, 0x9b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "rpt_a"

    const/16 v2, 0x91

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "retr_st"

    const/16 v2, 0x99

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "st"

    const/16 v2, 0x95

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    .line 289
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x85

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 290
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x87

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 291
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x88

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 292
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x8e

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 294
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    .line 295
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "date"

    const/16 v2, 0x85

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "d_tm"

    const/16 v2, 0x87

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "exp"

    const/16 v2, 0x88

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    const-string/jumbo v1, "m_size"

    const/16 v2, 0x8e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    .line 303
    const-string/jumbo v0, "content://mms/somc-notification"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->SomcProviderNotificationUri:Landroid/net/Uri;

    .line 304
    const-string/jumbo v0, "content://mms/somc-content"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->SomcProviderContentUri:Landroid/net/Uri;

    .line 313
    sput-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sGenericPduGetPduHeadersMethod:Ljava/lang/reflect/Method;

    .line 314
    sput-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValueMethod:Ljava/lang/reflect/Method;

    .line 315
    sput-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetTextStringMethod:Ljava/lang/reflect/Method;

    .line 316
    sput-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetOctetMethod:Ljava/lang/reflect/Method;

    .line 317
    sput-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetLongIntegerMethod:Ljava/lang/reflect/Method;

    .line 318
    sput-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValuesMethod:Ljava/lang/reflect/Method;

    .line 320
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sEnableTransactionSupport:Z

    .line 99
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 322
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mBriefPartCache:Landroid/util/LruCache;

    .line 325
    iput-object p1, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 324
    return-void
.end method

.method public static convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 1004
    const/4 v8, 0x0

    .line 1005
    .local v8, "path":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1006
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 1007
    .local v10, "scheme":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1008
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 1038
    .end local v8    # "path":Ljava/lang/String;
    .end local v10    # "scheme":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 1010
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v10    # "scheme":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1011
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "path":Ljava/lang/String;
    goto :goto_0

    .line 1013
    .local v8, "path":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1014
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 1015
    const-string/jumbo v0, "_data"

    aput-object v0, v2, v1

    .line 1017
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1019
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1020
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 1021
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given Uri could not be found in media store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1027
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1029
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 1030
    if-eqz v6, :cond_5

    .line 1031
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1029
    :cond_5
    throw v0

    .line 1020
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_6
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1024
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1025
    .local v9, "pathIndex":I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 1030
    .local v8, "path":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1031
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1035
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "pathIndex":I
    .local v8, "path":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given Uri scheme is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createPduPersisterInstance(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 353
    invoke-static {}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->initPduReflectionMethods()V

    .line 354
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    return-object v0
.end method

.method private getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    .line 1331
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1332
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 1334
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getByteArrayWithDefaultCharset(Landroid/database/Cursor;I)[B
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    .line 1338
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1339
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 1341
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 1059
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method private getBytes(Ljava/lang/String;I)[B
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "key"    # I

    .prologue
    .line 1063
    const/16 v0, 0x96

    if-ne p2, v0, :cond_0

    .line 1064
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 1066
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    .line 1324
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1325
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1327
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMessageSize(Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 10
    .param p1, "notificationUri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    .line 502
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 503
    .local v7, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_5

    .line 505
    const/4 v6, 0x0

    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 506
    const-string/jumbo v1, "m_size"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 507
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 505
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 508
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    const-string/jumbo v0, "m_size"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 511
    :cond_0
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    if-eqz v8, :cond_5

    throw v8

    :catch_0
    move-exception v8

    goto :goto_0

    .end local v6    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_1
    if-eqz v6, :cond_2

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v1, :cond_4

    throw v1

    :catch_2
    move-exception v2

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_2

    :cond_3
    if-eq v1, v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v0

    .line 513
    :cond_5
    return-object v7

    .line 511
    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method

.method public static declared-synchronized getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v2, Lcom/sonyericsson/conversations/data/SomcPduPersister;

    monitor-enter v2

    .line 334
    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;

    if-nez v1, :cond_0

    .line 335
    new-instance v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;

    .line 336
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->getInstance()Lcom/sonyericsson/provider/CapabilityUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/provider/CapabilityUtil;->isTransactionEnabled()Z

    move-result v1

    sput-boolean v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sEnableTransactionSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;

    sget-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;

    iget-object v3, v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->createPduPersisterInstance(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    iput-object v3, v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mPduPersister:Lcom/google/android/mms/pdu/PduPersister;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "Create PduPersister instance failed"

    invoke-static {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    const/4 v1, 0x0

    sput-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPersister:Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getStarStatusAndMessageSize(Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 10
    .param p1, "notificationUri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    .line 486
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 487
    .local v7, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_5

    .line 489
    const/4 v6, 0x0

    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    .line 490
    const-string/jumbo v1, "star_status"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string/jumbo v1, "m_size"

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 491
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 489
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 492
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const-string/jumbo v0, "star_status"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 494
    const-string/jumbo v0, "m_size"

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 496
    :cond_0
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    if-eqz v8, :cond_5

    throw v8

    :catch_0
    move-exception v8

    goto :goto_0

    .end local v6    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_1
    if-eqz v6, :cond_2

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v1, :cond_4

    throw v1

    :catch_2
    move-exception v2

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_2

    :cond_3
    if-eq v1, v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v0

    .line 498
    :cond_5
    return-object v7

    .line 496
    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method

.method private static initPduReflectionMethods()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 359
    const-class v1, Lcom/google/android/mms/pdu/GenericPdu;

    const-string/jumbo v2, "getPduHeaders"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sGenericPduGetPduHeadersMethod:Ljava/lang/reflect/Method;

    .line 360
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sGenericPduGetPduHeadersMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 361
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string/jumbo v2, "Initialize mGenericPduGetPduHeadersMethod failed"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_0
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sGenericPduGetPduHeadersMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 365
    new-array v0, v4, [Ljava/lang/Class;

    .line 366
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    .line 368
    .local v0, "param":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v1, Lcom/google/android/mms/pdu/PduHeaders;

    .line 369
    const-string/jumbo v2, "getEncodedStringValue"

    .line 368
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValueMethod:Ljava/lang/reflect/Method;

    .line 370
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValueMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 371
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string/jumbo v2, "Initialize mPduHeadersGetEncodedStringValueMethod failed"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    :cond_1
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValueMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 375
    const-class v1, Lcom/google/android/mms/pdu/PduHeaders;

    const-string/jumbo v2, "getTextString"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetTextStringMethod:Ljava/lang/reflect/Method;

    .line 376
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetTextStringMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 377
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string/jumbo v2, "Initialize mPduHeadersGetTextStringMethod failed"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_2
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetTextStringMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 381
    const-class v1, Lcom/google/android/mms/pdu/PduHeaders;

    const-string/jumbo v2, "getOctet"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetOctetMethod:Ljava/lang/reflect/Method;

    .line 382
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetOctetMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_3

    .line 383
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string/jumbo v2, "Initialize mPduHeadersGetOctetMethod failed"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    :cond_3
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetOctetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 387
    const-class v1, Lcom/google/android/mms/pdu/PduHeaders;

    const-string/jumbo v2, "getLongInteger"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetLongIntegerMethod:Ljava/lang/reflect/Method;

    .line 389
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetLongIntegerMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_4

    .line 390
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string/jumbo v2, "Initialize mPduHeadersGetLongIntegerMethod failed"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_4
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetLongIntegerMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 394
    const-class v1, Lcom/google/android/mms/pdu/PduHeaders;

    .line 395
    const-string/jumbo v2, "getEncodedStringValues"

    .line 394
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValuesMethod:Ljava/lang/reflect/Method;

    .line 396
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValuesMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_5

    .line 397
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string/jumbo v2, "Initialize mPduHeadersGetEncodedStringValuesMethod failed"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_5
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValuesMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 357
    return-void
.end method

.method private loadAddress(JLcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;)V
    .locals 15
    .param p1, "msgId"    # J
    .param p3, "headers"    # Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1287
    iget-object v2, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 1288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/addr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    .line 1289
    const-string/jumbo v7, "address"

    aput-object v7, v5, v12

    const-string/jumbo v7, "charset"

    aput-object v7, v5, v8

    const-string/jumbo v7, "type"

    aput-object v7, v5, v13

    move-object v7, v6

    move-object v8, v6

    .line 1287
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1293
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 1295
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1296
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1297
    .local v9, "addr":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1298
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1299
    .local v10, "addrType":I
    sparse-switch v10, :sswitch_data_0

    .line 1312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown address type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1317
    .end local v9    # "addr":Ljava/lang/String;
    .end local v10    # "addrType":I
    :catchall_0
    move-exception v2

    .line 1318
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1317
    throw v2

    .line 1301
    .restart local v9    # "addr":Ljava/lang/String;
    .restart local v10    # "addrType":I
    :sswitch_0
    :try_start_1
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1302
    invoke-static {v9}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 1301
    invoke-direct {v2, v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v10}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->setEncodedStringValueEx(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    goto :goto_0

    .line 1308
    :sswitch_1
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v9}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 1307
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v10}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->appendEncodedStringValueEx(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1318
    .end local v9    # "addr":Ljava/lang/String;
    .end local v10    # "addrType":I
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1286
    :cond_2
    return-void

    .line 1299
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_1
        0x82 -> :sswitch_1
        0x89 -> :sswitch_0
        0x97 -> :sswitch_1
    .end sparse-switch
.end method

.method private loadBriefPartContent(Landroid/database/Cursor;Lcom/google/android/mms/pdu/PduPart;)V
    .locals 13
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "briefPart"    # Lcom/google/android/mms/pdu/PduPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1526
    const/4 v11, 0x1

    invoke-direct {p0, p1, v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    .line 1527
    .local v0, "charset":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1528
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p2, v11}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 1531
    :cond_0
    const/4 v11, 0x2

    invoke-direct {p0, p1, v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v1

    .line 1532
    .local v1, "contentDisposition":[B
    if-eqz v1, :cond_1

    .line 1533
    invoke-virtual {p2, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1536
    :cond_1
    const/4 v11, 0x3

    invoke-direct {p0, p1, v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v2

    .line 1537
    .local v2, "contentId":[B
    if-eqz v2, :cond_2

    .line 1538
    invoke-virtual {p2, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1541
    :cond_2
    const/4 v11, 0x4

    invoke-direct {p0, p1, v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v3

    .line 1542
    .local v3, "contentLocation":[B
    if-eqz v3, :cond_3

    .line 1543
    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1546
    :cond_3
    const/4 v11, 0x5

    invoke-direct {p0, p1, v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v4

    .line 1547
    .local v4, "contentType":[B
    if-eqz v4, :cond_7

    .line 1548
    invoke-virtual {p2, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1553
    const/4 v11, 0x6

    invoke-direct {p0, p1, v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v5

    .line 1554
    .local v5, "fileName":[B
    if-nez v5, :cond_4

    .line 1555
    const/16 v11, 0x9

    invoke-direct {p0, p1, v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v5

    .line 1557
    :cond_4
    if-eqz v5, :cond_5

    .line 1558
    invoke-virtual {p2, v5}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1561
    :cond_5
    const/4 v11, 0x7

    invoke-direct {p0, p1, v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v7

    .line 1562
    .local v7, "name":[B
    if-eqz v7, :cond_6

    .line 1563
    invoke-virtual {p2, v7}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 1567
    :cond_6
    const-string/jumbo v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1568
    .local v6, "index":I
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1569
    .local v8, "partId":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "content://mms/part/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1570
    .local v10, "partUri":Landroid/net/Uri;
    invoke-virtual {p2, v10}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 1525
    return-void

    .line 1550
    .end local v5    # "fileName":[B
    .end local v6    # "index":I
    .end local v7    # "name":[B
    .end local v8    # "partId":J
    .end local v10    # "partUri":Landroid/net/Uri;
    :cond_7
    new-instance v11, Lcom/google/android/mms/MmsException;

    const-string/jumbo v12, "Content-Type must be set."

    invoke-direct {v11, v12}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method private loadParts(J)[Lcom/google/android/mms/pdu/PduPart;
    .locals 35
    .param p1, "msgId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 1347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PART_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1346
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1349
    .local v12, "c":Landroid/database/Cursor;
    const/16 v32, 0x0

    .line 1352
    .local v32, "parts":[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v12, :cond_0

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1356
    :cond_0
    const/4 v2, 0x0

    .line 1471
    if-eqz v12, :cond_1

    .line 1472
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1356
    :cond_1
    return-object v2

    .line 1359
    :cond_2
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v26

    .line 1360
    .local v26, "partCount":I
    const/16 v27, 0x0

    .line 1361
    .local v27, "partIdx":I
    move/from16 v0, v26

    new-array v0, v0, [Lcom/google/android/mms/pdu/PduPart;

    move-object/from16 v32, v0

    .local v32, "parts":[Lcom/google/android/mms/pdu/PduPart;
    move/from16 v30, v27

    .line 1362
    .end local v27    # "partIdx":I
    .local v30, "partIdx":I
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1363
    new-instance v25, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v25 .. v25}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 1364
    .local v25, "part":Lcom/google/android/mms/pdu/PduPart;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v14

    .line 1365
    .local v14, "charset":Ljava/lang/Integer;
    if-eqz v14, :cond_3

    .line 1366
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 1370
    :cond_3
    const/4 v2, 0x2

    .line 1369
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v15

    .line 1371
    .local v15, "contentDisposition":[B
    if-eqz v15, :cond_4

    .line 1372
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1375
    :cond_4
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v16

    .line 1376
    .local v16, "contentId":[B
    if-eqz v16, :cond_5

    .line 1377
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1380
    :cond_5
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v17

    .line 1381
    .local v17, "contentLocation":[B
    if-eqz v17, :cond_6

    .line 1382
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1385
    :cond_6
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v18

    .line 1386
    .local v18, "contentType":[B
    if-eqz v18, :cond_a

    .line 1387
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1392
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v21

    .line 1393
    .local v21, "fileName":[B
    if-eqz v21, :cond_7

    .line 1394
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1397
    :cond_7
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getByteArrayWithDefaultCharset(Landroid/database/Cursor;I)[B

    move-result-object v24

    .line 1398
    .local v24, "name":[B
    if-eqz v24, :cond_8

    .line 1399
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 1403
    :cond_8
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 1404
    .local v28, "partId":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://mms/part/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v28

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 1405
    .local v31, "partURI":Landroid/net/Uri;
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 1409
    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v34

    .line 1410
    .local v34, "type":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static/range {v34 .. v34}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1468
    :cond_9
    :goto_1
    add-int/lit8 v27, v30, 0x1

    .end local v30    # "partIdx":I
    .restart local v27    # "partIdx":I
    aput-object v25, v32, v30

    move/from16 v30, v27

    .end local v27    # "partIdx":I
    .restart local v30    # "partIdx":I
    goto/16 :goto_0

    .line 1389
    .end local v21    # "fileName":[B
    .end local v24    # "name":[B
    .end local v28    # "partId":J
    .end local v31    # "partURI":Landroid/net/Uri;
    .end local v34    # "type":Ljava/lang/String;
    :cond_a
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string/jumbo v3, "Content-Type must be set."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1470
    .end local v14    # "charset":Ljava/lang/Integer;
    .end local v15    # "contentDisposition":[B
    .end local v16    # "contentId":[B
    .end local v17    # "contentLocation":[B
    .end local v18    # "contentType":[B
    .end local v25    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v26    # "partCount":I
    .end local v30    # "partIdx":I
    .end local v32    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    :catchall_0
    move-exception v2

    .line 1471
    if-eqz v12, :cond_b

    .line 1472
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1470
    :cond_b
    throw v2

    .line 1411
    .restart local v14    # "charset":Ljava/lang/Integer;
    .restart local v15    # "contentDisposition":[B
    .restart local v16    # "contentId":[B
    .restart local v17    # "contentLocation":[B
    .restart local v18    # "contentType":[B
    .restart local v21    # "fileName":[B
    .restart local v24    # "name":[B
    .restart local v25    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v26    # "partCount":I
    .restart local v28    # "partId":J
    .restart local v30    # "partIdx":I
    .restart local v31    # "partURI":Landroid/net/Uri;
    .restart local v32    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .restart local v34    # "type":Ljava/lang/String;
    :cond_c
    :try_start_2
    invoke-static/range {v34 .. v34}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1412
    const/16 v22, 0x0

    .line 1419
    .local v22, "is":Ljava/io/InputStream;
    const-string/jumbo v2, "text/plain"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "application/smil"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1420
    const-string/jumbo v2, "text/html"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1419
    if-eqz v2, :cond_f

    .line 1421
    :cond_d
    const/16 v2, 0x8

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1423
    .local v33, "text":Ljava/lang/String;
    if-eqz v33, :cond_e

    .line 1424
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    .line 1426
    .local v13, "charSetVal":I
    :try_start_3
    invoke-static {v13}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    .line 1434
    .local v10, "blob":[B
    :goto_2
    :try_start_4
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v2, v13, v10}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v10

    .line 1438
    .end local v13    # "charSetVal":I
    :goto_3
    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_1

    .line 1427
    .end local v10    # "blob":[B
    .restart local v13    # "charSetVal":I
    :catch_0
    move-exception v20

    .line 1432
    .local v20, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    .restart local v10    # "blob":[B
    goto :goto_2

    .line 1436
    .end local v10    # "blob":[B
    .end local v13    # "charSetVal":I
    .end local v20    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_e
    const/4 v2, 0x0

    new-array v10, v2, [B

    .restart local v10    # "blob":[B
    goto :goto_3

    .line 1440
    .end local v10    # "blob":[B
    .end local v33    # "text":Ljava/lang/String;
    :cond_f
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1442
    .local v9, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v22

    .line 1443
    .local v22, "is":Ljava/io/InputStream;
    if-eqz v22, :cond_10

    .line 1444
    const/16 v2, 0x100

    new-array v11, v2, [B

    .line 1445
    .local v11, "buffer":[B
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v23

    .line 1446
    .local v23, "len":I
    :goto_4
    if-ltz v23, :cond_12

    .line 1447
    const/4 v2, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v11, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1448
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v23

    goto :goto_4

    .line 1451
    .end local v11    # "buffer":[B
    .end local v23    # "len":I
    :cond_10
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Input Stream is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1453
    .end local v22    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v19

    .line 1454
    .local v19, "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v2, "Failed to load part data"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1455
    new-instance v2, Lcom/google/android/mms/MmsException;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1456
    .end local v19    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    .line 1457
    if-eqz v22, :cond_11

    .line 1459
    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1456
    :cond_11
    :goto_5
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1457
    .restart local v11    # "buffer":[B
    .restart local v22    # "is":Ljava/io/InputStream;
    .restart local v23    # "len":I
    :cond_12
    if-eqz v22, :cond_13

    .line 1459
    :try_start_9
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1465
    :cond_13
    :goto_6
    :try_start_a
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto/16 :goto_1

    .line 1460
    :catch_2
    move-exception v19

    .line 1461
    .restart local v19    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "Failed to close stream"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1460
    .end local v11    # "buffer":[B
    .end local v19    # "e":Ljava/io/IOException;
    .end local v22    # "is":Ljava/io/InputStream;
    .end local v23    # "len":I
    :catch_3
    move-exception v19

    .line 1461
    .restart local v19    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "Failed to close stream"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 1471
    .end local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "charset":Ljava/lang/Integer;
    .end local v15    # "contentDisposition":[B
    .end local v16    # "contentId":[B
    .end local v17    # "contentLocation":[B
    .end local v18    # "contentType":[B
    .end local v19    # "e":Ljava/io/IOException;
    .end local v21    # "fileName":[B
    .end local v24    # "name":[B
    .end local v25    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v28    # "partId":J
    .end local v31    # "partURI":Landroid/net/Uri;
    .end local v34    # "type":Ljava/lang/String;
    :cond_14
    if-eqz v12, :cond_15

    .line 1472
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1476
    :cond_15
    return-object v32
.end method

.method private loadRecipients(ILjava/util/HashSet;Landroid/util/SparseArray;Z)V
    .locals 6
    .param p1, "addressType"    # I
    .param p4, "excludeMyNumber"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<[",
            "Lcom/google/android/mms/pdu/EncodedStringValue;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 720
    .local p2, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, "addressMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 721
    .local v0, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_0

    .line 722
    return-void

    .line 725
    :cond_0
    const/4 v3, 0x0

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    .line 726
    .local v2, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_1

    .line 727
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    .line 728
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 729
    if-nez p4, :cond_2

    .line 730
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 725
    .end local v1    # "number":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 731
    .restart local v1    # "number":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/sonyericsson/conversations/util/AddressUtil;->checkIfMyPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 732
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 719
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_3
    return-void
.end method

.method private persistPartData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 25
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 874
    const/16 v22, 0x0

    .line 875
    .local v22, "os":Ljava/io/OutputStream;
    const/16 v17, 0x0

    .line 876
    .local v17, "is":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 878
    .local v12, "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    const/16 v23, 0x0

    .line 881
    .local v23, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v10

    .line 882
    .local v10, "data":[B
    const-string/jumbo v2, "text/plain"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 883
    const-string/jumbo v2, "application/smil"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 882
    if-nez v2, :cond_0

    .line 884
    const-string/jumbo v2, "text/html"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 882
    if-eqz v2, :cond_4

    .line 974
    .end local v12    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v22    # "os":Ljava/io/OutputStream;
    .end local v23    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v22, :cond_1

    .line 976
    :try_start_1
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 981
    :cond_1
    :goto_1
    if-eqz v17, :cond_2

    .line 983
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 988
    :cond_2
    :goto_2
    if-eqz v12, :cond_3

    .line 989
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)V

    .line 993
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 994
    .local v16, "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 996
    .local v5, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 997
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 998
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 995
    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 873
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v16    # "f":Ljava/io/File;
    :cond_3
    return-void

    .line 887
    .restart local v12    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v17    # "is":Ljava/io/InputStream;
    .restart local v22    # "os":Ljava/io/OutputStream;
    .restart local v23    # "path":Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-static/range {p3 .. p3}, Lcom/google/android/mms/util/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v18

    .line 888
    .local v18, "isDrm":Z
    if-eqz v18, :cond_9

    .line 890
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v23

    .line 894
    .local v23, "path":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 895
    .restart local v16    # "f":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v20

    .line 899
    .local v20, "len":J
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-lez v2, :cond_5

    .line 902
    return-void

    .line 904
    .end local v16    # "f":Ljava/io/File;
    .end local v20    # "len":J
    .end local v23    # "path":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 905
    .local v15, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t get file info for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 908
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/google/android/mms/util/DrmConvertSession;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/mms/util/DrmConvertSession;

    move-result-object v12

    .line 909
    .local v12, "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    if-nez v12, :cond_9

    .line 910
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Mimetype "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " can not be converted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 967
    .end local v10    # "data":[B
    .end local v12    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v18    # "isDrm":Z
    .end local v22    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v13

    .line 968
    .local v13, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    const-string/jumbo v2, "Failed to open Input/Output stream."

    invoke-static {v2, v13}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 969
    new-instance v2, Lcom/google/android/mms/MmsException;

    invoke-direct {v2, v13}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 973
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    move-object/from16 v24, v2

    .line 974
    if-eqz v22, :cond_6

    .line 976
    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 981
    :cond_6
    :goto_3
    if-eqz v17, :cond_7

    .line 983
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 988
    :cond_7
    :goto_4
    if-eqz v12, :cond_8

    .line 989
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)V

    .line 993
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 994
    .restart local v16    # "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 996
    .restart local v5    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 997
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 998
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 995
    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 973
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v16    # "f":Ljava/io/File;
    :cond_8
    throw v24

    .line 913
    .restart local v10    # "data":[B
    .restart local v17    # "is":Ljava/io/InputStream;
    .restart local v18    # "isDrm":Z
    .restart local v22    # "os":Ljava/io/OutputStream;
    :cond_9
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v22

    .line 914
    .local v22, "os":Ljava/io/OutputStream;
    if-nez v22, :cond_a

    .line 915
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string/jumbo v3, "Could not create OutputStream"

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 970
    .end local v10    # "data":[B
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v18    # "isDrm":Z
    .end local v22    # "os":Ljava/io/OutputStream;
    :catch_2
    move-exception v14

    .line 971
    .local v14, "e":Ljava/io/IOException;
    :try_start_a
    const-string/jumbo v2, "Failed to read/write data."

    invoke-static {v2, v14}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 972
    new-instance v2, Lcom/google/android/mms/MmsException;

    invoke-direct {v2, v14}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 918
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v10    # "data":[B
    .restart local v17    # "is":Ljava/io/InputStream;
    .restart local v18    # "isDrm":Z
    .restart local v22    # "os":Ljava/io/OutputStream;
    :cond_a
    if-nez v10, :cond_12

    .line 919
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v11

    .line 920
    .local v11, "dataUri":Landroid/net/Uri;
    if-eqz v11, :cond_b

    move-object/from16 v0, p2

    if-ne v11, v0, :cond_e

    .line 921
    :cond_b
    const-string/jumbo v2, "Can\'t find data for this part."

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 974
    if-eqz v22, :cond_c

    .line 976
    :try_start_c
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 988
    :cond_c
    :goto_5
    if-eqz v12, :cond_d

    .line 989
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)V

    .line 993
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 994
    .restart local v16    # "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 996
    .restart local v5    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 997
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "content://mms/resetFilePerm/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 998
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 995
    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 922
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v16    # "f":Ljava/io/File;
    :cond_d
    return-void

    .line 977
    :catch_3
    move-exception v14

    .line 978
    .restart local v14    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException while closing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 924
    .end local v14    # "e":Ljava/io/IOException;
    :cond_e
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v17

    .line 930
    .local v17, "is":Ljava/io/InputStream;
    const/16 v2, 0x2000

    new-array v8, v2, [B

    .line 931
    .local v8, "buffer":[B
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I

    move-result v19

    .line 932
    .local v19, "len":I
    :goto_6
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_0

    .line 933
    if-nez v18, :cond_f

    .line 934
    const/4 v2, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v8, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 946
    :goto_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I

    move-result v19

    goto :goto_6

    .line 936
    :cond_f
    if-nez v12, :cond_10

    .line 937
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string/jumbo v3, "Content is drm, but drmConvertSession == null"

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 939
    :cond_10
    move/from16 v0, v19

    invoke-virtual {v12, v8, v0}, Lcom/google/android/mms/util/DrmConvertSession;->convert([BI)[B

    move-result-object v9

    .line 940
    .local v9, "convertedData":[B
    if-eqz v9, :cond_11

    .line 941
    array-length v2, v9

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_7

    .line 943
    :cond_11
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string/jumbo v3, "Error converting drm data."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 952
    .end local v8    # "buffer":[B
    .end local v9    # "convertedData":[B
    .end local v11    # "dataUri":Landroid/net/Uri;
    .end local v19    # "len":I
    .local v17, "is":Ljava/io/InputStream;
    :cond_12
    if-nez v18, :cond_13

    .line 953
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_0

    .line 955
    :cond_13
    if-nez v12, :cond_14

    .line 956
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string/jumbo v3, "Content is drm, but drmConvertSession == null"

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 958
    :cond_14
    array-length v2, v10

    invoke-virtual {v12, v10, v2}, Lcom/google/android/mms/util/DrmConvertSession;->convert([BI)[B

    move-result-object v9

    .line 959
    .restart local v9    # "convertedData":[B
    if-eqz v9, :cond_15

    .line 960
    array-length v2, v9

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_0

    .line 962
    :cond_15
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string/jumbo v3, "Error converting drm data."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 977
    .end local v9    # "convertedData":[B
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v18    # "isDrm":Z
    .end local v22    # "os":Ljava/io/OutputStream;
    :catch_4
    move-exception v14

    .line 978
    .restart local v14    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException while closing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 984
    .end local v14    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v14

    .line 985
    .restart local v14    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException while closing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 977
    .end local v10    # "data":[B
    .end local v14    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v14

    .line 978
    .restart local v14    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException while closing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 984
    .end local v14    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v14

    .line 985
    .restart local v14    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException while closing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4
.end method

.method private persistPduByPduPersister(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 10
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "notificationUri"    # Landroid/net/Uri;
    .param p4, "isUpdateTimestamp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 471
    iget-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    const/4 v3, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v3

    .line 472
    .local v3, "res":Landroid/net/Uri;
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getStarStatusAndMessageSize(Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v4

    .line 473
    .local v4, "values":Landroid/content/ContentValues;
    if-eqz p4, :cond_0

    .line 474
    const-string/jumbo v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 476
    :cond_0
    invoke-virtual {v4}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 477
    iget-object v1, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v6, v5

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 479
    :cond_1
    if-eqz p3, :cond_2

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1, p3, v5, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 482
    :cond_2
    return-object v3
.end method

.method private persistPduByProvider(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 5
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "notificationUri"    # Landroid/net/Uri;
    .param p4, "isUpdateTimestamp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 518
    if-nez p2, :cond_0

    .line 519
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string/jumbo v4, "Uri may not be null."

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 522
    :cond_0
    sget-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 523
    .local v1, "msgBox":Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 524
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string/jumbo v4, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 529
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 530
    .local v0, "marshalValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "dest_messagebox"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string/jumbo v3, "update_sctimestamp"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 532
    if-eqz p3, :cond_2

    .line 533
    const-string/jumbo v3, "notification_uri"

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_2
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v4

    .line 536
    :try_start_0
    sget-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v3, p2}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 537
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->processPduContent(Lcom/google/android/mms/pdu/GenericPdu;Landroid/content/ContentValues;)[Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 538
    .local v2, "pduParts":[Lcom/google/android/mms/pdu/PduPart;
    sget-object v3, Lcom/sonyericsson/conversations/data/SomcPduPersister;->SomcProviderContentUri:Landroid/net/Uri;

    invoke-direct {p0, v3, v2, v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistPduContentInProvider(Landroid/net/Uri;[Lcom/google/android/mms/pdu/PduPart;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 535
    .end local v2    # "pduParts":[Lcom/google/android/mms/pdu/PduPart;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private persistPduContentInProvider(Landroid/net/Uri;[Lcom/google/android/mms/pdu/PduPart;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pduParts"    # [Lcom/google/android/mms/pdu/PduPart;
    .param p3, "marshalValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 829
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v2, v3, v0, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 833
    .local v17, "res":Landroid/net/Uri;
    invoke-static/range {v17 .. v17}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 834
    .local v12, "msgId":J
    const/16 v16, 0x0

    .line 836
    .local v16, "partsCursor":Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 837
    const-string/jumbo v4, "content://mms/part"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 838
    const-string/jumbo v6, "_id"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 839
    const-string/jumbo v6, "mid=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    .line 840
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/16 v18, 0x0

    aput-object v8, v7, v18

    .line 841
    const-string/jumbo v8, "_id"

    .line 836
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 842
    .local v16, "partsCursor":Landroid/database/Cursor;
    if-eqz v16, :cond_0

    if-eqz p2, :cond_0

    .line 843
    move-object/from16 v0, p2

    array-length v2, v0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 844
    const/4 v10, 0x0

    .line 845
    .local v10, "i":I
    const-string/jumbo v2, "content://mms/part/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .local v14, "partBaseUri":Landroid/net/Uri;
    move v11, v10

    .line 846
    .end local v10    # "i":I
    .local v11, "i":I
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 847
    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    .line 849
    .local v15, "partUri":Landroid/net/Uri;
    aget-object v2, p2, v11

    aget-object v3, p2, v11

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15, v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistPartData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V

    .line 850
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    aget-object v2, p2, v11

    invoke-virtual {v2, v15}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_0

    .line 830
    .end local v11    # "i":I
    .end local v12    # "msgId":J
    .end local v14    # "partBaseUri":Landroid/net/Uri;
    .end local v15    # "partUri":Landroid/net/Uri;
    .end local v16    # "partsCursor":Landroid/database/Cursor;
    .end local v17    # "res":Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 831
    .local v9, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Lcom/google/android/mms/MmsException;

    invoke-direct {v2, v9}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 854
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    .restart local v12    # "msgId":J
    .restart local v16    # "partsCursor":Landroid/database/Cursor;
    .restart local v17    # "res":Landroid/net/Uri;
    :cond_0
    if-eqz v16, :cond_1

    .line 855
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 858
    :cond_1
    return-object v17

    .line 853
    .end local v16    # "partsCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .line 854
    if-eqz v16, :cond_2

    .line 855
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 853
    :cond_2
    throw v2
.end method

.method private processPduContent(Lcom/google/android/mms/pdu/GenericPdu;Landroid/content/ContentValues;)[Lcom/google/android/mms/pdu/PduPart;
    .locals 35
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "marshalValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 554
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sGenericPduGetPduHeadersMethod:Ljava/lang/reflect/Method;

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/mms/pdu/PduHeaders;

    .line 555
    .local v14, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    if-nez v14, :cond_0

    .line 556
    new-instance v28, Lcom/google/android/mms/MmsException;

    const-string/jumbo v29, "Cannot get PDU headers"

    invoke-direct/range {v28 .. v29}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 559
    :cond_0
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 562
    .local v27, "values":Landroid/content/ContentValues;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v15, v0, :cond_2

    .line 563
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 565
    .local v16, "key":I
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValueMethod:Ljava/lang/reflect/Method;

    .line 564
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    .line 565
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v29, v31

    .line 564
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v14, v1}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 566
    .local v13, "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v13, :cond_1

    .line 567
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->CHARSET_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 568
    .local v10, "charsetColumn":Ljava/lang/String;
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 569
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([BI)Ljava/lang/String;

    move-result-object v29

    .line 568
    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 562
    .end local v10    # "charsetColumn":Ljava/lang/String;
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 574
    .end local v13    # "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v16    # "key":I
    :cond_2
    const/4 v15, 0x0

    :goto_1
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v15, v0, :cond_4

    .line 575
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 576
    .restart local v16    # "key":I
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetTextStringMethod:Ljava/lang/reflect/Method;

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    .line 577
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v29, v31

    .line 576
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v14, v1}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    .line 578
    .local v23, "text":[B
    if-eqz v23, :cond_3

    .line 579
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 583
    .end local v16    # "key":I
    .end local v23    # "text":[B
    :cond_4
    const/4 v15, 0x0

    :goto_2
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v15, v0, :cond_6

    .line 584
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 585
    .restart local v16    # "key":I
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetOctetMethod:Ljava/lang/reflect/Method;

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    .line 586
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v29, v31

    .line 585
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v14, v1}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 587
    .local v7, "b":Ljava/lang/Integer;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v28

    if-eqz v28, :cond_5

    .line 588
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 583
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 592
    .end local v7    # "b":Ljava/lang/Integer;
    .end local v16    # "key":I
    :cond_6
    const/4 v15, 0x0

    :goto_3
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v15, v0, :cond_8

    .line 593
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 594
    .restart local v16    # "key":I
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetLongIntegerMethod:Ljava/lang/reflect/Method;

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    .line 595
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v29, v31

    .line 594
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v14, v1}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    .line 596
    .local v17, "l":Ljava/lang/Long;
    if-eqz v17, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const-wide/16 v30, -0x1

    cmp-long v28, v28, v30

    if-eqz v28, :cond_7

    .line 597
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_NAME_MAP:Landroid/util/SparseArray;

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 592
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 601
    .end local v16    # "key":I
    .end local v17    # "l":Ljava/lang/Long;
    :cond_8
    new-instance v5, Landroid/util/SparseArray;

    .line 602
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ADDRESS_FIELDS:[I

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    .line 601
    move/from16 v0, v28

    invoke-direct {v5, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 604
    .local v5, "addressMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    sget-object v29, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ADDRESS_FIELDS:[I

    const/16 v28, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    :goto_4
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_b

    aget v4, v29, v28

    .line 605
    .local v4, "addrType":I
    const/4 v6, 0x0

    .line 606
    .local v6, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v31, 0x89

    move/from16 v0, v31

    if-ne v4, v0, :cond_a

    .line 608
    sget-object v31, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValueMethod:Ljava/lang/reflect/Method;

    .line 607
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    .line 608
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x0

    aput-object v33, v32, v34

    .line 607
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v14, v1}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 609
    .local v26, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v26, :cond_9

    .line 610
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v6, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 611
    .local v6, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v31, 0x0

    aput-object v26, v6, v31

    .line 617
    .end local v6    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v26    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_9
    :goto_5
    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 604
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    .line 615
    .local v6, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_a
    sget-object v31, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sPduHeadersGetEncodedStringValuesMethod:Ljava/lang/reflect/Method;

    .line 614
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    .line 615
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x0

    aput-object v33, v32, v34

    .line 614
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v14, v1}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v6, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .local v6, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_5

    .line 620
    .end local v4    # "addrType":I
    .end local v6    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_b
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 621
    .local v22, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide v24, 0x7fffffffffffffffL

    .line 622
    .local v24, "threadId":J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v18

    .line 627
    .local v18, "msgType":I
    const/16 v28, 0x82

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_c

    .line 628
    const/16 v28, 0x84

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_10

    .line 630
    :cond_c
    :goto_6
    packed-switch v18, :pswitch_data_0

    .line 655
    :cond_d
    :goto_7
    :pswitch_0
    const/16 v28, 0x82

    move/from16 v0, v28

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 656
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v28

    .line 655
    if-eqz v28, :cond_12

    .line 659
    const-wide/16 v24, -0x1

    .line 666
    :cond_e
    :goto_8
    const-string/jumbo v28, "thread_id"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 667
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/data/ContentValuesMarshaller;->marshalInboxCV(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 669
    const/16 v20, 0x0

    .line 672
    .local v20, "pduParts":[Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move/from16 v28, v0

    if-eqz v28, :cond_15

    .line 673
    check-cast p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v8

    .line 675
    .local v8, "body":Lcom/google/android/mms/pdu/PduBody;
    if-eqz v8, :cond_15

    .line 676
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v19

    .line 677
    .local v19, "partsNum":I
    const/4 v11, 0x0

    .line 678
    .local v11, "charsetPreValue":I
    if-lez v19, :cond_13

    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/android/mms/pdu/PduPart;

    move-object/from16 v20, v0

    .line 679
    .end local v20    # "pduParts":[Lcom/google/android/mms/pdu/PduPart;
    :goto_9
    const/4 v15, 0x0

    :goto_a
    if-eqz v20, :cond_15

    move/from16 v0, v19

    if-ge v15, v0, :cond_15

    .line 680
    invoke-virtual {v8, v15}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v28

    aput-object v28, v20, v15

    .line 681
    aget-object v28, v20, v15

    if-eqz v28, :cond_f

    aget-object v28, v20, v15

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v28

    if-eqz v28, :cond_f

    .line 682
    aget-object v28, v20, v15

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v12

    .line 683
    .local v12, "contentType":Ljava/lang/String;
    const-string/jumbo v28, "text/plain"

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 684
    aget-object v28, v20, v15

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v9

    .line 685
    .local v9, "charset":I
    if-eqz v9, :cond_14

    .line 686
    move v11, v9

    .line 694
    .end local v9    # "charset":I
    .end local v12    # "contentType":Ljava/lang/String;
    :cond_f
    :goto_b
    aget-object v28, v20, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->storePartContentAndText(Landroid/content/ContentValues;Lcom/google/android/mms/pdu/PduPart;)V

    .line 679
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 629
    .end local v8    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v11    # "charsetPreValue":I
    .end local v19    # "partsNum":I
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_10
    const/16 v28, 0x80

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    goto/16 :goto_6

    .line 633
    :pswitch_1
    const/16 v28, 0x89

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v22

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->loadRecipients(ILjava/util/HashSet;Landroid/util/SparseArray;Z)V

    .line 635
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGroupMmsEnabled()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 636
    const/16 v28, 0x97

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 639
    .restart local v6    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v6, :cond_11

    array-length v0, v6

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_11

    .line 640
    const/16 v28, 0x97

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v22

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->loadRecipients(ILjava/util/HashSet;Landroid/util/SparseArray;Z)V

    .line 646
    :cond_11
    const/16 v28, 0x82

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v22

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->loadRecipients(ILjava/util/HashSet;Landroid/util/SparseArray;Z)V

    goto/16 :goto_7

    .line 650
    .end local v6    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_2
    const/16 v28, 0x97

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v22

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->loadRecipients(ILjava/util/HashSet;Landroid/util/SparseArray;Z)V

    goto/16 :goto_7

    .line 661
    :cond_12
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v21

    .line 663
    .local v21, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v24

    goto/16 :goto_8

    .line 678
    .end local v21    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v8    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v11    # "charsetPreValue":I
    .restart local v19    # "partsNum":I
    .restart local v20    # "pduParts":[Lcom/google/android/mms/pdu/PduPart;
    :cond_13
    const/16 v20, 0x0

    goto/16 :goto_9

    .line 690
    .end local v20    # "pduParts":[Lcom/google/android/mms/pdu/PduPart;
    .restart local v9    # "charset":I
    .restart local v12    # "contentType":Ljava/lang/String;
    :cond_14
    aget-object v28, v20, v15

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    goto/16 :goto_b

    .line 700
    .end local v8    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v9    # "charset":I
    .end local v11    # "charsetPreValue":I
    .end local v12    # "contentType":Ljava/lang/String;
    .end local v19    # "partsNum":I
    :cond_15
    sget-object v29, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ADDRESS_FIELDS:[I

    const/16 v28, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    :goto_c
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_17

    aget v4, v29, v28

    .line 701
    .restart local v4    # "addrType":I
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 702
    .restart local v6    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v6, :cond_16

    .line 703
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v6}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->storeAddress(Landroid/content/ContentValues;I[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 700
    :cond_16
    add-int/lit8 v28, v28, 0x1

    goto :goto_c

    .line 706
    .end local v4    # "addrType":I
    .end local v6    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_17
    return-object v20

    .line 630
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;I)V
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;
    .param p4, "mapColumn"    # I

    .prologue
    .line 1071
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1072
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1073
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->CHARSET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1074
    .local v1, "charsetColumnIndex":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1075
    .local v0, "charset":I
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {p0, v2, p4}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getBytes(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 1076
    .local v3, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {p3, v3, p4}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->setEncodedStringValueEx(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 1070
    .end local v0    # "charset":I
    .end local v1    # "charsetColumnIndex":I
    .end local v3    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    return-void
.end method

.method private setLongToHeaders(Landroid/database/Cursor;ILcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;I)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;
    .param p4, "mapColumn"    # I

    .prologue
    .line 1097
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1098
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1099
    .local v0, "l":J
    invoke-virtual {p3, v0, v1, p4}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->setLongIntegerEx(JI)V

    .line 1096
    .end local v0    # "l":J
    :cond_0
    return-void
.end method

.method private setOctetToHeaders(Landroid/database/Cursor;ILcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;I)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;
    .param p4, "mapColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 1090
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1091
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1092
    .local v0, "b":I
    invoke-virtual {p3, v0, p4}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->setOctetEx(II)V

    .line 1089
    .end local v0    # "b":I
    :cond_0
    return-void
.end method

.method private setTextStringToHeaders(Landroid/database/Cursor;ILcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;I)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;
    .param p4, "mapColumn"    # I

    .prologue
    .line 1082
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1083
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1084
    invoke-static {v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1, p4}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->setTextStringEx([BI)V

    .line 1081
    :cond_0
    return-void
.end method

.method private storeAddress(Landroid/content/ContentValues;I[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 8
    .param p1, "marshalValues"    # Landroid/content/ContentValues;
    .param p2, "type"    # I
    .param p3, "array"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 740
    array-length v4, p3

    new-array v3, v4, [Landroid/content/ContentValues;

    .line 742
    .local v3, "valuesArray":[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 743
    .local v1, "index":I
    const/4 v4, 0x0

    array-length v5, p3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, p3, v4

    .line 744
    .local v0, "addr":Lcom/google/android/mms/pdu/EncodedStringValue;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 745
    .local v2, "values":Landroid/content/ContentValues;
    aput-object v2, v3, v1

    .line 746
    const-string/jumbo v6, "address"

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string/jumbo v6, "charset"

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 748
    const-string/jumbo v6, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 749
    add-int/lit8 v1, v1, 0x1

    .line 743
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 751
    .end local v0    # "addr":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    invoke-static {p1, v3}, Lcom/sonyericsson/conversations/data/ContentValuesMarshaller;->marshalAddrsCV(Landroid/content/ContentValues;[Landroid/content/ContentValues;)V

    .line 739
    return-void
.end method

.method private storePartContentAndText(Landroid/content/ContentValues;Lcom/google/android/mms/pdu/PduPart;)V
    .locals 13
    .param p1, "marshalValues"    # Landroid/content/ContentValues;
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 756
    new-instance v10, Landroid/content/ContentValues;

    const/16 v11, 0x8

    invoke-direct {v10, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 758
    .local v10, "values":Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v0

    .line 759
    .local v0, "charset":I
    if-eqz v0, :cond_0

    .line 760
    const-string/jumbo v11, "chset"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 764
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v11

    if-eqz v11, :cond_b

    .line 765
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v11

    invoke-static {v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, "contentType":Ljava/lang/String;
    const-string/jumbo v11, "ct"

    invoke-virtual {v10, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string/jumbo v11, "application/smil"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 769
    const-string/jumbo v11, "seq"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v11

    if-eqz v11, :cond_2

    .line 776
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v11

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v11, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 777
    .local v4, "fileName":Ljava/lang/String;
    const-string/jumbo v11, "fn"

    invoke-virtual {v10, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lcom/google/android/mms/util/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z

    move-result v5

    .line 781
    .local v5, "isDrm":Z
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v11

    if-eqz v11, :cond_3

    .line 782
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v11

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v11, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 783
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v11, "name"

    invoke-virtual {v10, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    .end local v6    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v11

    if-eqz v11, :cond_4

    .line 788
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v11

    invoke-static {v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v9

    .line 789
    .local v9, "value":Ljava/lang/Object;
    const-string/jumbo v11, "cd"

    check-cast v9, Ljava/lang/String;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v11

    if-eqz v11, :cond_5

    .line 793
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v11

    invoke-static {v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v9

    .line 794
    .restart local v9    # "value":Ljava/lang/Object;
    const-string/jumbo v11, "cid"

    check-cast v9, Ljava/lang/String;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v11

    if-eqz v11, :cond_7

    .line 798
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v11

    invoke-static {v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v9

    .line 799
    .restart local v9    # "value":Ljava/lang/Object;
    if-eqz v5, :cond_6

    .line 800
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v11

    invoke-static {v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/mms/util/DownloadDrmHelper;->modifyDrmFwLockFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 802
    :cond_6
    const-string/jumbo v11, "cl"

    check-cast v9, Ljava/lang/String;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_7
    invoke-static {p1, v10}, Lcom/sonyericsson/conversations/data/ContentValuesMarshaller;->marshalPartsCV(Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v7

    .line 806
    .local v7, "partIndex":I
    const-string/jumbo v11, "text/plain"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string/jumbo v11, "application/smil"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 807
    const-string/jumbo v11, "text/html"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 806
    if-eqz v11, :cond_a

    .line 809
    :cond_8
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    .line 810
    .local v2, "data":[B
    if-eqz v2, :cond_c

    .line 812
    const-string/jumbo v11, "text/plain"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    array-length v11, v2

    const/16 v12, 0x2710

    if-lt v11, v12, :cond_9

    .line 813
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    .line 814
    .local v8, "tempData":Ljava/lang/String;
    const/4 v11, 0x0

    const/16 v12, 0x270f

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 815
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 817
    .end local v8    # "tempData":Ljava/lang/String;
    :cond_9
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v11

    invoke-direct {v3, v11, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 822
    .local v3, "encodedParser":Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v11

    .line 821
    invoke-static {p1, v7, v1, v11}, Lcom/sonyericsson/conversations/data/ContentValuesMarshaller;->marshalPartsDataCV(Landroid/content/ContentValues;ILjava/lang/String;Ljava/lang/String;)V

    .line 755
    .end local v2    # "data":[B
    .end local v3    # "encodedParser":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_a
    return-void

    .line 772
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v5    # "isDrm":Z
    .end local v7    # "partIndex":I
    :cond_b
    new-instance v11, Lcom/google/android/mms/MmsException;

    const-string/jumbo v12, "MIME type of the part must be set."

    invoke-direct {v11, v12}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 819
    .restart local v1    # "contentType":Ljava/lang/String;
    .restart local v2    # "data":[B
    .restart local v5    # "isDrm":Z
    .restart local v7    # "partIndex":I
    :cond_c
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string/jumbo v11, ""

    invoke-direct {v3, v11}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .restart local v3    # "encodedParser":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_0
.end method

.method public static toIsoString([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 1045
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private toIsoString([BI)Ljava/lang/String;
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "key"    # I

    .prologue
    .line 1049
    const/16 v0, 0x96

    if-ne p2, v0, :cond_0

    .line 1050
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 1052
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPendingMessages(J)Landroid/database/Cursor;
    .locals 1
    .param p1, "dueTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 29
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1111
    sget-object v28, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v28

    .line 1112
    :try_start_0
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/mms/util/PduCacheEntry;

    .line 1113
    .local v13, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v13, :cond_0

    .line 1114
    invoke-virtual {v13}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    monitor-exit v28

    return-object v4

    .line 1117
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    .line 1118
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    .line 1117
    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1119
    .local v12, "c":Landroid/database/Cursor;
    new-instance v15, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;

    invoke-direct {v15}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;-><init>()V

    .line 1121
    .local v15, "headers":Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v20

    .line 1126
    .local v20, "msgId":J
    if-eqz v12, :cond_1

    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 1127
    :cond_1
    new-instance v4, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1153
    :catchall_0
    move-exception v4

    .line 1154
    if-eqz v12, :cond_2

    .line 1155
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1153
    :cond_2
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1111
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local v15    # "headers":Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;
    .end local v20    # "msgId":J
    :catchall_1
    move-exception v4

    monitor-exit v28

    throw v4

    .line 1126
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v15    # "headers":Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;
    .restart local v20    # "msgId":J
    :cond_3
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1130
    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1131
    .local v18, "msgBox":I
    const/4 v4, 0x2

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 1133
    .local v26, "threadId":J
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_4

    .line 1134
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v17

    .line 1135
    .local v17, "key":I
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v4, v15, v1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;I)V

    .line 1133
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1139
    .end local v17    # "key":I
    :cond_4
    const/16 v16, 0x0

    :goto_1
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_5

    .line 1140
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v17

    .line 1141
    .restart local v17    # "key":I
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v4, v15, v1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->setTextStringToHeaders(Landroid/database/Cursor;ILcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;I)V

    .line 1139
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1144
    .end local v17    # "key":I
    :cond_5
    const/16 v16, 0x0

    :goto_2
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_6

    .line 1145
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v17

    .line 1146
    .restart local v17    # "key":I
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->OCTET_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v4, v15, v1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->setOctetToHeaders(Landroid/database/Cursor;ILcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;I)V

    .line 1144
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1149
    .end local v17    # "key":I
    :cond_6
    const/16 v16, 0x0

    :goto_3
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_7

    .line 1150
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v17

    .line 1151
    .restart local v17    # "key":I
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->LONG_COLUMN_INDEX_MAP:Landroid/util/SparseIntArray;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v4, v15, v1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->setLongToHeaders(Landroid/database/Cursor;ILcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1149
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 1154
    .end local v17    # "key":I
    :cond_7
    if-eqz v12, :cond_8

    .line 1155
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1160
    :cond_8
    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-nez v4, :cond_9

    .line 1161
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string/jumbo v5, "Error! ID of the message: -1."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1165
    :cond_9
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2, v15}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->loadAddress(JLcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;)V

    .line 1167
    const/16 v4, 0x8c

    invoke-virtual {v15, v4}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->getOctetEx(I)I

    move-result v19

    .line 1168
    .local v19, "msgType":I
    new-instance v11, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v11}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 1172
    .local v11, "body":Lcom/google/android/mms/pdu/PduBody;
    const/16 v4, 0x84

    move/from16 v0, v19

    if-eq v0, v4, :cond_a

    .line 1173
    const/16 v4, 0x80

    move/from16 v0, v19

    if-ne v0, v4, :cond_b

    .line 1174
    :cond_a
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->loadParts(J)[Lcom/google/android/mms/pdu/PduPart;

    move-result-object v24

    .line 1175
    .local v24, "parts":[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v24, :cond_b

    .line 1176
    const/4 v4, 0x0

    move-object/from16 v0, v24

    array-length v5, v0

    :goto_4
    if-ge v4, v5, :cond_b

    aget-object v23, v24, v4

    .line 1177
    .local v23, "part":Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 1176
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1183
    .end local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v24    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    :cond_b
    const-string/jumbo v22, "com.google.android.mms.pdu"

    .line 1185
    .local v22, "packagePath":Ljava/lang/String;
    packed-switch v19, :pswitch_data_0

    .line 1277
    new-instance v4, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unrecognized PDU type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1187
    :pswitch_0
    const-string/jumbo v14, "NotificationInd"

    .line 1188
    .local v14, "contorStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1189
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    .line 1190
    const-class v6, Lcom/google/android/mms/pdu/PduHeaders;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1191
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 1192
    const/4 v7, 0x0

    aput-object v15, v6, v7

    .line 1189
    const/4 v7, 0x0

    .line 1188
    invoke-static {v4, v7, v5, v6}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/android/mms/pdu/NotificationInd;

    .line 1280
    .local v25, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :goto_5
    new-instance v13, Lcom/google/android/mms/util/PduCacheEntry;

    .end local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    move-object/from16 v0, v25

    move/from16 v1, v18

    move-wide/from16 v2, v26

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V

    .line 1281
    .restart local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v13}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v28

    .line 1282
    return-object v25

    .line 1196
    .end local v14    # "contorStr":Ljava/lang/String;
    .end local v25    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_1
    :try_start_6
    const-string/jumbo v14, "DeliveryInd"

    .line 1197
    .restart local v14    # "contorStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1198
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    .line 1199
    const-class v6, Lcom/google/android/mms/pdu/PduHeaders;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1200
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 1201
    const/4 v7, 0x0

    aput-object v15, v6, v7

    .line 1198
    const/4 v7, 0x0

    .line 1197
    invoke-static {v4, v7, v5, v6}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/android/mms/pdu/DeliveryInd;

    .restart local v25    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_5

    .line 1205
    .end local v14    # "contorStr":Ljava/lang/String;
    .end local v25    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_2
    const-string/jumbo v14, "ReadOrigInd"

    .line 1206
    .restart local v14    # "contorStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1207
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    .line 1208
    const-class v6, Lcom/google/android/mms/pdu/PduHeaders;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1209
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 1210
    const/4 v7, 0x0

    aput-object v15, v6, v7

    .line 1207
    const/4 v7, 0x0

    .line 1206
    invoke-static {v4, v7, v5, v6}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/android/mms/pdu/ReadOrigInd;

    .restart local v25    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_5

    .line 1214
    .end local v14    # "contorStr":Ljava/lang/String;
    .end local v25    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_3
    const-string/jumbo v14, "RetrieveConf"

    .line 1215
    .restart local v14    # "contorStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1216
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    .line 1217
    const-class v6, Lcom/google/android/mms/pdu/PduHeaders;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Lcom/google/android/mms/pdu/PduBody;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1218
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 1219
    const/4 v7, 0x0

    aput-object v15, v6, v7

    const/4 v7, 0x1

    aput-object v11, v6, v7

    .line 1216
    const/4 v7, 0x0

    .line 1215
    invoke-static {v4, v7, v5, v6}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/android/mms/pdu/RetrieveConf;

    .restart local v25    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto/16 :goto_5

    .line 1223
    .end local v14    # "contorStr":Ljava/lang/String;
    .end local v25    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_4
    const-string/jumbo v14, "SendReq"

    .line 1224
    .restart local v14    # "contorStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1225
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    .line 1226
    const-class v6, Lcom/google/android/mms/pdu/PduHeaders;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Lcom/google/android/mms/pdu/PduBody;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1227
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 1228
    const/4 v7, 0x0

    aput-object v15, v6, v7

    const/4 v7, 0x1

    aput-object v11, v6, v7

    .line 1225
    const/4 v7, 0x0

    .line 1224
    invoke-static {v4, v7, v5, v6}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/android/mms/pdu/SendReq;

    .restart local v25    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto/16 :goto_5

    .line 1232
    .end local v14    # "contorStr":Ljava/lang/String;
    .end local v25    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_5
    const-string/jumbo v14, "AcknowledgeInd"

    .line 1233
    .restart local v14    # "contorStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1234
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    .line 1235
    const-class v6, Lcom/google/android/mms/pdu/PduHeaders;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1236
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 1237
    const/4 v7, 0x0

    aput-object v15, v6, v7

    .line 1234
    const/4 v7, 0x0

    .line 1233
    invoke-static {v4, v7, v5, v6}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/android/mms/pdu/AcknowledgeInd;

    .restart local v25    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto/16 :goto_5

    .line 1241
    .end local v14    # "contorStr":Ljava/lang/String;
    .end local v25    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_6
    const-string/jumbo v14, "NotifyRespInd"

    .line 1242
    .restart local v14    # "contorStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1243
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    .line 1244
    const-class v6, Lcom/google/android/mms/pdu/PduHeaders;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1245
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 1246
    const/4 v7, 0x0

    aput-object v15, v6, v7

    .line 1243
    const/4 v7, 0x0

    .line 1242
    invoke-static {v4, v7, v5, v6}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/android/mms/pdu/NotifyRespInd;

    .restart local v25    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto/16 :goto_5

    .line 1250
    .end local v14    # "contorStr":Ljava/lang/String;
    .end local v25    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_7
    const-string/jumbo v14, "ReadRecInd"

    .line 1251
    .restart local v14    # "contorStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1252
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    .line 1253
    const-class v6, Lcom/google/android/mms/pdu/PduHeaders;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1254
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 1255
    const/4 v7, 0x0

    aput-object v15, v6, v7

    .line 1252
    const/4 v7, 0x0

    .line 1251
    invoke-static {v4, v7, v5, v6}, Lcom/sonyericsson/conversations/util/ReflectionUtil;->createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/android/mms/pdu/ReadRecInd;

    .restart local v25    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto/16 :goto_5

    .line 1274
    .end local v14    # "contorStr":Ljava/lang/String;
    .end local v25    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_8
    new-instance v4, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported PDU type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1185
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public loadPartForBriefImage(Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduPart;
    .locals 16
    .param p1, "partUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1480
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mBriefPartCache:Landroid/util/LruCache;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/mms/pdu/PduPart;

    .line 1481
    .local v9, "briefPart":Lcom/google/android/mms/pdu/PduPart;
    if-nez v9, :cond_4

    .line 1482
    const/4 v12, 0x0

    .line 1484
    .local v12, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PART_PROJECTION:[Ljava/lang/String;

    .line 1485
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    .line 1484
    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1486
    .local v12, "c":Landroid/database/Cursor;
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1487
    new-instance v10, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v10}, Lcom/google/android/mms/pdu/PduPart;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1488
    .end local v9    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    .local v10, "briefPart":Lcom/google/android/mms/pdu/PduPart;
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 1489
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->loadBriefPartContent(Landroid/database/Cursor;Lcom/google/android/mms/pdu/PduPart;)V

    .line 1490
    const/4 v14, 0x0

    .line 1491
    .local v14, "is":Ljava/io/InputStream;
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1493
    .local v8, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 1495
    .local v14, "is":Ljava/io/InputStream;
    const/16 v1, 0x100

    new-array v11, v1, [B

    .line 1496
    .local v11, "buffer":[B
    invoke-virtual {v14, v11}, Ljava/io/InputStream;->read([B)I

    move-result v15

    .line 1497
    .local v15, "len":I
    :goto_0
    if-ltz v15, :cond_0

    .line 1498
    const/4 v1, 0x0

    invoke-virtual {v8, v11, v1, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1499
    invoke-virtual {v14, v11}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v15

    goto :goto_0

    .line 1505
    :cond_0
    if-eqz v14, :cond_1

    .line 1507
    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1513
    :cond_1
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v9, v10

    .line 1516
    .end local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    .end local v11    # "buffer":[B
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v15    # "len":I
    .restart local v9    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    :cond_2
    if-eqz v12, :cond_3

    .line 1517
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1520
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mBriefPartCache:Landroid/util/LruCache;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v9}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    .end local v12    # "c":Landroid/database/Cursor;
    :cond_4
    return-object v9

    .line 1508
    .end local v9    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    .restart local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    .restart local v11    # "buffer":[B
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v14    # "is":Ljava/io/InputStream;
    .restart local v15    # "len":I
    :catch_0
    move-exception v13

    .line 1509
    .local v13, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v1, "Failed to close stream"

    invoke-static {v1, v13}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1515
    .end local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "buffer":[B
    .end local v13    # "e":Ljava/io/IOException;
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v15    # "len":I
    :catchall_0
    move-exception v1

    move-object v9, v10

    .line 1516
    .end local v10    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    .end local v12    # "c":Landroid/database/Cursor;
    .restart local v9    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    :goto_2
    if-eqz v12, :cond_5

    .line 1517
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1515
    :cond_5
    throw v1

    .line 1501
    .end local v9    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    .restart local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    .restart local v12    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v13

    .line 1502
    .restart local v13    # "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v1, "Failed to load part data"

    invoke-static {v1, v13}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1503
    new-instance v1, Lcom/google/android/mms/MmsException;

    invoke-direct {v1, v13}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1504
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    .line 1505
    if-eqz v14, :cond_6

    .line 1507
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1504
    :cond_6
    :goto_3
    :try_start_8
    throw v1

    .line 1508
    :catch_2
    move-exception v13

    .line 1509
    .restart local v13    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "Failed to close stream"

    invoke-static {v2, v13}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 1515
    .end local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v9    # "briefPart":Lcom/google/android/mms/pdu/PduPart;
    :catchall_2
    move-exception v1

    goto :goto_2
.end method

.method public move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "from"    # Landroid/net/Uri;
    .param p2, "to"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 550
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUseSCTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistPduByProvider(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public persistMmsNotification(Lcom/google/android/mms/pdu/GenericPdu;)Landroid/net/Uri;
    .locals 9
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v8

    .line 412
    .local v8, "type":I
    sparse-switch v8, :sswitch_data_0

    .line 418
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string/jumbo v1, "Wrong pdu message type, should use persistContent."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :sswitch_0
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 422
    .local v2, "uri":Landroid/net/Uri;
    sget-boolean v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sEnableTransactionSupport:Z

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 426
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 427
    .local v6, "marshalValues":Landroid/content/ContentValues;
    const-string/jumbo v0, "dest_messagebox"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    sget-object v1, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v1

    .line 429
    :try_start_0
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v2}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 430
    invoke-direct {p0, p1, v6}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->processPduContent(Lcom/google/android/mms/pdu/GenericPdu;Landroid/content/ContentValues;)[Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 431
    .local v7, "pduParts":[Lcom/google/android/mms/pdu/PduPart;
    sget-object v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->SomcProviderNotificationUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v7, v6}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistPduContentInProvider(Landroid/net/Uri;[Lcom/google/android/mms/pdu/PduPart;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 428
    .end local v7    # "pduParts":[Lcom/google/android/mms/pdu/PduPart;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 412
    nop

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_0
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method

.method public persistMmsRetrievedContent(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 8
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "notificationUri"    # Landroid/net/Uri;
    .param p3, "isUpdateTimestamp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 447
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v6

    .line 448
    .local v6, "type":I
    sparse-switch v6, :sswitch_data_0

    .line 457
    sget-object v7, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 458
    .local v7, "uri":Landroid/net/Uri;
    sget-boolean v0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->sEnableTransactionSupport:Z

    if-nez v0, :cond_0

    .line 459
    invoke-direct {p0, p1, v7, p2, p3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistPduByPduPersister(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 452
    .end local v7    # "uri":Landroid/net/Uri;
    :sswitch_0
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string/jumbo v1, "Wrong pdu message type, should use persistNotification."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getMessageSize(Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v3

    .line 462
    .local v3, "messageSize":Landroid/content/ContentValues;
    invoke-direct {p0, p1, v7, p2, p3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistPduByProvider(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v2

    .line 463
    .local v2, "newUri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 466
    :cond_1
    return-object v2

    .line 448
    nop

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_0
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method

.method public updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sendReq"    # Lcom/google/android/mms/pdu/SendReq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/sonyericsson/conversations/data/SomcPduPersister;->mPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    .line 1577
    return-void
.end method
