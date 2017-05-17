.class Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectoryQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0x4

.field public static final ACCOUNT_TYPE:I = 0x3

.field static final COLUMNS:[Ljava/lang/String;

.field public static final DISPLAY_NAME:I = 0x0

.field public static final EXPORT_SUPPORT:I = 0x5

.field public static final PACKAGE_NAME:I = 0x1

.field public static final TYPE_RESOURCE_ID:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 291
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 292
    const-string/jumbo v1, "displayName"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 293
    const-string/jumbo v1, "packageName"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 294
    const-string/jumbo v1, "typeResourceId"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 295
    const-string/jumbo v1, "accountType"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 296
    const-string/jumbo v1, "accountName"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 297
    const-string/jumbo v1, "exportSupport"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 291
    sput-object v0, Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    .line 290
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
