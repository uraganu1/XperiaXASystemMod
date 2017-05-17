.class Lcom/android/contacts/common/model/ContactLoader$GroupQuery;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0x0

.field public static final ACCOUNT_TYPE:I = 0x1

.field public static final ACCOUNT_TYPE_AND_DATA_SET:I = 0x3

.field public static final AUTO_ADD:I = 0x6

.field static final COLUMNS:[Ljava/lang/String;

.field public static final DATA_SET:I = 0x2

.field public static final FAVORITES:I = 0x7

.field public static final ID:I = 0x4

.field public static final TITLE:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 309
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 310
    const-string/jumbo v1, "account_name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 311
    const-string/jumbo v1, "account_type"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 312
    const-string/jumbo v1, "data_set"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 313
    const-string/jumbo v1, "account_type_and_data_set"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 314
    const-string/jumbo v1, "_id"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 315
    const-string/jumbo v1, "title"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 316
    const-string/jumbo v1, "auto_add"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 317
    const-string/jumbo v1, "favorites"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 309
    sput-object v0, Lcom/android/contacts/common/model/ContactLoader$GroupQuery;->COLUMNS:[Ljava/lang/String;

    .line 308
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
