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
.field static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 322
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 323
    const-string/jumbo v1, "account_name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 324
    const-string/jumbo v1, "account_type"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 325
    const-string/jumbo v1, "data_set"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 326
    const-string/jumbo v1, "_id"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 327
    const-string/jumbo v1, "title"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 328
    const-string/jumbo v1, "auto_add"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 329
    const-string/jumbo v1, "favorites"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 322
    sput-object v0, Lcom/android/contacts/common/model/ContactLoader$GroupQuery;->COLUMNS:[Ljava/lang/String;

    .line 321
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
