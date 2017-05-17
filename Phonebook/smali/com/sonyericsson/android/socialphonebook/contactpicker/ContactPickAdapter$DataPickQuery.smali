.class public Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter$DataPickQuery;
.super Ljava/lang/Object;
.source "ContactPickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataPickQuery"
.end annotation


# static fields
.field public static final DATA_CONTACT_ID:I = 0x4

.field public static final DATA_CONTENT:I = 0x3

.field public static final DATA_DISPLAY_NAME:I = 0x7

.field public static final DATA_ID:I = 0x0

.field public static final DATA_LABEL:I = 0x2

.field public static final DATA_LOOKUP_KEY:I = 0x5

.field public static final DATA_MIME_TYPE:I = 0x8

.field public static final DATA_PHOTO_ID:I = 0x6

.field public static final DATA_SORT_ALTERNATIVE:I = 0xa

.field public static final DATA_SORT_PRIMARY:I = 0x9

.field public static final DATA_TYPE:I = 0x1

.field static final PROJECTION_PRIMARY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "data2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "data3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "data1"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "mimetype"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 72
    const-string/jumbo v1, "sort_key"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "sort_key_alt"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 62
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter$DataPickQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
