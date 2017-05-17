.class public Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns$DigitizedData;
.super Ljava/lang/Object;
.source "SmartSearchColumns.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigitizedData"
.end annotation


# static fields
.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/smartsearch-digitized_data"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/smartsearch-digitized_data"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIGITIZED_DATA_CONTACT_ID_COLUMN_INDEX:I = 0x1

.field public static final DIGITIZED_DATA_DISPLAY_NAME_COLUMN_INDEX:I = 0x3

.field public static final DIGITIZED_DATA_ID_COLUMN_INDEX:I = 0x0

.field public static final DIGITIZED_DATA_KEY_INDEX:I = 0x4

.field public static final DIGITIZED_DATA_LOCALE_COLUMN_INDEX:I = 0x5

.field public static final DIGITIZED_DATA_RAW_CONTACT_ID_COLUMN_INDEX:I = 0x2

.field public static final DIGITIZED_DATA_TYPE_COLUMN_INDEX:I = 0x6

.field public static final DIGITIZED_KEY:Ljava/lang/String; = "digitized_key"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field protected static final ID_PATH:Ljava/lang/String; = "digitized_data/#"

.field public static final LOCALE:Ljava/lang/String; = "locale"

.field protected static final PATH:Ljava/lang/String; = "digitized_data"

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final TABLE_NAME:Ljava/lang/String; = "digitized_data"

.field public static final TYPE:Ljava/lang/String; = "type"

.field protected static final sProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns$DigitizedData;->sProjectionMap:Ljava/util/HashMap;

    .line 85
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns$DigitizedData;->sProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns$DigitizedData;->sProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "contact_id"

    const-string/jumbo v2, "contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns$DigitizedData;->sProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "raw_contact_id"

    const-string/jumbo v2, "raw_contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns$DigitizedData;->sProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "display_name"

    const-string/jumbo v2, "display_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns$DigitizedData;->sProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "digitized_key"

    const-string/jumbo v2, "digitized_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns$DigitizedData;->sProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "locale"

    const-string/jumbo v2, "locale"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns$DigitizedData;->sProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns;->-get0()Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "digitized_data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns$DigitizedData;->CONTENT_URI:Landroid/net/Uri;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProjection()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    .line 151
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 152
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 153
    const-string/jumbo v1, "raw_contact_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 154
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 155
    const-string/jumbo v1, "digitized_key"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 156
    const-string/jumbo v1, "locale"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 157
    const-string/jumbo v1, "type"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 159
    .local v0, "projection":[Ljava/lang/String;
    return-object v0
.end method
