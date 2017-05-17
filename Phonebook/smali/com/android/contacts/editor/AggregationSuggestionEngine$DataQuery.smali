.class final Lcom/android/contacts/editor/AggregationSuggestionEngine$DataQuery;
.super Ljava/lang/Object;
.source "AggregationSuggestionEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/AggregationSuggestionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0xb

.field public static final ACCOUNT_TYPE:I = 0xa

.field public static final COLUMNS:[Ljava/lang/String;

.field public static final CONTACT_ID:I = 0x1

.field public static final DATA1:I = 0x7

.field public static final DATA_SET:I = 0xc

.field public static final DISPLAY_NAME:I = 0x4

.field public static final ID:I = 0x0

.field public static final IS_SUPERPRIMARY:I = 0x8

.field public static final LOOKUP_KEY:I = 0x2

.field public static final MIMETYPE:I = 0x6

.field public static final PHOTO:I = 0x9

.field public static final PHOTO_ID:I = 0x3

.field public static final RAW_CONTACT_ID:I = 0x5

.field public static final SELECTION_PREFIX:Ljava/lang/String; = "mimetype IN (\'vnd.android.cursor.item/phone_v2\',\'vnd.android.cursor.item/email_v2\',\'vnd.android.cursor.item/name\',\'vnd.android.cursor.item/nickname\',\'vnd.android.cursor.item/photo\') AND contact_id IN ("


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 270
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 271
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 272
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 273
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 274
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 275
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 276
    const-string/jumbo v1, "raw_contact_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 277
    const-string/jumbo v1, "mimetype"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 278
    const-string/jumbo v1, "data1"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 279
    const-string/jumbo v1, "is_super_primary"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 280
    const-string/jumbo v1, "data15"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 281
    const-string/jumbo v1, "account_type"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 282
    const-string/jumbo v1, "account_name"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 283
    const-string/jumbo v1, "data_set"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 270
    sput-object v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$DataQuery;->COLUMNS:[Ljava/lang/String;

    .line 259
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
