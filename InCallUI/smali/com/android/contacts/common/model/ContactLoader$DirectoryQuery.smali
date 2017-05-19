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
.field static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 304
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 305
    const-string/jumbo v1, "displayName"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 306
    const-string/jumbo v1, "packageName"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 307
    const-string/jumbo v1, "typeResourceId"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 308
    const-string/jumbo v1, "accountType"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 309
    const-string/jumbo v1, "accountName"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 310
    const-string/jumbo v1, "exportSupport"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 304
    sput-object v0, Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    .line 303
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
